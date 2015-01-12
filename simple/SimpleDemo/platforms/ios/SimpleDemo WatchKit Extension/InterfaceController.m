//
//  InterfaceController.m
//  SimpleDemo WatchKit Extension
//
//  Created by Bastian Brodbeck on 05/01/15.
//
//

#import "InterfaceController.h"


@interface InterfaceController()
    @property (weak, nonatomic) IBOutlet WKInterfaceLabel *respondingValueLabel;
    @property (weak, nonatomic) IBOutlet WKInterfaceLabel *receivedValueLabel;
@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    // Configure interface objects here.
    
    wormhole = [[MMWormhole alloc] initWithApplicationGroupIdentifier:@"group.testgroup"
                                                         optionalDirectory:@"wormhole"];
    
    [wormhole listenForMessageWithIdentifier:@"testChannel" listener:^(id message) {
        [self.receivedValueLabel setText:(NSString*)message];
        
        NSString *response = [NSString stringWithFormat:@"%d",arc4random_uniform(50)];
        [self.respondingValueLabel setText:(NSString*)response];
        
        [wormhole passMessageObject:response identifier:@"responseChannel"];
    }];
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



