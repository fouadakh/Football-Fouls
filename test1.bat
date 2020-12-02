@ECHO OFF
TYPE NUL > ErrorMsgAll.txt
FOR /L %%A in (0,1,0x4000) DO (
	TITLE Trying: NET HELPMSG %%A
	FOR /F "tokens=*" %%B IN ('NET HelpMsg %%A 2^>NUL') DO (
		>> ErrorMsgAll.txt ECHO.%%A	%%B
	)
)