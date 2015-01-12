//
//  InterfaceController.h
//  SimpleDemo WatchKit Extension
//
//  Created by Bastian Brodbeck on 05/01/15.
//
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>
#import "MMWormhole.h"

@interface InterfaceController : WKInterfaceController {
    MMWormhole* wormhole;
}

@end
