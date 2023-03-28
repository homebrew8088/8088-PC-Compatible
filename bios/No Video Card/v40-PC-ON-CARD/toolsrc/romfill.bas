DEFINT A-Z
'$DYNAMIC

PRINT "ROMFILL - Duplicates ROM image to fill oversized EPROM"
PRINT "Version 1.0 by Plasma / Jon Petrosky  [04-21-2008]"
PRINT

Size = 64

Cmd$ = LTRIM$(RTRIM$(COMMAND$))
IF LEN(Cmd$) < 3 GOTO Help

IF LEFT$(Cmd$, 1) = "/" THEN
  Size = VAL(MID$(Cmd$, 2, 2))
  IF Size <> 4 AND Size <> 8 AND Size <> 16 AND Size <> 32 AND Size <> 64 THEN GOTO Help
  Cmd$ = LTRIM$(RIGHT$(Cmd$, LEN(Cmd$) - 3))
END IF
DstSize& = Size * 1024&

Split = INSTR(Cmd$, " ")
IF Split = 0 THEN GOTO Help

SrcFile$ = RTRIM$(LEFT$(Cmd$, Split))
DstFile$ = LTRIM$(RIGHT$(Cmd$, LEN(Cmd$) - Split))

OPEN SrcFile$ FOR BINARY AS #1
SrcSize& = LOF(1)

IF SrcSize& <> 1024 AND SrcSize& <> 2048 AND SrcSize& <> 4096 AND SrcSize& <> 8192 AND SrcSize& <> 16384 AND SrcSize& <> 32768 AND SrcSize& <> 65536 THEN
  PRINT "Source ROM image (" + LTRIM$(STR$(SrcSize& \ 1024)) + "K) has invalid size"
  END
ELSEIF SrcSize& > DstSize& THEN
  PRINT "Source ROM image (" + LTRIM$(STR$(SrcSize& \ 1024)) + "K) too big for destination image (" + LTRIM$(STR$(Size)) + "K)"
  END
END IF

PRINT "Source ROM Image" + STR$(SrcSize& \ 1024) + "K"
PRINT "Using EPROM Size" + STR$(Size) + "K"

OPEN DstFile$ FOR BINARY AS #2
CLOSE #2
KILL DstFile$
OPEN DstFile$ FOR BINARY AS #2

Buffer$ = SPACE$(SrcSize& / 4)

PRINT "Reading ROM file '" + SrcFile$ + "'"
PRINT "Writing ROM file '" + DstFile$ + "'"

FOR i = 1 TO DstSize& \ SrcSize&
  FOR j = 1 TO 4
    GET #1, , Buffer$
    PUT #2, , Buffer$
  NEXT
  SEEK #1, 1
NEXT

CLOSE #2
CLOSE #1

PRINT "Complete"
PRINT
END

Help:
PRINT "Syntax: ROMFILL [/{size}] infile outfile"
PRINT
PRINT "/{size}       Output ROM size in KB (4, 8, 16, 32, or 64), default /64"
PRINT "infile        Input ROM file to use, must be 1, 2, 4, 8, 16, 32, or 64K"
PRINT "outfile       ROM file to output, existing files will be overwritten"
END

