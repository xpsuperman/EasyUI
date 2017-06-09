//
//  EUIViewMakerHelper+UIControl.h
//  Pods
//
//  Created by Xu Peng on 2017/5/25.
//
//

#import "EUIViewMakerHelper.h"
#import "EUIUtilities.h"

NS_ASSUME_NONNULL_BEGIN

@interface EUIViewMakerHelper (UIControl)

EUI_MakerHelper_Head_Method(BOOL, enabled, control_enabled)
EUI_MakerHelper_Head_Method(BOOL, selected, control_selected)
EUI_MakerHelper_Head_Method(BOOL, highlighted, control_highlighted)
EUI_MakerHelper_Head_Method(UIControlContentVerticalAlignment, contentVerticalAlignment, control_contentVerticalAlignment)
EUI_MakerHelper_Head_Method(UIControlContentHorizontalAlignment, contentHorizontalAlignment, control_contentHorizontalAlignment)

- (EUIViewMakerHelper * (^)(void (^actionBlock)(id sender), UIControlEvents controlEvents))control_event;

@end

NS_ASSUME_NONNULL_END
