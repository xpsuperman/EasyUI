//
//  EUIViewMaker.m
//  Pods
//
//  Created by Xu Peng on 2017/5/15.
//
//

#import "EUIViewMaker.h"
#import "EUIUtilities.h"
#import "EUIViewMakerHelper+UIView.h"
#import "EUIViewMakerProtocol.h"

NS_ASSUME_NONNULL_BEGIN

#define EUIView                 self.eView

@interface EUIViewMaker () <EUIViewMakerProtocol>

@end


@implementation EUIViewMaker

@synthesize eView = _eView;

- (instancetype)init
{
    self = [super init];
    if (self) {
        _eView = [[UIView alloc] init];
    }
    return self;
}

- (EUIViewMakerHelper * (^)(CGRect frame))frame
{
    @weakify(self);
    return ^EUIViewMakerHelper *(CGRect frame) {
        @strongify(self);
        EUIView.frame = frame;
        return self;
    };
}

- (EUIViewMakerHelper * (^)(CGRect bounds))bounds
{
    @weakify(self);
    return ^EUIViewMakerHelper *(CGRect bounds) {
        @strongify(self);
        EUIView.bounds = bounds;
        return self;
    };
}

- (EUIViewMakerHelper * (^)(CGSize size))size
{
    @weakify(self);
    return ^EUIViewMakerHelper *(CGSize size) {
        @strongify(self);
        CGRect nframe = EUIView.frame;
        nframe.size = size;
        EUIView.frame = nframe;
        return self;
    };
}

- (EUIViewMakerHelper * (^)(BOOL userInteractionEnabled))userInteractionEnabled
{
    @weakify(self);
    return ^EUIViewMakerHelper *(BOOL userInteractionEnabled) {
        @strongify(self);
        EUIView.userInteractionEnabled = userInteractionEnabled;
        return self;
    };
}

- (EUIViewMakerHelper *(^)(CGPoint center))center
{
    @weakify(self);
    return ^EUIViewMakerHelper *(CGPoint center) {
        @strongify(self);
        EUIView.center = center;
        return self;
    };
}

- (EUIViewMakerHelper * (^)(BOOL clipsToBounds))clipsToBounds
{
    @weakify(self);
    return ^EUIViewMakerHelper *(BOOL clipsToBounds) {
        @strongify(self);
        EUIView.clipsToBounds = clipsToBounds;
        return self;
    };
}

- (EUIViewMakerHelper * (^)(UIColor *backgroundColor))backgroundColor
{
    @weakify(self);
    return ^EUIViewMakerHelper *(UIColor *backgroundColor) {
        @strongify(self);
        EUIView.backgroundColor = backgroundColor;
        return self;
    };
}

- (EUIViewMakerHelper * (^)(BOOL masksToBounds))masksToBounds
{
    @weakify(self);
    return ^EUIViewMakerHelper *(BOOL masksToBounds) {
        @strongify(self);
        EUIView.layer.masksToBounds = masksToBounds;
        return self;
    };
}

- (EUIViewMakerHelper * (^)(UIColor *borderColor))borderColor
{
    @weakify(self);
    return ^EUIViewMakerHelper *(UIColor *borderColor) {
        @strongify(self);
        EUIView.layer.borderColor = borderColor.CGColor;
        return self;
    };
}

- (EUIViewMakerHelper * (^)(CGFloat borderWidth))borderWidth
{
    @weakify(self);
    return ^EUIViewMakerHelper *(CGFloat borderWidth) {
        @strongify(self);
        EUIView.layer.borderWidth = borderWidth;
        return self;
    };
}

- (EUIViewMakerHelper * (^)(CGFloat cornerRadius))cornerRadius
{
    @weakify(self);
    return ^EUIViewMakerHelper *(CGFloat cornerRadius) {
        @strongify(self);
        EUIView.layer.cornerRadius = cornerRadius;
        return self;
    };
}

- (EUIViewMakerHelper * (^)(UIView *subview))addSubview
{
    @weakify(self);
    return ^EUIViewMakerHelper *(UIView *subview) {
        @strongify(self);
        [EUIView addSubview:subview];
        return self;
    };
}

@end

NS_ASSUME_NONNULL_END
