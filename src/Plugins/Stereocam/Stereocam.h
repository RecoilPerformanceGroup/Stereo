#pragma once
#import <ofxCocoaPlugins/Plugin.h>
#import <ofxStereoCamera.h>

@interface Stereocam : ofPlugin {

    ofxStereoCamera<ofEasyCam> cam;
    ofBoxPrimitive myBox;
    
    
}

@end
