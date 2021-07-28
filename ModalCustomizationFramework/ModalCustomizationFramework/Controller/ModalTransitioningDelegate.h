//
//  ModalTransitioningDelegate.h
//  AppObjc
//
//  Created by Samuel Sales on 23/07/21.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <ModalPresenter.h>

@interface ModalTransitioningDelegate : NSObject <UIViewControllerTransitioningDelegate>

@property (strong, nonatomic) UIViewController *viewController;
@property (strong, nonatomic) UIViewController *presentingViewController;

-(instancetype)initWithViewController:(UIViewController*)viewController
             presentingViewController:(UIViewController*)presentingViewController;

@end
