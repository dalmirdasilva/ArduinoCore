# ArduinoCore

ArduinoCore is a Eclipse project based on the latest Arduino core. It aims to provide an alternative to the Arduino IDE when developing Arduino projects.

## Installing dependecies

```
sudo apt-get install git gcc-avr binutils-avr gdb-avr avr-libc avrdude
```

## Eclipse setup

- You must have Java(TM) SE Runtime Environment
- Download Eclipse IDE for C/C++ Developers at [Eclipse donwload page](http://www.eclipse.org/downloads/packages/eclipse-ide-cc-developers/marsr)
- After the download e the extraction, open it. Then:
	- Install Eclipse AVR plugin: Inside Eclipse, go to Help > Install New Software... and add: "AVR Eclipse Generate Update Site - http://avr-eclipse.sourceforge.net/updatesite/" 
	- Install the plugin (should be straightforward)

## Clone and import

- Clone this repository: ```git clone git@github.com:dalmirdasilva/ArduinoCore.git```
- Open Eclipse
- Go to File > Import... > General > Existing Project into Workspace > Next > Browse to the cloned path > OK > Finish.

## Build 

Build the project:  Right click on ArduinoCore project > Build Project...

### Testing you new sketch

#### Clone, import, setup and build.

- Clone this simple sketch example: ```git clone git@github.com/dalmirdasilva/ArduinoEclipseSketch.git```
- Open it: Go to File > Import... > General > Existing Project into Workspace > Next > Browse to the cloned path > OK > Finish.
- Right click on the opened project > Properties > C/C++ Build > Settings. 
- On the AVR C++ Compiler entry, select Directories. Make sure the include paths contains the "${workspace_loc:/ArduinoCore}" and "${workspace_loc:/ArduinoCore/variants/standard}" (maybe you are using not an standard Arduino, then choose the appropriate variant).
- On the AVR C++ Linker entry, select Libraries. Make sure you are including the ArduinoCore library. The library paths should contain "${workspace_loc:/ArduinoCore/Release}". The corresponding library (-l) is ArduinoCore.
- OK.
- Built it. If successful, perfect! On errors, send me an email: dalmirdasilva@gmail.com.

#### Flashing the Arduino.

- After successful build, right click on the Sketch project > AVR > AVRDude.
- Create a new programmer (New button).
- Give it a name (Arduino is a good name). In the Programmer Hardware, select Arduino. Enter a default serial port (I use /dev/arduino, then create a symlink to point to the correct port). Baudrate: 115200. 
- OK. Then, OK.
- To flash, click at the icon "AVR" with a little arrow on the toolbar.
- Make sure the Arduino is plugged and the symlink to the serial port is OK. Done... the led should be flashing!

### Eclipse tips

If you are not satisfied with the huge eclipse tabs, take a look at this: http://stackoverflow.com/questions/11805784/very-large-tabs-in-eclipse-panes-on-ubuntu, look at the answer from http://stackoverflow.com/users/290339/akond, he says:

> Style of tabs can be changed in Eclipse 4.2 by editing CSS. You can change styles directly in Eclipse Preferences window > after installing the E4 CSS editor plug-in.
> 
> Go to menu Help > Install new software, then install E4 CSS editor (Incubation) plug-in using Eclipse 4 update site (add > this link: http://download.eclipse.org/e4/updates/0.12).
> 
> After restart, go to Window > Preferences, General > Appearance and now you can edit styles here for any selected theme.
> 
> I am using this style for tabs:
> 
```
.MPartStack {
  font-size: 9;
  font-family: Liberation Sans;
  swt-tab-renderer: null;
  swt-tab-height: 22px;
  swt-selected-tabs-background: #FFFFFF #ECE9D8 100%;
  swt-simple: false;
  swt-mru-visible: false;
}
```
> You can specify tabs height using the swt-tab-height option. It's value sets tab height ignoring the font size.

Icons using too much space? export SWT_GTK3=0 (https://bugs.eclipse.org/bugs/show_bug.cgi?id=438346)

## Hope you enjoy it!
