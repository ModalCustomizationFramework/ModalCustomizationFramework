//
//  ModalCustomization.h
//  AppObjc
//
//  Created by Jhennyfer Rodrigues de Oliveira on 27/07/21.
//


#import "ModalPresenter.h"

@class ModalCustomization;
@interface  ModalCustomization : NSObject

@property(assign, nonatomic) BlurEffectMode blurStyle;


-(void)setModalBlurEffectStyle:(BlurEffectMode)blurStyle;


@end
