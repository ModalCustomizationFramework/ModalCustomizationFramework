//
//  FrameworkHelper.h
//  ModalCustomizationFramework
//
//  Created by Jhennyfer Rodrigues de Oliveira on 26/07/21.
//

#import <Foundation/Foundation.h>
#import <ModalTransitioningDelegate.h>
#import <UIKit/UIKit.h>

@class FrameworkHelper;
@interface  FrameworkHelper : NSObject

+(FrameworkHelper *)sharedInstance;
@property(assign, nonatomic) BlurEffectMode blurStyle;

-(void)createModalTransitioningDelegateWithviewController:(UIViewController*)viewController
                                 presentingViewController:(UIViewController*)presentingViewController
                                              heightModal:(CGFloat*)heightModal;

-(void)setStyleBlurEffect:(BlurEffectMode)blurStyle;

-(BlurEffectMode)getStyleBlurEffect;

@end
