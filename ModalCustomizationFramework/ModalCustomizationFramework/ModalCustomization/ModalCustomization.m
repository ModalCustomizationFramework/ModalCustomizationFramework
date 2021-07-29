//
//  ModalCustomization.m
//  AppObjc
//
//  Created by Jhennyfer Rodrigues de Oliveira on 27/07/21.
//

#import <Foundation/Foundation.h>
#import "ModalCustomization.h"
#import "FrameworkHelper.h"

@implementation ModalCustomization

- (void)setModalBlurEffectStyle:(BlurEffectMode)blurStyle {
    [FrameworkHelper.sharedInstance setStyleBlurEffect: blurStyle ];
}

- (void)setIsModalExpansive:(BOOL)isExpansive {
    [FrameworkHelper.sharedInstance setIsModalExpansive:isExpansive];
}

- (void)setModalScaleState:(ModalScaleState)modalScaleState {
    [FrameworkHelper.sharedInstance setModalScaleState:modalScaleState];
}

@end
