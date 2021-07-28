//
//  ModalPresenter.h
//  AppObjc
//
//  Created by Jhennyfer Rodrigues de Oliveira on 23/07/21.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class ModalPresenter;
@interface ModalPresenter : UIPresentationController

typedef enum {
    ModalScaleStateShort,
    ModalScaleStateNormal,
    ModalScaleStateAdjustedOnce,
} ModalScaleState;

typedef enum {
    lightMode,
    darkMode,
} BlurEffectMode;

@property(assign, nonatomic) BOOL isMaximized;
@property(strong, nonatomic) UIView *dimmingView;
@property(strong, nonatomic) UIPanGestureRecognizer *panGestureRecognizer;
@property(strong, nonatomic) UITapGestureRecognizer *tapGestureRecognizer;
@property(assign, nonatomic) CGFloat direction;
@property(assign, nonatomic) ModalScaleState state;
@property(assign, nonatomic) ModalScaleState initialState;
@property(assign, nonatomic) BOOL auxState;
@property(assign, nonatomic) BOOL isExpansive;
@property(assign, nonatomic) BlurEffectMode blurState;

-(instancetype)initWithPresentedViewController:(UIViewController *)presentedViewController
                      presentingViewController:(UIViewController *)presentingViewController
                               modalScaleState:(ModalScaleState)modalScaleState
                                   isExpansive:(BOOL)isExpansive
                                     blurStyle:(BlurEffectMode)blurStyle;

@end
