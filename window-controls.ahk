#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#!C::
WinExist("A")
WinGetPos,,, sizeX, sizeY
winX := (A_ScreenWidth / 2) - (sizeX / 2)
winY := (A_ScreenHeight / 2) - (sizeY / 2) - 20
WinMove, winX, winY
return

#!Enter::
WinExist("A")
winWidth := A_ScreenWidth * 0.85
winHeight := A_ScreenHeight * 0.88
winX := A_ScreenWidth / 2 - (winWidth / 2)
winY := A_ScreenHeight / 2 - (winHeight / 2) - 20
WinRestore
WinMove,,, winX, winY, winWidth, winHeight
return

#!+Enter::
WinExist("A")
winWidth := A_ScreenWidth - 16
winHeight := A_ScreenHeight - 50 - 16
winX := 8
winY := 16
WinRestore
WinMove,,, winX, winY, winWidth, winHeight
return

#!Left::
WinExist("A")
WinGetPos, winWidth, winHeight, winX, winY
WinMove,,, winWidth + 10, winHeight, winX - 20, winY
return

#!Right::
WinExist("A")
WinGetPos, winWidth, winHeight, winX, winY
WinMove,,, winWidth - 10, winHeight, winX + 20, winY
return

#!Down::
WinExist("A")
WinGetPos, winWidth, winHeight, winX, winY
WinMove,,, winWidth, winHeight + 10, winX, winY - 20
return

#!Up::
WinExist("A")
WinGetPos, winWidth, winHeight, winX, winY
WinMove,,, winWidth, winHeight - 10, winX, winY + 20
return
