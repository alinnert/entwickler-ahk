# Entwickler-AHK

Ein [AutoHotKey](https://www.autohotkey.com/)-Skript für Software- und Web-Entwickler.

> EN: This repo is in German because it mostly makes sense on German QWERTZ keyboard layouts. Feel free to fork it and translate it to other kayboard layouts.

## Erklärung

Dieses AHK-Skript macht `CapsLock` und die `<`-Taste unten links zu weiteren Modifiern.

`CapsLock` gibt Zugriff auf Steuerfunktionen, z. B. Pfeiltasten, Lautstärke- und Mediensteuerung und einfacheren Zugriff auf Kontextmenüs, `Entf`, `Einf` etc.

`<` gibt einfacheren Zugriff auf Sonderzeichen, die in der Software-Entwicklung oft benötigt werden.

## Verwendung

- AutoHotKey installieren.
  - Beim Setup UTF-8-Support auswählen/aktivieren.
  - aktuelles Skript wurde bisher nur in Version 1 getestet.
- Die Datei (oder besser eine Verknüpfung zur Datei) unter `C:\Users\<benutzername>\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup` ablegen, damit sie bei jedem Login automatisch ausgeführt wird.
- Zum erstmaligen Ausführen die Datei (oder die Verknüpfung) doppelklicken.

## Überblick über die wichtigsten Tastenkürzel

Hier findet ihr eine halbwegs komplette Übersicht: http://www.keyboard-layout-editor.com/#/gists/7b8abc49f8aa2121202f72115fd321fb

Wenn Zeit ist, werde ich aber eine eigene Übersicht per Hand erstellen, da der verlinkte Editor einige Bugs enthält.

Während `CapsLock` gedrückt wird, gilt:

| Taste | Bedeutung |
| ----- | --------- |
| `Tab` | (De-)Aktiviert CapsLock |
| `j`, `k`, `l`, `i` | Pfeiltasten (imho viel natürlicher als die VIM-Variante) |
| `u` | `Pos1` |
| `o` | `Ende` |
| `z` | `Bild ↑` |
| `h` | `Bild ↓` |
| `1`, `2`, `3`, `4` | Browser-Steuerung: `←`, `→`, Reload, Startseite (Grüße gehen raus an ChromeOS) |
| `q`, `w`, `e`, `r` | Medien-Steuerung: Stop, Vorheriger Titel, Nächster Titel, Play/Pause |
| `b`, `n`, `m` | Lautstärke-Steuerung: Leister, Lauter, Stumm an/aus |
| `Enter` | Kontextmenü |
| Backspace | `Entf` |
| Linke Maustaste | `Strg` + `C` |
| Rechte Maustaste | `Strg` + `X` |
| Mittlere Maustaste | `Strg` + `V` |

Während `<` gedrückt wird, gilt:

| Taste | Bedeutung |
| ----- | --------- |
| `d`, `f` | `<`, `>` |
| `j`, `k` | `{`, `}` |
| `u`, `i` | `[`, `]` |
| `g`, `h` | `/`, `\` |
| `e`, `r` | `'`, `"` |
| `q`, `w` | `»`, `«` |
| `c`, `v` | `›`, `‹` |
| `a` | `@` |
| `s` | `$` |
| `b` | ` (Backtick, wird direkt geschrieben) |
| `n` | `&` |
| `l` | `~` |
| `ö` | `\|` |
| `t` | `_` |
| `,` | `?` |
| `.` | `!` |
| `-` | `‒` (Gedankenstrich) |
| Pfeiltasten | Erzeugen Pfeile: `←`, `↑`, `↓`, `→` |

Während die Windows-Taste gedrückt wird, gilt:

| Taste | Bedeutung |
| ----- | --------- |
| Rechte Maustaste | Aktives Fenster wird minimiert |
| Mittlere Maustaste | `Strg` + `T` (Aktuellen Tab schließen) |
| `Shift` + Mittlere Maustaste | `Strg` + `Shift` + `T` (Zuletzt geschlossenen Tab wieder öffnen) |
| Mausrad ↑/↓ | `Strg` + (`Shift` +) `Tab` (Durch Tabs im aktiven Fenster wechseln) |
