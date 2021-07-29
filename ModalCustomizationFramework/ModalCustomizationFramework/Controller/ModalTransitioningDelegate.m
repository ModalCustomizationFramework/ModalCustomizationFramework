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
{
    if(self = [super init])
    {
        self.viewController = viewController;
        self.presentingViewController = presentingViewController;
    }
    return self;
}

-(UIPresentationController*)presentationControllerForPresentedViewController:(UIViewController*)presented
                                                    presentingViewController:(UIViewController*)presenting sourceViewController:(UIViewController *)source
{
    BlurEffectMode blurStyle = [FrameworkHelper.sharedInstance getStyleBlurEffect];
    ModalScaleState modalScaleState = [FrameworkHelper.sharedInstance getModalScaleState];
    BOOL isExpansive = [FrameworkHelper.sharedInstance getIsModalExpansive];
    return [[ModalPresenter alloc] initWithPresentedViewController:presented
                                          presentingViewController:presenting
                                                   modalScaleState:modalScaleState
                                                       isExpansive:isExpansive
                                                         blurStyle:blurStyle];
}

@end

