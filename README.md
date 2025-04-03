# A Guide to Hogwarts Legacy in VR

[Flat2VR Discord](https://discord.com/channels/747967102895390741/1073648949057048628)

## Setup

We will be using UEVR to make _Hogwarts Legacy_ run in VR.  
We will also use a profile that allows for 1st person perspective, a motion controlled wand, and casting spells by drawing glyphs in the air.  
You can also still use an Xbox controller and toggle into 3rd person.

[(_super quick instructions_)](super-quick-instructions.md)

This guide assumes you understand how to
1. Download programs and files from the internet
1. Install software on your computer
1. Extract the contents of a zip file
1. Connect your chosen VR headset to your computer to play VR games

<br>

UEVR is a tool that injects VR support into Unreal Engine games that do not have it natively.

UEVR website <https://uevr.io>

UEVR Github <https://github.com/praydog/UEVR>

To use this directly, see instructions here --> [Praydog's injector + Nexus Mods](standard-injector-instructions.md)

<br>

"Unreal Easy Injector" (previously known as UEVR Deluxe) is a tool derived from UEVR that simplifies the process of setting up UEVR by providing profiles for specific games and presenting a cleaner/simplified user interface.

Unreal Easy Injector website <https://uevrdeluxe.org>

Unreal Easy Injector Github <https://github.com/oduis/UEVRDeluxe>

To use this method, read on.

### Installing Unreal Easy Injector

Go to the [website](https://uevrdeluxe.org) and click on "Download latest release"

![](images/01-unreal-easy-injector-homepage.png)

<br>

Clicking this link will take you to the Github release page.  
After the release notes, under "Assets", click on the **UEVREasyInjector.exe** to download it.

Take the latest version. This screenshot is outdated.

![](images/02-uevr-easy-injector-v1.3-download.png)

You can also get a **direct download** of the latest EXE by clicking here  
https://github.com/oduis/UEVRDeluxe/releases/latest/download/UEVREasyInjector.exe

<br>

Once the installer is downloaded, run it.

Windows Defender might warn you about running the installer.  
Click "More info" and "Run anyway".

DISCLAIMER: use your own judgment about running software from the internet.

![](images/02.1-windows-protected-your-pc-more-info.png)
![](images/02.2-windows-protected-your-pc-run-anyway.png)

### Installing the 1st Person Profile

Now run the installed program.  
It should be in your Start Menu or Desktop as "Unreal VR Easy Injector"

![](images/02.3-uevr-easy-injector-icon.png)

<br>

Choose Hogwarts Legacy

![](images/03-uevr-easy-select-game.png)

<br>

Press "Search profile"

![](images/04-uevr-easy-profile-select-button.png)

<br>

Choose 1<sup>st</sup> Person and Install

This guide was originally written for the V1.05b 1st Person Profile.  
Setup works the same for V1.06 1st Person Profile with Glyph Gestures.  
I am still updating the [controls section](#glyph-gestures) for the new features. (2025-04-03)

![](images/05-uevr-easy-profile-selection-and-install.png)

### Connect your VR headset

Connect your VR HMD (head mounted display) to your PC.

I have Meta Quest 3, using Virtual Desktop – a paid, wireless option.

If you do too, be sure to set the OpenXR Runtime to **VDXR** in the Virtual Desktop Streamer app on your PC.  
And also ensure that Open*X*R is selected in UEVR Easy Injector under "How is your VR headset connected to the PC?".

_Even if you own Hogwarts Legacy on Steam._

This is important for the VR injection to work.

![](images/06-virtual-desktop-options.png)

<br>

If instead you use Meta Link (wired) or Meta Air Link (wireless), that's fine too.  
For these optionals also, ensure that Open*X*R is selected in UEVR Easy Injector under "How is your VR headset connected to the PC?".

However, if you use SteamLink with SteamVR, then you must choose "Open*V*R, linking via SteamVR"  
The difference is in that one letter: the "V" instead of the "X".

![](images/07-uevr-easy-openvr-for-steam.png)

<br>

| VR HMD to PC connection | Set Runtime to | Note |
|---|---|---|
| Meta Link (USB) | OpenXR |Even if you own Hogwarts Legacy on Steam |
| Meta Air Link | OpenXR | Even if you own Hogwarts Legacy on Steam |
| Virtual Desktop | OpenXR | Also set **VDXR** in the Virtual Desktop Streamer app on your PC. Even if you own Hogwarts Legacy on Steam |
| SteamLink | OpenVR | With a "V", not an "X" |

There is no need to use SteamVR if you use Virtual Desktop or Meta Link or any other connection method.

<br>

If you have another HMD that's not Quest, it should also work.  
But I have no experience with it.

### Injecting

Press "Start / Inject game"

![](images/08-uevr-easy-inject-button.png)

This will start Hogwarts Legacy from Steam or Epic Games, and inject the VR support automatically.

Give it a few seconds after the game has loaded, and you'll be in Hogwarts in VR!

<br>

Alternatively, if Hogwarts Legacy is already running, you can press `Ctrl + Alt + U` to inject.  
Ensure the game window is in focus.

You can also tab-out of the fullscreen game (`Alt + Tab`) to see the Easy Injector window, and press "Start / Inject game" there.

## Troubleshooting

Nothing's happening? 😭  
Dont worry.  
Press "Stop Game".  
Then "Start / Inject game" again.  
Should work the 2<sup>nd</sup> time.  

But this should be fixed in version `1.7.2.0+` of UEVR Easy Injector.

<br>

If HMD shows a black screen and everything freezes, then **turn off Frame Generation** in the game's settings.

<br>

Did you forget to set the proper runtime in UEVR Easy Injector?  
Based on how you connect your HMD to your PC
1. OpenXr - for Meta Link, Virtual Desktop (even if you own Hogwarts Legacy on Steam)
1. OpenVr - for SteamVR

<br>

Motion controls not working?  
See the [Epic Games Store](#epic-games-store) section.  
In menus, use the analog-stick on the left controller to move the cursor, regardless of where you bought the game.

<br>

I'm moving in the wrong direction! Help! 🧭  
By default, movement is set to follow the direction you point your wand, i.e. the motion controller.  
Change this temporarily in game by pressing the `F3` key to cycle between the modes, as specified by the profile authors:
1. Manual direction mode - rotate character direction with analog stick only. does not matter where you look or where you point your motion controllers. probably good for seated experience
2. Head/HMD based direction mode - my choice
3. Hand/Controller direction mode - i guess some people like this

To persist your chosen mode, so that it is used each time you start and inject, you must edit a file in the profile.  
`%appdata%\UnrealVRMod\HogwartsLegacy\plugins\ue4ss\Mods\VRFP\scripts\config.lua`
```lua
--[[
Locomotion Mode
0 = Manual direction mode
1 = Head/HMD based direction mode
2 = Hand/Controller direction mode
]]--
locomotionMode = 1
```

<br>

Why is the [B] button not going back in menus?  
Why is the [X] button dodging and not interacting?  
See [Swapped B and X buttons](#swapped-b-and-x-buttons)

## Performance

Game is very laggy?

There are lots of settings to play with

Turn off ray-tracing

Turn graphics preset down to Low

Try DLSS on and see if it helps

If the in-game settings don't get you a frame-rate that you find acceptable, then lower the resolution and/or bit-rate in the settings of your PC link software (Virtual Desktop, Meta Link, SteamVR, etc.)
A restart of the game is likely required

Remember, this game was not meant to run in VR. It is not optimized for it at all. It's already hardware intensive when flat 4K at 60 fps, and we're shoving VR down its throat. That means everything is rendered twice, once for each eye's perspective, at higher resolutions and higher frame-rate.

## Controls

### D-Pad

Rest your right thumb to the left of the [A] and [B] buttons  
There is a touch sensor there. Similar to how the buttons and analog-stick also sense that your finger is resting on it but not pressing.

![](images/09-quest-3-controller-thumb-rest-highlight.jpg)
![](images/10-quest-3-controller-thumb-on-thumb-rest.jpg)

The left analog-stick (on the left controller) will now function as a Direction Pad, while you continue to hold the right thumb-rest.

This is known as D-shifting. Mode-shift for the d-pad.

<details>
<summary>Expand for further details</summary>

> The quest controllers do not *actually* have a direction pad, aka d-pad, like an xbox controller.  
> Instead, we must emulate one.  
> Quest controllers have thumb-sticks, aka analogue-sticks, so we can use those like a d-pad.
>
> But if the stick is always acting as a d-pad, then we cannot use that stick for analogue input.  
> So by default, the stick acts as a stick. And only acts as a d-pad when you rest your thumb on the capacitive thumb-rest as shown in the guide picture.
>
> This concept is known as "d-shift".  
> As in, *shifting* the mode/behavior of the stick to act as a d-pad temporarily.
>
> This is the only use of the thumb-rest for this UEVR profile of this game.

</details>

UEVR has settings in its advanced "Inputs" tab to change this

1. Swap hands (left thumb-rest, right analog-stick)
2. Make a thumb-stick always the d-pad
3. D-shift when lifting the controller close to your head

What the d-pad does is the same as in the flat game (non-VR)

◀ (left) _Revelio_ spell  
▶ (right) Spell select menu  
🔻 (down) Health (wiggenweld potion)  
🔺 (up) Reveal path to tracked objective or location (see map)

[![](images/11-uevr-settings-d-pad-shifting.png)](#open-uevr-settings-in-game)

[how to open UEVR settings in-game](#open-uevr-settings-in-game)

### Wand

Move your right hand and the wand moves (motion controlled)

Can't see it? Try pressing the trigger to cast a spell.  
If it still doesn't appear, you may need to restart the game

Cast other spells by holding the trigger and moving the analog-stick up/down/left/right to cast the corresponding spell as seen on the HUD. This is special for this UEVR profile.  
The buttons [A] [B] [X] [Y] also work, just like in flat mode (non-VR)

To **open chests** or collect **field guide pages** or otherwise interact with things, point the wand at it and press [X]  
You might find this a bit finicky. Get close enough to the object. Slowly rotate your hand up/down and left/right until you can see the button prompt.

Remember, we're grafting first-person VR motion controls onto a third-person free-camera game  
It's not going to be perfect  
Let's be happy how lucky we are to have this at all  
To quote Louis CK about airplanes, "You're sitting in a chair… in the SKY!"  
<https://youtu.be/oTcAWN5R5-I?si=Gwr_ZDbzYkHQO91H>

#### Glyph Gestures

Available in the V1.06 profile

![](images/11.2-uevr-easy-profile-selection-glyph-gestures-and-install.png)

(this section WIP 2025-04-03)

Instructions are in the profile's description
1. Press F1 to go into 1st person view
1. Press F7 to enable spell-casting using gestures
1. Glyphs are shown in the game's spell management menu (d-pad right)
1. Hold right trigger and draw the glyph in the air

[raw screenshots](images/glyph-gestures/)  
Better pictures coming soon

[From profile author 'jbusfield' — 2025-03-05](https://discord.com/channels/747967102895390741/1073648949057048628/1346903324703723543)
> Glyphs are detected based on the angles between one line you draw and the next.  
> So if you want to draw a box for reparo, draw straight up, straight right, straight down, then straight left.  
> Be very deliberate with your strokes.  
> If the drawing system does not detect that what you have drawn so far will result in a valid glyph, then it will stop detecting and vibrate your controller as you saw in your first attempt.  
> Drawing direction goes from the thick end of the line to the thin end in the examples in the spell menu.

| Key | Function |
| --- | -------- |
| F1  | switch 1st/3rd person view |
| F2  | switch native/sync-sequential rendering |
| F3  | locomotion mode change <br> 1. follow wand direction <br> 2. follow head direction <br> 3. only analog-stick controls direction. smooth or snap-turn can be chosen in the UEVR settings. |
| F4  | toggle fog |
| F5  | toggle 2D screen |
| F6  | non-gesture spell control mode change <br> 1. only buttons [A] [B] [X] [Y] cast spells <br> 2. can also push analog-stick in cardinal direction of spell slot as shown on HUD <br> (while holding trigger) |
| F7  | toggle glyph gesture spell mode <br> cast spells by drawing simple shapes with the wand <br> see the game's spell management menu |
| F8  | toggle crosshair <br> when on, a circle is shown where the wand is pointed |
| F9  | switch manual/auto targeting <br> in v1.06c profile|

These will all be temporary changes. They will not persist between game sessions.  
To persist your settings, so that they are used each time you start and inject, you must edit a file in the profile.  
`%appdata%\UnrealVRMod\HogwartsLegacy\plugins\ue4ss\Mods\VRFP\scripts\config.lua`

Adjust wand position relative to controller

| Key            | Direction         |
| -------------- | ----------------- |
| numpad 8       | up (y-axis)       |
| numpad 2       | down (y-axis)     |
| alt + numpad 8 | forward (z-axis)  |
| alt + numpad 2 | backward (z-axis) |
| alt + numpad 4 | left (x-axis)     |
| alt + numpad 2 | right (x-axis)    |

Adjust wand rotation

| Keys         | Axis           |
| ------------ | -------------- |
| numpad 7 / 9 | pitch (x-axis) |
| numpad 4 / 6 | roll  (z-axis) |
| numpad 1 / 3 | yaw   (y-axis) |

#### Epic Games Store

If your installation of Hogwarts Legacy is from the Epic Games Store, then motion controls might not work at first.

A suggested fix is to remove the file  
"C:\Program Files\Epic Games\Hogwarts Legacy\Phoenix\Binaries\Win64\EOSSDK-Win64-Shipping.dll"

Rename it, move it to another folder, or delete it entirely.

### Menu & Map

Left controller "system" button opens the menu.  
Hold for a second and release to open the map.

Menu cursor is controlled with the analog-stick. Not motion control.

If using **SteamVR**, then the "system" button will bring up the SteamVR overlay/dashboard.  
So you need to disable that in SteamVR settings.

![](images/11.1-steamvr-settings-dashboard-on-system-button-off.png)

For some reason, this option only appears in the desktop window, not in the VR dashboard.  
Your HMD still needs to be connected. And show "Advanced Settings".

### Swapped [B] and [X] buttons

By default, UEVR maps the [B] button of your right-hand motion controller to act as the [X] button of an Xbox controller.  
In Hogwarts Legacy, this is used to interact with objects, or cast the spell assigned to the West slot.

UEVR also maps the [X] button of your left-hand motion controller (for Valve Index, that's the other [A] on your left-hand) to act as the [B] button of an Xbox controller.  
In Hogwarts Legacy, this is used to dodge, cast the spell assigned to the East slot, or go back in a menu.

If instead you want the button labeled [B] to act as [B] and the button labeled [X] to act as [X], or make any other button binding changes, you can do that in [UEVR settings](#open-uevr-settings-in-game).

In the "Runtime" tab, expand the "Bindings" section, which is at the bottom of "OpenXR Options" and directly above "Overlay Options".

![](images/13-uevr-settings-bindings.png)

## Miscellaneous

### Open UEVR Settings In-Game

Press both analog-sticks simultaneously.  
Or press the "Insert" [INS] key on your keyboard.

Press again to close.

If the menu does not appear before you, then it might be behind you or to the side.  
Try turning your head to look around.  
Or recenter your view. On Quest, do that by holding the Meta button.

At the top-left of the floating settings window, check the "Show Advanced Options" checkbox to see even more things to fiddle with.

### HUD following hand instead of head

Open UEVR settings

Go to "Runtime" tab

Check "UI Follows View"

![](images/12-uevr-settings-ui-follows-view.png)

### UEVR links

Praydog's site <https://uevr.io/>

Release download <https://github.com/praydog/UEVR/releases/>

Nightly builds <https://github.com/praydog/UEVR-nightly/releases>

A "nightly build" is like a beta version. It includes whatever work was done on the source-code that day, even if it's broken or otherwise not ready for stable release. The advantage of using these is that some bugs might be fixed and some new features added. But don't complain if it doesn't work.

Tutorials <https://www.youtube.com/watch?v=CW60zLLo2fw&list=PLyE0aREJRIBLMQREfAFXKSQydoI-h4Vfh>
