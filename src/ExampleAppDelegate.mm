//
//  ExampleAppDelegate.m
//  Example
//
//  Created by Jonas Jongejan on 10/19/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ExamplePlugin.h"
#import "Perspective.h"

#import "ExampleAppDelegate.h"

@implementation ExampleAppDelegate

@synthesize window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    ocp = [[ofxCocoaPlugins alloc] initWithAppDelegate:self];
    //[ocp setNumberOutputviews:1];
    [ocp addHeader:@"Setup"];
    [ocp addPlugin:[[Keystoner alloc] initWithSurfaces:[NSArray arrayWithObjects:@"Floor", @"Element One", @"Element Two", nil]] midiChannel:2 ];
    [ocp addPlugin:[[Perspective alloc] init]];
    [ocp addPlugin:[[Cameras alloc] initWithNumberCameras:1] midiChannel:1];
    [ocp addPlugin:[[CameraCalibration alloc] init] midiChannel:1];
    [ocp addPlugin:[[BlobTracker2d alloc] init]midiChannel:1];
    [ocp addPlugin:[[Midi alloc] init]];
    [ocp addPlugin:[[OSCControl alloc] init] midiChannel:2];
    [ocp addPlugin:[[Tracker alloc] init] midiChannel:1];
    [ocp addHeader:@"Scenes"];
    [ocp addPlugin:[[ExamplePlugin alloc] init]];

    [ocp loadPlugins];
}

@end
