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
 
    cam.setup(ofGetWidth(), ofGetHeight());
    cam.setScale(1, -1, 1);
    
    cam.setPhysicalFocusDistance(120);
    
    cam.setFocusDistance(50);
    cam.setNearClip(0.1);
    
    
}

//
//----------------
//


-(void)update:(NSDictionary *)drawingInformation{
    
    
    cam.setFocusDistance(cam.getGlobalPosition().length());
    
    cam.update();
    
    cam.beginLeft();
    [self drawScene];
    cam.endLeft();
    
    cam.beginRight();
    [self drawScene];
    cam.endRight();
    
    
}

//
//----------------
//


-(void)drawScene{
    
    myBox.set(100);
    myBox.draw();
    
    
}

-(void)draw:(NSDictionary *)drawingInformation{
    
    ofEnableAlphaBlending();
    
    ofFill();
    
    ofSetColor(255, 0, 0,255);
    
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
