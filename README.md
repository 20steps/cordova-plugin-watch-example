# cordova-plugin-watch-example
Example App for 'cordova-plugin-watch' plugin by 20steps

Plugin: http://github.com/20steps/cordova-plugin-watch

! You need a Xcode version containing the watchkit SDK

### Configuration
In Xcode you need to set the development team for your app target and WatchKit Extension target - for this you need a payed iOS dev account. Then add for both targets your desired *App Group* under your target *Capabilities*.

Once you configured your *App Group* you need to change these in the code. For this replace *group.testgroup* in the *InterfaceController.m* (SimpleDemo WatchKit Extension) with your group identifier. Do the same in the app.js (in xcode under www/js/app.js)

### Build the cordova app
You need node.js and bower installed

Enter the SimpleDemo directory and run:
```
npm install
bower install
```

### Run App
Select the  *SimpleDemo WatchKit App* scheme, build an run it. This should open the watchkit simulator and run the watch app. In the also opened iPhone Simulator start the SimpleDemo app. Now both apps should communicate.

In case the SimpleDemo App is not yet on the iPhone simulator, run that app first once.
