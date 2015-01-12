# cordova-plugin-watch-example
Example App for 'cordova-plugin-watch' plugin by 20steps

You need a Xcode version containing the watchkit SDK

### Configuration
In Xcode you need to set the development team for your app target and WatchKit Extention target - for this you need a payed iOS dev account). Then add for both targets your desired *App Group* under your target *Capabilities*.

### Run App
Select the  *SimpleDemo WatchKit App* scheme, build an run it. This should open the watchkit simulator and run the watch app. In the also opened iPhone Simulator start the SimpleDemo App. Now both apps should communicate.

In case the SimpleDemo App is not yet on the iPhone simulator, run that app first once.
