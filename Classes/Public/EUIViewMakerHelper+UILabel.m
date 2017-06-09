//
//  EUIViewMakerHelper+UILabel.m
//  Pods
//
//  Created by Xu Peng on 2017/5/17.
//
//

#import "EUIViewMakerHelper+UILabel.h"

NS_ASSUME_NONNULL_BEGIN

@implementation EUIViewMakerHelper (UILabel)

EUI_MakerHelper_Source_Assert_Method(UILabel, NSString *, text, label_text)
EUI_MakerHelper_Source_Assert_Method(UILabel, UIFont *, font, label_font)
EUI_MakerHelper_Source_Assert_Method(UILabel, UIColor *, textColor, label_textColor)
EUI_MakerHelper_Source_Assert_Method(UILabel, UIColor *, shadowColor, label_shadowColor)
EUI_MakerHelper_Source_Assert_Method(UILabel, CGSize, shadowOffset, label_shadowOffset)
EUI_MakerHelper_Source_Assert_Method(UILabel, NSTextAlignment, textAlignment, label_textAlignment)
EUI_MakerHelper_Source_Assert_Method(UILabel, NSLineBreakMode, lineBreakMode, label_lineBreakMode)
EUI_MakerHelper_Source_Assert_Method(UILabel, NSAttributedString *, attributedText, label_attributedText)
EUI_MakerHelper_Source_Assert_Method(UILabel, UIColor *, highlightedTextColor, label_highlightedTextColor)
EUI_MakerHelper_Source_Assert_Method(UILabel, BOOL, highlighted, label_highlighted)
EUI_MakerHelper_Source_Assert_Method(UILabel, BOOL, enabled, label_enabled)
EUI_MakerHelper_Source_Assert_Method(UILabel, NSInteger, numberOfLines, label_numberOfLines)
EUI_MakerHelper_Source_Assert_Method(UILabel, BOOL, adjustsFontSizeToFitWidth, label_adjustsFontSizeToFitWidth)
EUI_MakerHelper_Source_Assert_Method(UILabel, UIBaselineAdjustment, baselineAdjustment, label_baselineAdjustment)

@end

NS_ASSUME_NONNULL_END
