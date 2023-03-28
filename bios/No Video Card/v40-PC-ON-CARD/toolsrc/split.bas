DEFINT A-Z
'$DYNAMIC

PRINT "SPLIT - Splits single binary file to even/odd files"
PRINT "Version 1.0 by Plasma / Jon Petrosky  [04-21-2008]"
PRINT

Cmd$ = LTRIM$(RTRIM$(COMMAND$))
IF LEN(Cmd$) < 5 GOTO Help

Split = INSTR(Cmd$, " ")
IF Split = 0 THEN GOTO Help

SrcFile$ = RTRIM$(LEFT$(Cmd$, Split))
Cmd$ = LTRIM$(RIGHT$(Cmd$, LEN(Cmd$) - Split))

Split = INSTR(Cmd$, " ")
IF Split = 0 THEN GOTO Help

EvenFile$ = RTRIM$(LEFT$(Cmd$, Split))
OddFile$ = LTRIM$(RIGHT$(Cmd$, LEN(Cmd$) - Split))

OPEN SrcFile$ FOR BINARY AS #1

OPEN EvenFile$ FOR BINARY AS #2
CLOSE #2
KILL EvenFile$
OPEN EvenFile$ FOR BINARY AS #2

OPEN OddFile$ FOR BINARY AS #3
CLOSE #3
KILL OddFile$
OPEN OddFile$ FOR BINARY AS #3

PRINT "Reading input file '" + SrcFile$ + "'"
PRINT "Writing even file '" + EvenFile$ + "'"
PRINT "Writing odd file '" + OddFile$ + "'"

DO WHILE NOT EOF(1)
  Buffer$ = INPUT$(4096, #1)
  Even$ = ""
  Odd$ = ""
  FOR i = 1 TO LEN(Buffer$) STEP 2
    Even$ = Even$ + MID$(Buffer$, i, 1)
    Odd$ = Odd$ + MID$(Buffer$, i + 1, 1)
  NEXT
  PUT #2, , Even$
  PUT #3, , Odd$
LOOP

CLOSE

PRINT "Complete"
PRINT
END

Help:
PRINT "Syntax: SPLIT binfile evenfile oddfile"
PRINT
PRINT "binfile       Input binary image file, must be an even lenth"
PRINT "evenfile      Even binary file to output, existing files will be overwritten"
PRINT "oddfile       Odd binary file to outputt, existing files will be overwritten"
END

