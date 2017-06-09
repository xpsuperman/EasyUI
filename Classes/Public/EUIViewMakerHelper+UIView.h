//
//  EUIViewMakerHelper+UIView.h
//  Pods
//
//  Created by Xu Peng on 2017/5/17.
//
//

#import "EUIViewMakerHelper.h"
#import "EUIUtilities.h"

NS_ASSUME_NONNULL_BEGIN

@interface EUIViewMakerHelper (UIView)

EUI_MakerHelper_Head_Method(CGRect, frame, frame)
EUI_MakerHelper_Head_Method(CGRect, bounds, bounds)
EUI_MakerHelper_Head_Method(CGSize, size, size)
EUI_MakerHelper_Head_Method(BOOL, userInteractionEnabled, userInteractionEnabled)
EUI_MakerHelper_Head_Method(CGPoint, center, center)
EUI_MakerHelper_Head_Method(BOOL, clipsToBounds, clipsToBounds)
EUI_MakerHelper_Head_Method(UIColor *, backgroundColor, backgroundColor)
EUI_MakerHelper_Head_Method(BOOL, masksToBounds, masksToBounds)
EUI_MakerHelper_Head_Method(UIColor *, borderColor, borderColor)
EUI_MakerHelper_Head_Method(CGFloat, borderWidth, borderWidth)
EUI_MakerHelper_Head_Method(CGFloat, cornerRadius, cornerRadius)
EUI_MakerHelper_Head_Method(UIView *, subview, addSubview)

@end

NS_ASSUME_NONNULL_END
