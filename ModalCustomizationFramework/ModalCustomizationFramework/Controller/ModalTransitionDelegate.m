//
//  ModalTransitionDelegate.m
//  AppObjc
//
//  Created by Samuel Sales on 23/07/21.
//

#import "ModalTransitioningDelegate.h"

@implementation ModalTransitioningDelegate

-(instancetype)initWithViewController:(UIViewController*)viewController presentingViewController:(UIViewController*)presentingViewController {
    if(self = [super init]) {
        self.viewController = viewController;
        self.presentingViewController = presentingViewController;
    }
    return self;
}

-(UIPresentationController*)presentationControllerForPresentedViewController:(UIViewController*)presented presentingViewController:(UIViewController*)presenting sourceViewController:(UIViewController *)source {
    return [[ModalPresenter alloc] initWithPresentedViewController:presented presentingViewController:presenting];
}

@end
