//
//  EUIViewMakerHelper+UILabel.h
//  Pods
//
//  Created by Xu Peng on 2017/5/17.
//
//

#import "EUIViewMakerHelper.h"
#import "EUIUtilities.h"

NS_ASSUME_NONNULL_BEGIN

@interface EUIViewMakerHelper (UILabel)

EUI_MakerHelper_Head_Method(NSString *, text, label_text)
EUI_MakerHelper_Head_Method(UIFont *, font, label_font)
EUI_MakerHelper_Head_Method(UIColor *, textColor, label_textColor)
EUI_MakerHelper_Head_Method(UIColor *, shadowColor, label_shadowColor)
EUI_MakerHelper_Head_Method(CGSize, shadowOffset, label_shadowOffset)
EUI_MakerHelper_Head_Method(NSTextAlignment, textAlignment, label_textAlignment)
EUI_MakerHelper_Head_Method(NSLineBreakMode, lineBreakMode, label_lineBreakMode)
EUI_MakerHelper_Head_Method(NSAttributedString *, attributedText, label_attributedText)
EUI_MakerHelper_Head_Method(UIColor *, highlightedTextColor, label_highlightedTextColor)
EUI_MakerHelper_Head_Method(BOOL, highlighted, label_highlighted)
EUI_MakerHelper_Head_Method(BOOL, enabled, label_enabled)
EUI_MakerHelper_Head_Method(NSInteger, numberOfLines, label_numberOfLines)
EUI_MakerHelper_Head_Method(BOOL, adjustsFontSizeToFitWidth, label_adjustsFontSizeToFitWidth)
EUI_MakerHelper_Head_Method(UIBaselineAdjustment, baselineAdjustment, label_baselineAdjustment)


@end

NS_ASSUME_NONNULL_END
