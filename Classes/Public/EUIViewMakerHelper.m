//
//  EUIViewMakerHelper.m
//  Pods
//
//  Created by Xu Peng on 2017/5/17.
//
//

#import "EUIViewMakerHelper.h"
#import "EUIViewMakerProtocol.h"
#import "EUIUtilities.h"
#import "EUIViewMaker.h"
#import "EUILabelMaker.h"
#import "EUITextFieldMaker.h"
#import "EUIControlMaker.h"

NS_ASSUME_NONNULL_BEGIN

#define EUIViewHelper           self.eView

@interface EUIViewMakerHelper () <EUIViewMakerProtocol>

@end


@implementation EUIViewMakerHelper

@synthesize eView = _eView;

+ (EUIViewMakerHelper *)viewMakerWithType:(EUIViewMakerType)type
{
    switch (type) {
        case EUITypeView:
            return [EUIViewMaker new];
            break;
        case EUITypeLabel:
            return [EUILabelMaker new];
            break;
        case EUITypeTextField:
            return [EUITextFieldMaker new];
            break;
        case EUITypeControl:
            return [EUIControlMaker new];
            break;
    }
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _eView = [[UIView alloc] init];
        
        @weakify(self)
        _toSuperView = ^void (UIView *superView) {
            @strongify(self)
            [superView addSubview:EUIViewHelper];
        };
    }
    return self;
}


- (instancetype (^)())targetView
{
    @weakify(self);
    return ^ () {
        @strongify(self);
        return EUIViewHelper;
    };
}

@end

NS_ASSUME_NONNULL_END
