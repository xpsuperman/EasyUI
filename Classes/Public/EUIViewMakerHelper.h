//
//  EUIViewMakerHelper.h
//  Pods
//
//  Created by Xu Peng on 2017/5/17.
//
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, EUIViewMakerType)
{
    EUITypeView = 0,
    EUITypeLabel,
    EUITypeTextField,
    EUITypeControl
};

#define Alloc(makerType) [EUIViewMakerHelper viewMakerWithType:makerType]


@interface EUIViewMakerHelper : NSObject

+ (EUIViewMakerHelper *)viewMakerWithType:(EUIViewMakerType)type;

@property (nonatomic, copy) void (^toSuperView)(UIView *superView);
- (instancetype (^)())targetView;

@end

NS_ASSUME_NONNULL_END
