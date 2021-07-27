//
//  FrameworkHelper.m
//  ModalCustomizationFramework
//
//  Created by Jhennyfer Rodrigues de Oliveira on 26/07/21.
//
#import "FrameworkHelper.h"

@implementation FrameworkHelper

@synthesize blurStyle;
+ (instancetype)sharedInstance
{
    static FrameworkHelper *sharedInstance = nil;
    //static or global variable of type dispatch_once_t, this is an opaque type that stores the “done did run” state of something
    static dispatch_once_t onceToken;
    // pass that dispatch_once_t token to dispatch_once, GCD will guarantee that the block will run no more than one time, no matter how many threads you have contending for this one spot.
    dispatch_once(&onceToken, ^{
        sharedInstance = [[FrameworkHelper alloc] init];
        sharedInstance.blurStyle = lightMode;
    });
    return sharedInstance;
}

-(void)createModalTransitioningDelegateWithviewController:(UIViewController*)viewController
                                      presentingViewController:(UIViewController*)presentingViewController
                                                   heightModal:(CGFloat*)heightModal {
    
}

- (void)setStyleBlurEffect:(BlurEffectMode)blurStyle {
    self.blurStyle = blurStyle;
}

- (BlurEffectMode)getStyleBlurEffect {
    return blurStyle;
}



@end
