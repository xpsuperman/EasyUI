//
//  EUIUTilities.h
//  Pods
//
//  Created by Xu Peng on 2017/5/15.
//
//

#ifndef EUIUtilities_h
#define EUIUtilities_h

#ifndef weakify
    #if __has_feature(objc_arc)
        #define weakify(object) \
        _Pragma("clang diagnostic push") \
        _Pragma("clang diagnostic ignored \"-Wshadow\"") \
        try{} @finally{} {} __weak __typeof__(object) weak##_##object = object; \
        _Pragma("clang diagnostic pop")
    #else
        #define weakify(object) \
        _Pragma("clang diagnostic push") \
        _Pragma("clang diagnostic ignored \"-Wshadow\"") \
        try{} @finally{} {} __block __typeof__(object) block##_##object = object;   \
        _Pragma("clang diagnostic pop")
    #endif
#endif

#ifndef strongify
    #if __has_feature(objc_arc)
        #define strongify(object)   \
        _Pragma("clang diagnostic push") \
        _Pragma("clang diagnostic ignored \"-Wshadow\"") \
        try{} @finally{} __typeof__(object) object = weak##_##object;   \
        _Pragma("clang diagnostic pop")
    #else
        #define strongify(object)   \
        _Pragma("clang diagnostic push") \
        _Pragma("clang diagnostic ignored \"-Wshadow\"") \
        try{} @finally{} __typeof__(object) object = block##_##object;  \
        _Pragma("clang diagnostic pop")
    #endif
#endif

#define EUI_MakerHelper_Head_Method(type, name, blockName)   - (EUIViewMakerHelper * (^)(type name))blockName;

#define EUI_MakerHelper_Source_Assert_Method(class, type, name, blockName)  \
- (EUIViewMakerHelper * (^)(type name))blockName     \
{ \
    NSAssert(NO, @"EUIViewmakerHelper wrong path: %@-%@", @#class, @#blockName); \
    return nil; \
}

#endif /* EUIUtilities_h */
