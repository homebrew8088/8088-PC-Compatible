program willy;

type namest = string[20];
     scorec = record
                sc:integer;
                na:namest;
              end;

var n,m,score,scrnum,balls,pcdlay,
    oldx,oldy,worms,wx,wy,wc,
    scount,bcount,bonus,vx,vy,updown,
    wxdir,wydir,jcount,lfrt,
    color1,color2,color3,color4,
    color5,color6,maxballs     : integer;
    ballx,bally,ballc,balld    : array[1..9] of integer;
    hiscoreP,hiscoreT          : array[1..10] of integer;
    hinameP,hinameT            : array[1..10] of namest;
    startxy                    : array[1..64,1..2] of byte;
    name                       : namest;
    chrset                     : array[1..1024] of byte;
    screendata                 : array[1..9,1..40,1..24] of byte;
    startx,starty              : array[1..8] of byte;
    screen                     : array[1..40,1..24] of byte;
    jflag,stop,win,lose,
    soundflag                  : boolean;
    key                        : string[1];
    tableofs,tableseg          : integer;
    dfile                      : file;
    scorefile                  : file of scorec;
    element                    : scorec;

procedure setup;

var x,y,z:integer;
    q:char;

begin
  clrscr;
  textcolor(white);
  writeln('                          Willy the Worm --- Ver. 2.0');
  writeln('                           by Alan Farmer, June 1985');
  writeln;
  writeln;
  writeln('          This is a user-supported program.   Feel free to make copies');
  writeln('          and pass them out, but  please  do not sell them.  Donations');
  writeln('          of about $10 would be greatly appreciated.  Please send your');
  writeln('          questions, comments, high scores, improved game screens, and');
  writeln('          DONATIONS to:');
  writeln;
  writeln('                           Alan Farmer');
  writeln('                           2743 McElroy Drive');
  writeln('                           Charlottesville, Va  22903');
  tableofs:=memw[$0000:$007c];
  tableseg:=memw[$0000:$007e];
  memw[$0000:$007c]:=ofs(chrset[1]);
  memw[$0000:$007e]:=seg(chrset[1]);
  assign(dfile,'WILLY.CHR');
  reset(dfile);
  blockread(dfile,chrset,8);
  close(dfile);
  assign(dfile,'WILLY.DAT');
  reset(dfile);
  blockread(dfile,screendata,60);
  blockread(dfile,startxy,1);
  close(dfile);
  assign(scorefile,'WILLY.SCR');
  reset(scorefile);
  for x:=1 to 10 do
    begin
      read(scorefile,element);
      hiscoreP[x]:=element.sc;
      hinameP[x]:=element.na;
    end;
  close(scorefile);
  if mem[$f000:$fffe]=$fd then pcdlay:=0 else pcdlay:=25;
  writeln;
  writeln;
  writeln;
  write('                         Are you using a color monitor?  ');
  repeat until keypressed;
  read(kbd,q);
  if upcase(q)='Y' then writeln('Yes') else writeln('No');
  if upcase(q)='Y' then
    begin
      color1:=blue;
      color2:=red;
      color3:=yellow;
      color4:=yellow;
      color5:=lightcyan;
    end
  else
    begin;
      color1:=black;
      color2:=lightgray;
      color3:=lightgray;
      color4:=white;
      color5:=white;
    end;
  write('                         Do you want sound effects?      ');
  repeat until keypressed;
  read(kbd,q);
  if upcase(q)='Y' then writeln('Yes') else writeln('No');
  if upcase(q)='Y' then soundflag:=true else soundflag:=false;
  for m:=1 to 10 do
    begin
      hiscoreT[m]:=0;
      hinameT[m]:='';
    end;
  graphcolormode; palette(1); textcolor(3); graphbackground(color1);
  gotoxy(13,4); writeln('Willy the Worm'); writeln; writeln;
  writeln('Meet Willy the Worm ',chr(128),'.  Willy is a fun-');
  writeln('loving invertebrate who likes to climb');
  writeln('ladders ',chr(131),', bounce on springs ',chr(133),' ',chr(134));
  writeln('and find his presents ',chr(130),'.  But more');
  writeln('than anything, Willy loves to ring');
  writeln('bells ',chr(136),'!');
  writeln;
  writeln('You can press the arrow keys ',chr(24),' ',chr(25),' ',chr(26),' ',
    chr(27));
  writeln('to make Willy run and climb, or the');
  writeln('space bar to make him jump. Anything');
  writeln('else will make Willy stop and wait.');
  writeln;
  writeln('Good luck, and don''t let Willy step on');
  writeln('a tack ',chr(132),'!');
  writeln;
  write('Press Enter ',chr(17),chr(217),' to start the game...');
  readln;
end;

procedure exit;

begin
  memw[$0000:$007c]:=tableofs;
  memw[$0000:$007e]:=tableseg;
  assign(scorefile,'WILLY.SCR');
  rewrite(scorefile);
  for m:=1 to 10 do
    begin
      element.sc:=hiscoreP[m];
      element.na:=hinameP[m];
      write(scorefile,element);
    end;
  close(scorefile);
  textmode;
  clrscr;
  halt;
end;

procedure winsound;

begin
  gotoxy(13,10);
  write('** Bonus ',bonus,' **');
  if soundflag then for m:=1 to 5 do
    begin
      sound(2000);
      delay(45);
      nosound;
      delay(30)
    end;
  delay(500)
end;

procedure losesound;

begin
  if soundflag then
    begin
      for m:=1 to 5 do
        begin
          sound(220);
          nosound;
          delay(m)
        end;
      for m:=12 downto 1 do
        begin
          sound(2000);
          nosound;
          delay(m div 2)
        end;
    end;
  for m:=1 to 20 do
    begin
      graphbackground(color2);
      delay(pcdlay);
      graphbackground(color3);
      delay(pcdlay);
    end;
  graphbackground(color1);
end;

procedure getscreen;

var box : boolean;

begin
  graphcolormode; palette(1); textcolor(3); graphbackground(color1);
  box:=false;
  for n:=1 to 24 do
    for m:=1 to 40 do
      begin
        screen[m,n]:=screendata[scrnum,m,n];
        gotoxy(m,n);
        write(char(screen[m,n]));
        if (screen[m,n]=254) and (not box) then
          begin
            box:=true;
            vx:=m;
            vy:=n;
          end;
      end;
  wx:=startxy[scrnum,1];
  wy:=startxy[scrnum,2];
  wc:=32;
  gotoxy(3,25);
  write('Score ',score:6,'  Bonus 1000  Worms ');
  for n:=1 to worms-1 do write(chr(129))
end;

procedure addpoints(a : integer; b : boolean);

var c : integer;

begin
  score:=score+a;
  gotoxy(9,25);
  write(score:6);
  if b and soundflag then
    begin
      sound(1200);
      delay(10);
      sound(1660);
      delay(10);
      nosound
    end;
  scount:=scount+a;
  if scount>3000 then
    begin
      scount:=scount-3000;
      if soundflag then for c:=500 to 1500 do sound(c);
      nosound;
      worms:=worms+1;
      gotoxy(35,25);
      if worms>6 then
        begin
          for c:=1 to 5 do write(chr(129));
          write('+');
        end
      else for c:=1 to worms-1 do write(chr(129))
    end
end;

procedure movewilly;

var z : integer;

begin
  delay(pcdlay);
  z:=memw[$40:28];
  z:=z-2;
  if z<30 then z:=60;
  key:=chr(mem[$40:z+1]);
  case key of
    #1  :  exit;
    'H' :  updown:=-1;
    'P' :  updown:=1;
    '9' :  if (jcount=0) and (screen[wx,wy+1]>=179) and
             (screen[wx,wy+1]<=218) and (screen[wx,wy]<>131) then
               begin
                 updown:=0;
                 jcount:=1;
                 jflag:=true;
               end;
    'K' :  begin
             updown:=0;
             lfrt:=-1;
           end;
    'M' :  begin
             updown:=0;
             lfrt:=1;
           end;
    #$ff:  begin end;
      else
        begin
          updown:=0;
          lfrt:=0;
        end
    end;
  memw[$40:z]:=255 shl 8;
  oldx:=wx; oldy:=wy;
  wxdir:=lfrt;
  wydir:=0;
  if jcount>0 then
    begin
      case jcount of
        1 : wydir:=-1;
        2 : wydir:=-1;
        3 : wydir:=-1;
        4 : wydir:=0;
        5 : wydir:=1;
        6 : wydir:=1;
        7 : wydir:=1;
      end;
    end;
  if (jcount=0) and (screen[wx,wy]<>131) and ((screen[wx,wy+1]<179)
    or (screen[wx,wy+1]>218)) then
      begin
        wxdir:=0;
        wydir:=1
      end;
  if (updown<>0) and (jcount=0) and (screen[wx,wy]=131) then
    begin
      lfrt:=0;
      if updown<>0 then wxdir:=0;
      wydir:=0;
      if (updown=-1) and (wy>1) then
        if screen[wx,wy-1]=131 then wydir:=-1;
      if (updown=1) and (wy<24) then
        if (screen[wx,wy+1]<179) or (screen[wx,wy+1]>218) then wydir:=1;
    end;
  if (jcount>0) and (screen[wx,wy]=131) then
    begin
      jcount:=0;
      lfrt:=0;
      wxdir:=0;
      wydir:=0
    end;
  if (jcount=0) and (lfrt=-1) then
    if wx-1<1 then lfrt:=0
  else if (screen[wx-1,wy]>=179) and (screen[wx-1,wy]<=218) then lfrt:=0;
  if (jcount=0) and (lfrt=1) then
    if wx+1>40 then lfrt:=0
  else if (screen[wx+1,wy]>=179) and (screen[wx+1,wy]<=218) then lfrt:=0;
  if (wx+wxdir<1) or (wx+wxdir>40) then wxdir:=0;
  if (wy+wydir<1) or (wy+wydir>24) then wydir:=0;
  if jcount>0 then jcount:=(jcount+1) mod 8;
  if (wxdir<>0) and (screen[wx,wy+1]=196) then
    begin
      screen[wx,wy+1]:=32;
      gotoxy(wx,wy+1);
      write(' ')
    end;
  if (screen[wx+wxdir,wy+wydir]<179) or (screen[wx+wxdir,wy+wydir]>218) then
    begin
      wx:=wx+wxdir;
      wy:=wy+wydir
    end
  else wydir:=0;
  if (wydir<>0) and soundflag then sound((25-wy)*100);
  gotoxy(oldx,oldy); write(chr(wc));
  wc:=screen[wx,wy]; gotoxy(wx,wy);
  if lfrt=1 then write(chr(128)) else write(chr(129));
  nosound;
  if jcount=0 then jflag:=false;
  if wc=132 then lose:=true;
  if wc=133 then
    begin
      jcount:=1;
      jflag:=true;
    end;
  if wc=134 then lfrt:=-lfrt;
  if wc=136 then win:=true;
  if wc=130 then
    begin
      wc:=32;
      screen[wx,wy]:=wc;
      addpoints(100,true);
    end;
end;

procedure moveballs;

var u,v : integer;

begin
  if (random<0.1) and (balls<maxballs) then
    begin
      balls:=balls+1;
      ballx[balls]:=vx;
      bally[balls]:=vy;
      balld[balls]:=0;
      ballc[balls]:=254
    end;
  m:=(6-balls)*12;
  if m>0 then delay(m);
  for u:=1 to balls do
    begin
      gotoxy(ballx[u],bally[u]);
      write(char(ballc[u]));
      if balld[u]=0 then
        begin
          v:=screen[ballx[u],bally[u]+1];
          if ((v<179) or (v>218)) and (bally[u]<24) then bally[u]:=bally[u]+1
          else if random<0.5 then balld[u]:=-1 else balld[u]:=1
        end;
     if (balld[u]=-1) and (ballx[u]=1) then balld[u]:=1;
     if (balld[u]=1) and (ballx[u]=40) then balld[u]:=-1;
     if balld[u]=-1 then
        begin
          v:=screen[ballx[u]-1,bally[u]];
          if (v>=179) and (v<=218) then balld[u]:=1
          else ballx[u]:=ballx[u]-1
        end;
      if balld[u]=1 then
        begin
          v:=screen[ballx[u]+1,bally[u]];
          if (v>=179) and (v<=218) then balld[u]:=-1
          else ballx[u]:=ballx[u]+1
        end;
      v:=screen[ballx[u],bally[u]+1];
      if (v<179) or (v>218) then balld[u]:=0;
      ballc[u]:=screen[ballx[u],bally[u]];
      if ballc[u]=254 then
        begin
          ballx[u]:=vx;
          bally[u]:=vy;
          balld[u]:=0
        end;
      gotoxy(ballx[u],bally[u]);
      write(char(135));
      if (balld[u]=-1) and (ballx[u]=1) then balld[u]:=1;
      if (balld[u]=1) and (ballx[u]=40) then balld[u]:=-1;
    end
end;

procedure collision;

  procedure jumped_one;

  begin
    addpoints(20,true);
    jflag:=false
  end;

begin
  for m:=1 to balls do
    begin
      if jflag then case jcount of
        2,7 : if (ballx[m]=wx) and (bally[m]=wy+1) then jumped_one;
        3,6 : if (ballx[m]=wx) and (bally[m]=wy+2) then jumped_one;
        4,5 : if (ballx[m]=wx) and (bally[m]=wy+3) then jumped_one;
      end;
      if (ballx[m]=wx) and (bally[m]=wy) then lose:=true;
    end;
end;

procedure playgame;

begin
  scrnum:=1;
  score:=0;
  scount:=0;
  worms:=5;
  maxballs:=5;
  repeat
    balls:=0;    bonus:=1000;  bcount:=0;
    lfrt:=0;     updown:=0;    jcount:=0;
    lose:=false; win:=false;
    getscreen;
    repeat
      bcount:=bcount+1;
      if (bcount mod 15=0) then
        begin
          bonus:=bonus-10;
          gotoxy(23,25);
          write(bonus:4)
        end;
      if bonus=0 then lose:=true;
      movewilly;
      collision;
      if not lose then moveballs;
      if not lose then collision;
    until win or lose;
    if win then
      begin
        addpoints(bonus,false);
        scrnum:=scrnum+1;
        if scrnum=9 then
          begin
            scrnum:=1;
            maxballs:=maxballs+2;
            if maxballs>9 then maxballs:=9;
          end;
        winsound
      end;
    if lose then
      begin
        worms:=worms-1;
        losesound;
      end;
  until worms=0
end;

procedure showscores;

var q:char;
    a,b:integer;

begin
  a:=-1; b:=-1;
  textmode(c40);
  textbackground(color1);
  textcolor(white);
  clrscr;
  if score>hiscoreP[10] then writeln('You''re an Official Nightcrawler!')
    else if score>hiscoreT[10] then writeln('You''re a Daily Pinworm!');
  writeln;
  writeln('Your score for this game is ',score,'...');
  if score<1000 then writeln('Didn''t you even read the instructions?')
  else if score<2000 then writeln('If you can''t say anything nice... ')
  else if score<3000 then writeln('Okay.  Maybe you''re not so bad after    all.')
  else if score<4000 then writeln('Wow!  Absolutely mediocre!')
  else if score<5000 then writeln('Pretty darn good, for a vertebrate!')
  else if score<6000 then writeln('Well done!  Do you often eat garbage?')
  else writeln('Absolutely fantastic!  You should       consider a career as an earthworm!');
  if score>hiscoreT[10] then
    begin
      writeln;
      write('Enter your name >> ');
      readln(name);
      m:=1;
      while (m<10) and (score<hiscoreT[m]) do m:=m+1;
      a:=m+13;
      for n:=10 downto m+1 do
        begin
          hiscoreT[n]:=hiscoreT[n-1];
          hinameT[n]:=hinameT[n-1];
        end;
      hiscoreT[m]:=score;
      hinameT[m]:=name;
      if score>hiscoreP[10] then
        begin
          m:=1;
          while score<hiscoreP[m] do m:=m+1;
          b:=m+1;
          for n:=10 downto m+1 do
            begin
              hiscoreP[n]:=hiscoreP[n-1];
              hinameP[n]:=hinameP[n-1];
            end;
          hiscoreP[m]:=score;
          hinameP[m]:=name;
        end;
    end
  else
    begin
      writeln;
      write('Press any key... ');
      repeat until keypressed
    end;
  clrscr;
  window(6,2,35,11);
  textbackground(black);
  clrscr;
  window(6,14,35,23);
  clrscr;
  window(1,1,40,25);
  textcolor(color4);
  textbackground(color1);
  gotoxy(10,1);
  write('All-Time Nightcrawlers');
  textcolor(color5);
  gotoxy(10,13);
  write('Today''s Best Pinworms');
  textcolor(color4);
  textbackground(black);
  for m:=1 to 10 do
    begin
      gotoxy(6,m+1);
      write(m:2,' ',hiscoreP[m]:6,' ',hinameP[m]);
    end;
  textcolor(color5);
  for m:=1 to 10 do
    begin
      gotoxy(6,m+13);
      write(m:2,' ',hiscoreT[m]:6,' ',hinameT[m]);
    end;
  textcolor(white+blink);
  textbackground(color1);
  if a>0 then
    begin
      gotoxy(5,a);
      write(chr(26));
    end;
  if b>0 then
    begin
      gotoxy(5,b);
      write(chr(26));
    end;
  textcolor(white);
  gotoxy(2,25);
  write('Hit a key to play again or ESC to exit');
  repeat until keypressed;
  read(kbd,q);
  if keypressed then read(kbd,q);
  if q=#27 then stop:=true else stop:=false;
end;

begin
  randomize;
  setup;
  repeat
    playgame;
    showscores;
  until stop;
  exit
end.
