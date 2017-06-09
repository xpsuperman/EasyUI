//
//  EUITextFieldMaker.m
//  Pods
//
//  Created by Xu Peng on 2017/5/22.
//
//

#import "EUITextFieldMaker.h"
#import "EUIUtilities.h"
#import "EUIViewMakerProtocol.h"

NS_ASSUME_NONNULL_BEGIN

#define EUITextField            ((UITextField *)self.eView)

@interface EUITextFieldMaker () <EUIViewMakerProtocol>

@end

@implementation EUITextFieldMaker

@synthesize eView = _eView;

- (instancetype)init
{
    self = [super init];
    if (self) {
        _eView = [[UITextField alloc] init];
    }
    return self;
}

- (EUIViewMakerHelper * (^)(NSString *placeholder))placeholder
{
    @weakify(self);
    return ^EUIViewMakerHelper *(NSString *placeholder) {
        @strongify(self);
        EUITextField.placeholder = placeholder;
        return self;
    };
}

@end

NS_ASSUME_NONNULL_END
