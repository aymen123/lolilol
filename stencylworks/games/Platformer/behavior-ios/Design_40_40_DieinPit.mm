#import <Box2D/Box2D.h>
#import <AudioToolbox/AudioServices.h>
#import <Foundation/Foundation.h>
#import "ActorScript.h"

#import "Script.h"

#import "Actor.h"
#import "ActorType.h"
#import "Assets.h"
#import "Behavior.h"
#import "Collision.h"
#import "CollisionPoint.h"
#import "Game.h"
#import "GameModel.h"
#import "GroupDef.h"
#import "FadeInTransition.h"
#import "FadeOutTransition.h"
#import "Region.h"
#import "Runnable.h"
#import "Scene.h"
#import "SHThumbstick.h"
#import "Sparrow.h"
#import "Transition.h"



@interface Design_40_40_DieinPit : ActorScript 
{
	@public
		NSString* tempHolder;
		
}
@end

@implementation Design_40_40_DieinPit

-(void)load
{
	            [mActor makeAlwaysSimulate];
    [self addWhenUpdatedListener:nil func:^(NSMutableArray* list, Script* theScript){
Design_40_40_DieinPit* self = (Design_40_40_DieinPit*) theScript;
        if(!([mActor isOnScreen]))
{
            [self reloadCurrentScene:[self createFadeOut:((1000*0.5)) color:0] enter:[self createFadeIn:((1000*0.5)) color:0]];
}

}];

} 



-(void)forwardMessage:(NSString*)msg
{
	
}

@end