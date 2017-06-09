//
//  EUILabelMaker.m
//  Pods
//
//  Created by Xu Peng on 2017/5/15.
//
//

#import "EUILabelMaker.h"
#import "EUIUtilities.h"
#import "EUIViewMakerProtocol.h"

#define EUILabel        ((UILabel *)self.eView)

NS_ASSUME_NONNULL_BEGIN

@interface EUILabelMaker () <EUIViewMakerProtocol>

@end

@implementation EUILabelMaker

@synthesize eView = _eView;

- (instancetype)init
{
    self = [super init];
    if (self) {
        _eView = [[UILabel alloc] init];
    }
    return self;
}

- (EUIViewMakerHelper * (^)(NSString *text))label_text
{
    @weakify(self);
    return ^EUIViewMakerHelper *(NSString *text) {
        @strongify(self);
        EUILabel.text = text;
        return self;
    };
}

- (EUIViewMakerHelper * (^)(UIFont *font))label_font
{
    @weakify(self);
    return ^EUIViewMakerHelper *(UIFont *font) {
        @strongify(self);
        EUILabel.font = font;
        return self;
    };
}

- (EUIViewMakerHelper * (^)(UIColor *textColor))label_textColor
{
    @weakify(self);
    return ^EUIViewMakerHelper *(UIColor *textColor) {
        @strongify(self);
        EUILabel.textColor = textColor;
        return self;
    };
}

- (EUIViewMakerHelper * (^)(UIColor *shadowColor))label_shadowColor
{
    @weakify(self);
    return ^EUIViewMakerHelper *(UIColor *shadowColor) {
        @strongify(self);
        EUILabel.shadowColor = shadowColor;
        return self;
    };
}

- (EUIViewMakerHelper * (^)(CGSize shadowOffset))label_shadowOffset
{
    @weakify(self);
    return ^EUIViewMakerHelper *(CGSize shadowOffset) {
        @strongify(self);
        EUILabel.shadowOffset = shadowOffset;
        return self;
    };
}

- (EUIViewMakerHelper * (^)(NSTextAlignment textAlignment))label_textAlignment
{
    @weakify(self);
    return ^EUIViewMakerHelper *(NSTextAlignment textAlignment) {
        @strongify(self);
        EUILabel.textAlignment = textAlignment;
        return self;
    };
}

- (EUIViewMakerHelper * (^)(NSLineBreakMode lineBreakMode))label_lineBreakMode
{
    @weakify(self);
    return ^EUIViewMakerHelper *(NSLineBreakMode lineBreakMode) {
        @strongify(self);
        EUILabel.lineBreakMode = lineBreakMode;
        return self;
    };
}

- (EUIViewMakerHelper * (^)(NSAttributedString *attributedText))label_attributedText
{
    @weakify(self);
    return ^EUIViewMakerHelper *(NSAttributedString *attributedText) {
        @strongify(self);
        EUILabel.attributedText = attributedText;
        return self;
    };
}

- (EUIViewMakerHelper * (^)(UIColor *highlightedTextColor))label_highlightedTextColor
{
    @weakify(self);
    return ^EUIViewMakerHelper *(UIColor *highlightedTextColor) {
        @strongify(self);
        EUILabel.highlightedTextColor = highlightedTextColor;
        return self;
    };
}

- (EUIViewMakerHelper * (^)(BOOL highlighted))label_highlighted
{
    @weakify(self);
    return ^EUIViewMakerHelper *(BOOL highlighted) {
        @strongify(self);
        EUILabel.highlighted = highlighted;
        return self;
    };
}

- (EUIViewMakerHelper * (^)(BOOL enabled))label_enabled
{
    @weakify(self);
    return ^EUIViewMakerHelper *(BOOL enabled) {
        @strongify(self);
        EUILabel.enabled = enabled;
        return self;
    };
}

- (EUIViewMakerHelper * (^)(NSInteger numberOfLines))label_numberOfLines
{
    @weakify(self);
    return ^EUIViewMakerHelper *(NSInteger numberOfLines) {
        @strongify(self);
        EUILabel.numberOfLines = numberOfLines;
        return self;
    };
}

- (EUIViewMakerHelper * (^)(BOOL adjustsFontSizeToFitWidth))label_adjustsFontSizeToFitWidth
{
    @weakify(self);
    return ^EUIViewMakerHelper *(BOOL adjustsFontSizeToFitWidth) {
        @strongify(self);
        EUILabel.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth;
        return self;
    };
}

- (EUIViewMakerHelper * (^)(UIBaselineAdjustment baselineAdjustment))label_baselineAdjustment
{
    @weakify(self);
    return ^EUIViewMakerHelper *(UIBaselineAdjustment baselineAdjustment) {
        @strongify(self);
        EUILabel.baselineAdjustment = baselineAdjustment;
        return self;
    };
}

@end

NS_ASSUME_NONNULL_END
