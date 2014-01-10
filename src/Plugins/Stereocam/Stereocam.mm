#import "Stereocam.h"
#import <ofxCocoaPlugins/Keystoner.h>
#import <ofxCocoaPlugins/KeystoneSurface.h>

@implementation Stereocam

- (id)init{
    self = [super init];
    if (self) {
    }
    
    return self;
}

//
//----------------
//


-(void)setup{
    
}

//
//----------------
//


-(void)update:(NSDictionary *)drawingInformation{
    
}

//
//----------------
//

-(void)draw:(NSDictionary *)drawingInformation{
    
    ofEnableAlphaBlending();
    
    ofFill();
    
    ofSetColor(255, 255, 255,255);
    
    ApplySurfaceForProjector(@"Floor",0); {
        
        float aspect = Aspect(@"Floor", 0);
        
        glTranslated(0, 0, 0.01);
        ofRect(0,0,1*aspect,1);
        
    } PopSurfaceForProjector();
   
}

//
//----------------
//

-(void)controlDraw:(NSDictionary *)drawingInformation{    
}

@end
