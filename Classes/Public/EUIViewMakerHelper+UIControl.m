//
//  EUIViewMakerHelper+UIControl.m
//  Pods
//
//  Created by Xu Peng on 2017/5/25.
//
//

#import "EUIViewMakerHelper+UIControl.h"

NS_ASSUME_NONNULL_BEGIN

@implementation EUIViewMakerHelper (UIControl)

EUI_MakerHelper_Source_Assert_Method(UIControl, BOOL, enabled, control_enabled)
EUI_MakerHelper_Source_Assert_Method(UIControl, BOOL, selected, control_selected)
EUI_MakerHelper_Source_Assert_Method(UIControl, BOOL, highlighted, control_highlighted)
EUI_MakerHelper_Source_Assert_Method(UIControl, UIControlContentVerticalAlignment, contentVerticalAlignment, control_contentVerticalAlignment)
EUI_MakerHelper_Source_Assert_Method(UIControl, UIControlContentHorizontalAlignment, contentHorizontalAlignment, control_contentHorizontalAlignment)

- (EUIViewMakerHelper * (^)(void (^actionBlock)(id sender), UIControlEvents controlEvents))control_event
{
    NSAssert(NO, @"EUIViewmakerHelper wrong path: UIControl-control_event");
    return nil;
}

@end

NS_ASSUME_NONNULL_END
