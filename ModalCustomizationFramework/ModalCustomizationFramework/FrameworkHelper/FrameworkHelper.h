//
//  FrameworkHelper.h
//  ModalCustomizationFramework
//
//  Created by Jhennyfer Rodrigues de Oliveira on 26/07/21.
//

#import <Foundation/Foundation.h>
#import "ModalTransitioningDelegate.h"
#import <UIKit/UIKit.h>

@class FrameworkHelper;
@interface  FrameworkHelper : NSObject

+(FrameworkHelper *)sharedInstance;
@property(assign, nonatomic) BlurEffectMode blurStyle;
@property(assign, nonatomic) ModalScaleState modalStyle;
@property(assign, nonatomic) BOOL isExpansive;


-(void)setStyleBlurEffect:(BlurEffectMode)blurStyle;

-(BlurEffectMode)getStyleBlurEffect;

- (void)setModalScaleState:(ModalScaleState)modalScaleState;

- (ModalScaleState)getModalScaleState;

-(void)setIsModalExpansive:(BOOL)isExpansive;

-(BOOL)getIsModalExpansive;

@end
