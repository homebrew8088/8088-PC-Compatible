program willy;

type str = string[40];

var n,m,score,scrnum,balls,pcdlay,
    oldx,oldy,worms,wx,wy,wc,
    bcount,bonus,vx,vy,updown,
    wxdir,wydir,jcount,lfrt,
    color1,color2,color3       : integer;
    ballx,bally,ballc,balld    : array[1..9] of integer;
    chrset                     : array[1..1024] of byte;
    screendata                 : array[1..9,1..40,1..24] of byte;
    startxy                    : array[1..64,1..2] of byte;
    screen                     : array[1..40,1..24] of byte;
    dfile                      : file;
    jflag,stop,win,lose        : boolean;
    key                        : string[2];
    tableofs,tableseg          : integer;

procedure setup;

var x,y,z:integer;
    q:char;

begin
  clrscr;
  textcolor(white);
  writeln('                    Willy the Worm Screen Editor --- Ver. 2.0');
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
  writeln;
  writeln;
  writeln;
  write('                       Are you using a color monitor?  ');
  repeat until keypressed;
  read(kbd,q);
  if upcase(q)='Y' then
    begin
      color1:=blue;
      color2:=red;
      color3:=yellow;
    end
  else
    begin;
      color1:=black;
      color2:=darkgray;
      color3:=lightgray;
    end;
  writeln; writeln;
  write('                       Press Enter to begin ');
  readln;
  graphcolormode; palette(1); textcolor(3); graphbackground(color1);
  if mem[$f000:$fffe]=$fd then pcdlay:=0 else pcdlay:=25;
end;

procedure exit;

begin
  memw[$0000:$007c]:=tableofs;
  memw[$0000:$007e]:=tableseg;
  textmode;
  clrscr;
  halt;
end;

procedure winsound;

begin
  gotoxy(13,10);
  write('** Bonus ',bonus,' **');
  for m:=1 to 5 do
    begin
      sound(2000);
      delay(45);
      nosound;
      delay(30)
    end;
end;

procedure losesound;

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

procedure movewilly;

var z : integer;

begin
  delay(pcdlay);
  z:=memw[$40:28];
  z:=z-2;
  if z<30 then z:=60;
  key:=concat(chr(mem[$40:z]),chr(mem[$40:z+1]));
  case key[2] of
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
  if wydir<>0 then sound((25-wy)*100);
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
      score:=score+100;
      gotoxy(9,25);
      write(score:6);
      sound(1200);
      delay(10);
      sound(1660);
      delay(10);
      nosound
    end;
end;

procedure moveballs;

var u,v : integer;

begin
  if (random<0.1) and (balls<5) then
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
    sound(1200);
    score:=score+20;
    gotoxy(9,25);
    delay(8);
    sound(1660);
    delay(10);
    nosound;
    write(score:6);
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
  worms:=1; score:=0;
  balls:=0; bonus:=1000; bcount:=0;
  lfrt:=0; updown:=0; jcount:=0;
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
  if win then winsound;
  if lose then losesound;
end;

procedure edit;

var scan : byte;
    f,t,x,y,z,p,d,q : integer;

  procedure show(words : str);

  begin
    gotoxy(1,25);
    clreol;
    if words='' then write('Editing ',scrnum,'  Press A for help')
      else write('Editing ',scrnum,'  ',words);
  end;

begin
  worms:=1;score:=0;scrnum:=1;
  getscreen;
  gotoxy(startxy[scrnum,1],startxy[scrnum,2]); write(chr(129));
  show('');
  x:=1;y:=1;
  repeat
    z:=memw[$40:28];
    z:=z-2;
    if z<30 then z:=60;
    scan:=mem[$40:z+1];
    gotoxy(x,y);
    if (x=startxy[scrnum,1]) and (y=startxy[scrnum,2]) then write(chr(129))
      else write(char(screendata[scrnum,x,y]));
    case scan of
      1  : exit;
      72 : if y>1 then y:=y-1;
      80 : if y<24 then y:=y+1;
      75 : if x>1 then x:=x-1;
      77 : if x<40 then x:=x+1;
      30 : begin
             gotoxy(1,6);
             for m:=1 to 40 do write(chr(223));
             for m:=1 to 40 do for n:=7 to 16 do
               begin
                 gotoxy(m,n);
                 write(' ');
               end;
             gotoxy(1,17);
             for m:=1 to 40 do write(chr(220));
             gotoxy(1,7);
             writeln(' E=',chr(196),' R=',chr(213),' T=',chr(209),' Y=',chr(184),
                     ' U=',chr(133),' I=',chr(132),' O=',chr(131),' P=',chr(136));
             writeln;
             writeln(' D=',chr(205),' F=',chr(198),' G=',chr(216),' H=',chr(181),
                     ' J=',chr(134),' K   L   ;');
             writeln;
             writeln(' C=',chr(179),' V=',chr(212),' B=',chr(207),' N=',chr(190),
                     ' M=',chr(130),' ,=',chr(254),' .   /');
             writeln;
             writeln(' K=edit new screen  L=save all on disk');
             writeln(' ;=copy screens     .=play this screen');
             writeln(' /=change Willy''s starting position');
             writeln('        Press Enter ',chr(17),chr(217),' to return');
             readln;
             for m:=1 to 40 do for n:=6 to 17 do
               begin
                 gotoxy(m,n);
                 write(chr(screendata[scrnum,m,n]));
               end;
             gotoxy(startxy[scrnum,1],startxy[scrnum,1]); write(chr(129));
           end;
      32 : screendata[scrnum,x,y]:=205;
      33 : screendata[scrnum,x,y]:=198;
      34 : screendata[scrnum,x,y]:=216;
      35 : screendata[scrnum,x,y]:=181;
      19 : screendata[scrnum,x,y]:=213;
      20 : screendata[scrnum,x,y]:=209;
      21 : screendata[scrnum,x,y]:=184;
      46 : screendata[scrnum,x,y]:=179;
      47 : screendata[scrnum,x,y]:=212;
      48 : screendata[scrnum,x,y]:=207;
      49 : screendata[scrnum,x,y]:=190;
      22 : screendata[scrnum,x,y]:=133;
      23 : screendata[scrnum,x,y]:=132;
      24 : screendata[scrnum,x,y]:=131;
      25 : screendata[scrnum,x,y]:=136;
      36 : screendata[scrnum,x,y]:=134;
      18 : screendata[scrnum,x,y]:=196;
      50 : screendata[scrnum,x,y]:=130;
      51 : screendata[scrnum,x,y]:=254;
      57 : screendata[scrnum,x,y]:=32;
      39 : begin
             repeat
               show('Copy from ');
               read(f);
             until (f>0) and (f<9);
             repeat
               show('To ');
               read(t);
             until (t>0) and (t<9);
             for d:=1 to 40 do for q:=1 to 24 do
               screendata[t,d,q]:=screendata[f,d,q];
             startxy[t,1]:=startxy[f,1];
             startxy[t,2]:=startxy[f,2];
             show('');
           end;
      38 : begin
             show('Saving screens...');
             assign(dfile,'WILLY.DAT');
             rewrite(dfile);
             blockwrite(dfile,screendata,60);
             blockwrite(dfile,startxy,1);
             close(dfile);
             show('');
           end;
      37 : begin
             repeat
               show('Edit #');
               read(scrnum);
             until (scrnum>0) and (scrnum<9);
             getscreen;
             gotoxy(startxy[scrnum,1],startxy[scrnum,2]); write(chr(129));
             show('');
           end;
      52 : begin
             playgame;
             getscreen;
             gotoxy(startxy[scrnum,1],startxy[scrnum,2]); write(chr(129));
             show('');
           end;
      53 : begin
             gotoxy(startxy[scrnum,1],startxy[scrnum,2]);
             write(chr(screendata[scrnum,startxy[scrnum,1],startxy[scrnum,2]]));
             startxy[scrnum,1]:=x;
             startxy[scrnum,2]:=y;
             gotoxy(startxy[scrnum,1],startxy[scrnum,2]); write(chr(129));
           end;
      255: begin end;
    end;
    plot((x-1)*8,(y-1)*8,3);
    mem[$40:z+1]:=255;
  until false;
end;

begin
  randomize;
  setup;
  edit;
end.
