# RS3-ahk
Running _RS3.ahk_ starts the tray menu, right click and select _Profiles Settings_ to open the list of profiles, selecting a profile will activate it with the macros it contains. After selecting a profile, the button _Customize Profile_ will open a new window with a list of macros the profile contains to enable/disable them. The _Reload Script_ button will restart the script, the _Clear Profile_ button will disable any profile previously selected.

Each directory has an __index.ahk_ script which contains the path to each script, any new scripts will have to be added to each respective __index.ahk_ script.

New profiles can be added without necessarily being added to the GUI to save time, steps in **Creating Profiles**.

Binds need to be added in _profiles\binds.ahk_ and configured inside of each macro, found in _profiles\macros_.


## Functions
### _Send Keys_
Basic command to send a key input, combined later in functions to create macros.

(Requires inputs stored in _profiles\binds.ahk_)

### _Sleep_
Random delay in between inputs, generic delay utilized is in between 1 and 5 ms.

### _Anti Spam_
Prevents inputs from happening checking if an image matches with a certain area in the screen.

Examples: Can prevent non-augmentable gear from unequipping or t99 prayers from turnning off.

### _Screen Click_
Moves the cursor to a coordinate in the screen, sends a click input, moves the cursor back to the original position.

(Requires coordinates of the screen)

### _Control Click (inside ScreenClick.ahk)_
Without moving the cursor, sends a click input to a coordinate in the screen.

(Requires coordinates of the screen)

### _Image Search_
Checks if an image matches an area around specific coordinates in the screen.

Images are stored in _profiles\imageFiles_.

Each image is a 15x15 (png) image around the center of the item. The name of the file from each new image has to be added in _profiles\filenames.ahk_.


## Creating Profiles
General macros are found in _profiles\macros_.

Boss specific profiles are created in separate folders in the same directory.

Binds are stored in _profiles\binds.ahk_, in the format: _binds.exampleBindName := {bind:"exampleKey", modifier"exampleModifier"}_

Each new profile is added as a function in _profiles\profiles.ahk_ containing any new macros created for it, following the same format as the other functions will allow its functionality in the GUI, to instantly utilize the profile ignore the _if_ statements and add the profile function to the main file: _RS3.ahk_.

## GUI
To add profiles to the GUI, after following the previous steps:

Any new Hotkeys remapped need to be added to the list: _RemappedKeys_ in _profiles\profiles.ahk_.

In _gui\gui.ahk_, inside the _CreateCustomizeGui()_ function, an _if_ statement similar to the others has to be added for the respective boss profile, each macro in the profile will have a checkbox which is created in a _BossnameCheckboxes()_ function, following the same format of the other checkboxes: _Gui, Add, Checkbox, cWhite Center x5 y45 Checked vVariablenName gProfileHandler, &Displaying Name_

Remove _Checked_ if the preference is to have the macro initially off. From _vVariableName_, add VariableName value as a global variable at the start, following the same format as the others, if the checkbox is initially _Checked_, make it equal to 1, otherwise make it equal to 0.

In _profiles\profiles.ahk_, inside the _ActivateProfiles()_ function, add an _else if_ statement similar to the others for the new boss profile added. If there is no new icon, skip _Menu, Tray, Icon, gui\icons\bossIcon.ico_

