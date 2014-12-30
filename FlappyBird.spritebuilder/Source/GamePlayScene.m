#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    // your code here
    
    character = (Character*)[CCBReader load:@"Character"];
    [physicsNode addChild:character];
    
    [self addObstacle];
    timeSincebstacle = =.0f;

}

-(void)update:(CCTime)delta
{
    // put update code here
}

// put new methods here

-(void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event {
    //questo verrà chiamato ogni volta in cui il giocatore tocca lo schermo
    
    [character flap];
    
}

/*
-(void) doSomething

{
    NSLog(@"Hello World!");
}

-(int) doSomethingWithAsString: (NSString*) myString

{
    
    /// restituisce la lunghezza dei 10 tempi della stringa
    return [myString length] * 10;
}
 
 -(NSArray *) add
    


-(NSArray *) addThisStringToAnArray:(NSString*) firstString andThisString:(NSString*) secondString andAlsoThisString:(NSString*) thirdString
{
    return [NSArray arrayWithObjects:firstString,secondString,thirdString, nil];
}
 
 */

@end
