//
//  EUIControlMaker.m
//  Pods
//
//  Created by Xu Peng on 2017/5/25.
//
//

#import "EUIControlMaker.h"
#import "EUIViewMakerProtocol.h"
#import "EUIUtilities.h"
#import <objc/runtime.h>

NS_ASSUME_NONNULL_BEGIN

#define EUIControl          ((UIControl *)self.eView)

static void *EUIControlEventBlockKey = &EUIControlEventBlockKey;
typedef void(^EUIControlEventBlock)(id sender);

@interface EUIControlMaker () <EUIViewMakerProtocol>

@property (nonatomic, copy) EUIControlEventBlock eventBlock;

@end


@implementation EUIControlMaker

@synthesize eView = _eView;


- (instancetype)init
{
    self = [super init];
    if (self) {
        _eView = [[UIControl alloc] init];
    }
    return self;
}

- (EUIViewMakerHelper * (^)(BOOL enabled))control_enabled
{
    @weakify(self);
    return  ^EUIViewMakerHelper *(BOOL enabled) {
        @strongify(self);
        EUIControl.enabled = enabled;
        return self;
    };
}

- (EUIViewMakerHelper * (^)(BOOL selected))control_selected
{
    @weakify(self);
    return  ^EUIViewMakerHelper *(BOOL selected) {
        @strongify(self);
        EUIControl.selected = selected;
        return self;
    };
}

- (EUIViewMakerHelper * (^)(BOOL highlighted))control_highlighted
{
    @weakify(self);
    return  ^EUIViewMakerHelper *(BOOL highlighted) {
        @strongify(self);
        EUIControl.highlighted = highlighted;
        return self;
    };
}

- (EUIViewMakerHelper * (^)(UIControlContentVerticalAlignment contentVerticalAlignment))control_contentVerticalAlignment
{
    @weakify(self);
    return  ^EUIViewMakerHelper *(UIControlContentVerticalAlignment contentVerticalAlignment) {
        @strongify(self);
        EUIControl.contentVerticalAlignment = contentVerticalAlignment;
        return self;
    };
}

- (EUIViewMakerHelper * (^)(UIControlContentHorizontalAlignment contentHorizontalAlignment))control_contentHorizontalAlignment
{
    @weakify(self);
    return  ^EUIViewMakerHelper *(UIControlContentHorizontalAlignment contentHorizontalAlignment) {
        @strongify(self);
        EUIControl.contentHorizontalAlignment = contentHorizontalAlignment;
        return self;
    };
}

- (EUIViewMakerHelper * (^)(void (^actionBlock)(id sender), UIControlEvents controlEvents))control_event
{
    @weakify(self);
    return  ^EUIViewMakerHelper *(void (^actionBlock)(id sender), UIControlEvents controlEvents) {
        @strongify(self);
        self.eventBlock = [actionBlock copy];
        [EUIControl addTarget:self action:@selector(controlAction:) forControlEvents:controlEvents];
        return self;
    };
}

- (void)controlAction:(id)sender
{
    if (self.eventBlock) {
        self.eventBlock(EUIControl);
    }
}

- (EUIControlEventBlock)eventBlock
{
    return objc_getAssociatedObject(self, EUIControlEventBlockKey);
}

- (void)setEventBlock:(EUIControlEventBlock)eventBlock
{
    objc_setAssociatedObject(self, EUIControlEventBlockKey, eventBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

@end

NS_ASSUME_NONNULL_END
