#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.

Loop {
  Sleep, 1000 * 60
  MouseMove, 1, 0, 0, R
  MouseMove, -1, 0, 0, R
}
