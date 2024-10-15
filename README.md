# tab234
System wide tab to 2,3 or 4 space switcher, based on autohotkey2 for Windows.

# The Problem
In programming, regarding code style, `tab` vs. `2 spaces` vs. `3 spaces` vs. `4 spaces` - policy is mixed up all over the place, because preferences vary.

since I usually work with multiple IDE's, programming languages and code bases simultaneously, I don't know a way to adapt to that seamlessly.

If this sounds familiar, ...

# The Solution
Global, system wide available hotkeys to switch that behaviour:

- [CTRL]-F5: use tab

- [CTRL]-F6: use two spaces

- [CTRL]-F7: use three spaces

- [CTRL]-F8: use four spaces

# How to use it
## Installation and Configuration
- Install autohotkey version 2 on windows
- Clone this repo into your favorite local tools folder 
- Navigate to the `scripts` folder and run `tab_234.ahk` by doubleclicking.
- I suggest (if workable for you) to set the tab behaviour to "insert tab" and tab size=8 in the used ide's. That way it's most generically obvious if tabs or spaces are used / inserted.
Now you can switch the tab/space/s

## Basic Usage
[CTRL]-F5: switch to use tab
[CTRL]-F6: switch to use two spaces
[CTRL]-F7: switch to use three spaces
[CTRL]-F8: switch to use four spaces

System tray icons indicate the activity, for example

![Image](resources/systray_example.jpg)

if four spaces are used.

## Integration within Your Own ahk2 Script
Given the ahk2 script `tab_234.ahk` is either visible on the PATH variable, or in a relative location of you own script, you can simply start `tab_234.ahk` from your own ahk2 script:
```
Run("tab_234.ahk")
```
or
```
Run("{relative file path}/tab_234.ahk")
```

## Customization
If you have [CTRL]-F5 etc. already occupied, you can change the scripts to use different hotkeys.

# The Implementation
`tab_234.ahk` Is always active and detects the keystrokes [CTRL]-F6...F8 to run one of the other scripts tab_{2/3/4}_spc.ahk.
`tab_`{2/3/4}`_spc.ahk` Sets the tray icon with the number {2/3/4} and make the [tab] key send {2/3/4} spaces, and terminates itself if [CTRL]-F5 is pressed.

It uses four ahk2 scripts. One is always active (`tab_234.ahk`) and detects the keystrokes ([CTRL]-F6 etc.) to invoke the other scripts.

# Acknowledgements
Autohotkey2 is such an out-of-this-world useful tool, a huge thanks to the creators to make this available.

Another huge thanks to the creators of git - that contrubution to a more collaborative world is unmeasurable.

Yet another huge thanks to open office / libre office, I used it to make the icons.
