# VHS documentation
#
# Output:
#   Output <path>.gif               Create a GIF output at the given <path>
#   Output <path>.mp4               Create an MP4 output at the given <path>
#   Output <path>.webm              Create a WebM output at the given <path>
#
# Require:
#   Require <string>                Ensure a program is on the $PATH to proceed
#
# Settings:
#   Set FontSize <number>           Set the font size of the terminal
#   Set FontFamily <string>         Set the font family of the terminal
#   Set Height <number>             Set the height of the terminal
#   Set Width <number>              Set the width of the terminal
#   Set LetterSpacing <float>       Set the font letter spacing (tracking)
#   Set LineHeight <float>          Set the font line height
#   Set LoopOffset <float>%         Set the starting frame offset for the GIF loop
#   Set Theme <json|string>         Set the theme of the terminal
#   Set Padding <number>            Set the padding of the terminal
#   Set Framerate <number>          Set the framerate of the recording
#   Set PlaybackSpeed <float>       Set the playback speed of the recording
#   Set MarginFill <file|#000000>   Set the file or color the margin will be filled with.
#   Set Margin <number>             Set the size of the margin. Has no effect if MarginFill isn't set.
#   Set BorderRadius <number>       Set terminal border radius, in pixels.
#   Set WindowBar <string>          Set window bar type. (one of: Rings, RingsRight, Colorful, ColorfulRight)
#   Set WindowBarSize <number>      Set window bar size, in pixels. Default is 40.
#   Set TypingSpeed <time>          Set the typing speed of the terminal. Default is 50ms.
#
# Sleep:
#   Sleep <time>                    Sleep for a set amount of <time> in seconds
#
# Type:
#   Type[@<time>] "<characters>"    Type <characters> into the terminal with a
#                                   <time> delay between each character
#
# Keys:
#   Escape[@<time>] [number]        Press the Escape key
#   Backspace[@<time>] [number]     Press the Backspace key
#   Delete[@<time>] [number]        Press the Delete key
#   Insert[@<time>] [number]        Press the Insert key
#   Down[@<time>] [number]          Press the Down key
#   Enter[@<time>] [number]         Press the Enter key
#   Space[@<time>] [number]         Press the Space key
#   Tab[@<time>] [number]           Press the Tab key
#   Left[@<time>] [number]          Press the Left Arrow key
#   Right[@<time>] [number]         Press the Right Arrow key
#   Up[@<time>] [number]            Press the Up Arrow key
#   Down[@<time>] [number]          Press the Down Arrow key
#   PageUp[@<time>] [number]        Press the Page Up key
#   PageDown[@<time>] [number]      Press the Page Down key
#   Ctrl+<key>                      Press the Control key + <key> (e.g. Ctrl+C)
#
# Display:
#   Hide                            Hide the subsequent commands from the output
#   Show                            Show the subsequent commands in the output

Output geotessera.gif

Require uvx

Set Shell "bash"
Set Padding 1
Set Margin 0
Set CursorBlink false
Set FontSize 14
Set Width 1000
Set Height 600
Set PlaybackSpeed 8.0 

Ctrl+L
Sleep 5s
Set TypingSpeed 0.2s
Type "cat demo/01"
Set TypingSpeed 1s
Enter

Sleep 20s

Set TypingSpeed 1s
Type "uvx geotessera --help"
Sleep 10s
Enter

Sleep 40s

Ctrl+L
Sleep 5s
Set TypingSpeed 0.2s
Type "cat demo/02"
Set TypingSpeed 1s
Enter

Type "uvx geotessera coverage"
Enter

Wait@500s

Sleep 20s

Enter
Set TypingSpeed 0.2s
Type "timg -p q tessera_coverage.png"
Set TypingSpeed 1s
Sleep 10s
Enter

Sleep 30s

Ctrl+L
Sleep 5s
Set TypingSpeed 0.2s
Type "cat demo/03"
Set TypingSpeed 1s
Enter

Type "echo uvx geotessera coverage --country=uk
Enter

Sleep 20s

Ctrl+L
Sleep 5s
Set TypingSpeed 0.2s
Type "cat demo/04"
Set TypingSpeed 1s
Enter

Sleep 20s
Type "uvx geotessera download --region-file=https://raw.githubusercontent.com/ucam-eo/geotessera/refs/heads/main/example/CB.geojson --output cb"
Enter

Wait@300s

Sleep 30s
Type "ls -la cb"
Sleep 10s
Enter
Sleep 50s

Ctrl+L
Sleep 5s
Set TypingSpeed 0.2s
Type "cat demo/05"
Set TypingSpeed 1s
Enter

Type "uvx geotessera visualize cb cb.tiff"
Enter

Wait @300s
Sleep 15s

Enter
Type "timg -p q cb.tiff"
Sleep 5s
Enter

Type echo "Run it for yourself and look at the high resolution version in a web browser!  Once you're done, go to https://github.com/ucam-eo/tessera-interactive-map for an interactive Jupyter notebook to try labelled classifications."
Enter

Sleep 60s
