//
//  EUIViewMakerHelper+UIView.m
//  Pods
//
//  Created by Xu Peng on 2017/5/17.
//
//

#import "EUIViewMakerHelper+UIView.h"

NS_ASSUME_NONNULL_BEGIN

@implementation EUIViewMakerHelper (UIView)

EUI_MakerHelper_Source_Assert_Method(UIView, CGRect, frame, frame)
EUI_MakerHelper_Source_Assert_Method(UIView, CGRect, bounds, bounds)
EUI_MakerHelper_Source_Assert_Method(UIView, CGSize, size, size)
EUI_MakerHelper_Source_Assert_Method(UIView, BOOL, userInteractionEnabled, userInteractionEnabled)
EUI_MakerHelper_Source_Assert_Method(UIView, CGPoint, center, center)
EUI_MakerHelper_Source_Assert_Method(UIView, BOOL, clipsToBounds, clipsToBounds)
EUI_MakerHelper_Source_Assert_Method(UIView, UIColor *, backgroundColor, backgroundColor)
EUI_MakerHelper_Source_Assert_Method(UIView, BOOL, masksToBounds, masksToBounds)
EUI_MakerHelper_Source_Assert_Method(UIView, UIColor *, borderColor, borderColor)
EUI_MakerHelper_Source_Assert_Method(UIView, CGFloat, borderWidth, borderWidth)
EUI_MakerHelper_Source_Assert_Method(UIView, CGFloat, cornerRadius, cornerRadius)
EUI_MakerHelper_Source_Assert_Method(UIView, UIView *, subview, addSubview)

@end

NS_ASSUME_NONNULL_END
