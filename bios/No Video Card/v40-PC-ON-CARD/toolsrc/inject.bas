DEFINT A-Z
'$DYNAMIC

PRINT "INJECT - Overwrites part of a binary file with another binary file"
PRINT "Version 1.0 by Plasma / Jon Petrosky  [04-21-2008]"
PRINT

Cmd$ = LTRIM$(RTRIM$(COMMAND$))
IF LEN(Cmd$) < 3 GOTO Help

Split = INSTR(Cmd$, " ")
IF Split = 0 THEN GOTO Help

IF LEFT$(Cmd$, 1) = "/" THEN
  Offs = VAL("&H0" + MID$(Cmd$, 2, Split - 2))
  Cmd$ = LTRIM$(RIGHT$(Cmd$, LEN(Cmd$) - Split))
END IF

Offset& = Offs
IF Offs < 0 THEN Offset& = 65536& + Offs
PRINT "Using offset " + HEX$(Offset&) + "H"

Split = INSTR(Cmd$, " ")
IF Split = 0 THEN GOTO Help

InsFile$ = RTRIM$(LEFT$(Cmd$, Split))
DstFile$ = LTRIM$(RIGHT$(Cmd$, LEN(Cmd$) - Split))

PRINT "Inserting file '" + InsFile$ + "'"
PRINT "Into destination file '" + DstFile$ + "'"

OPEN InsFile$ FOR BINARY AS #1
OPEN DstFile$ FOR BINARY AS #2

SEEK #2, Offset& + 1
DO WHILE NOT EOF(1)
  Buffer$ = INPUT$(4096, #1)
  PUT #2, , Buffer$
LOOP

CLOSE #2
CLOSE #1

PRINT "Complete"
PRINT
END

Help:
PRINT "Syntax: INJECT [/{offset}] insertfile destfile"
PRINT
PRINT "/{offset}     Offset into destfile to start insertion (value in hex, default 0)"
PRINT "insertfile    Binary file to insert, will not be modified"
PRINT "destfile      Destination binary file to be modified"
END

