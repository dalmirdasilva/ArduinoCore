# ArduinoCore

ArduinoCore is a Eclipse project based on the Arduino 1.6.5.

## Setup

- You must have Java(TM) SE Runtime Environment (build 1.7.0_80-b15)
- Download Eclipse IDE for Java Developers (Version: Luna Service Release 1a (4.4.1) Build id: 20150109-0600)
	- Eclipse AVR plugin: Inside Eclipse, go to Help > Install New Software... and add: "AVR Eclipse Generate Update Site - http://avr-eclipse.sourceforge.net/updatesite/" 
	- Install the plugin (should be straightforward)

## Clone and import

- Clone this repository: git clone git@github.com:dalmirdasilva/ArduinoCore.git
- Open Eclipse
- Go to File > Import... > General > Existing Project into Workspace > Next > Browse to the cloned path > OK > Finish.

## Install dep.

sudo apt-get install gcc-avr binutils-avr gdb-avr avr-libc avrdude

## Build 

Build the project:  Right click on ArduinoCore project > Build Project...

### Eclipse tips

If you are not satisfied with the huge eclipse tabs, take a look at this: http://stackoverflow.com/questions/11805784/very-large-tabs-in-eclipse-panes-on-ubuntu, look at the answer from http://stackoverflow.com/users/290339/akond, he says:

```
Style of tabs can be changed in Eclipse 4.2 by editing CSS. You can change styles directly in Eclipse Preferences window after installing the E4 CSS editor plug-in.

Go to menu Help > Install new software, then install E4 CSS editor (Incubation) plug-in using Eclipse 4 update site (add this link: http://download.eclipse.org/e4/updates/0.12).

After restart, go to Window > Preferences, General > Appearance and now you can edit styles here for any selected theme.

I am using this style for tabs:

.MPartStack {
  font-size: 9;
  font-family: Liberation Sans;
  swt-tab-renderer: null;
  swt-tab-height: 22px;
  swt-selected-tabs-background: #FFFFFF #ECE9D8 100%;
  swt-simple: false;
  swt-mru-visible: false;
}
You can specify tabs height using the swt-tab-height option. It's value sets tab height ignoring the font size.
```

Icons using too much space? export SWT_GTK3=0 (https://bugs.eclipse.org/bugs/show_bug.cgi?id=438346)
