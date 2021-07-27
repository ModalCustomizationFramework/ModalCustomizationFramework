//
//  ModalTransitionDelegate.m
//  AppObjc
//
//  Created by Samuel Sales on 23/07/21.
//

#import "ModalTransitioningDelegate.h"
#import "FrameworkHelper.h"

@implementation ModalTransitioningDelegate

-(instancetype)initWithViewController:(UIViewController*)viewController
             presentingViewController:(UIViewController*)presentingViewController
                      modalScaleState:(ModalScaleState)modalScaleState
                          isExpansive:(BOOL)isExpansive
{
    if(self = [super init])
    {
        self.viewController = viewController;
        self.presentingViewController = presentingViewController;
        self.state = modalScaleState;
        self.isExpansive = isExpansive;
    }
    return self;
}

-(UIPresentationController*)presentationControllerForPresentedViewController:(UIViewController*)presented
                                                    presentingViewController:(UIViewController*)presenting sourceViewController:(UIViewController *)source
{
    BlurEffectMode blurStyle = [FrameworkHelper.sharedInstance getStyleBlurEffect];
    return [[ModalPresenter alloc] initWithPresentedViewController:presented
                                          presentingViewController:presenting
                                                   modalScaleState:self.state
                                                       isExpansive:self.isExpansive
                                                         blurStyle:blurStyle];
}

@end

