//
//  ViewController.m
//  EasyUI
//
//  Created by Xu Peng on 2017/5/12.
//  Copyright © 2017年 imeituan. All rights reserved.
//

#import "ViewController.h"
#import <EasyUI/EasyUI.h>


#define SCREEN_WIDTH    [UIScreen mainScreen].bounds.size.width
#define Origin(X)       (SCREEN_WIDTH - X) / 2

@interface ViewController ()

@end



@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    UILabel *label = Alloc(EUITypeLabel).frame(CGRectMake(50, 5, 200, 80)).label_text(@"xpsuperman").label_font([UIFont systemFontOfSize:16.0f]).label_shadowColor([UIColor blackColor]).label_shadowOffset(CGSizeMake(0, 1)).label_lineBreakMode(NSLineBreakByWordWrapping).label_attributedText([[NSAttributedString alloc] initWithString:@"Hello World，voidmain sadasdqduqdas89dqwd asdqwdasdas asdjqwdasd0qsdas8d a "]).label_highlightedTextColor([UIColor redColor]).label_highlighted(YES).label_enabled(YES).label_numberOfLines(2).label_adjustsFontSizeToFitWidth(YES).label_baselineAdjustment(UIBaselineAdjustmentAlignBaselines).backgroundColor([UIColor blackColor]).label_textAlignment(NSTextAlignmentCenter).label_textColor([UIColor whiteColor]).targetView();
    Alloc(EUITypeView).frame(CGRectMake((SCREEN_WIDTH - 300) / 2, 100, 300, 90)).bounds(CGRectMake(0, 0, 300, 90)).size(CGSizeMake(300, 90)).userInteractionEnabled(YES).center(CGPointMake(self.view.center.x, self.view.center.y - 250)).clipsToBounds(YES).masksToBounds(YES).borderColor([UIColor blueColor]).borderWidth(1).cornerRadius(5).backgroundColor([UIColor blueColor]).addSubview(label).toSuperView(self.view);
    
    Alloc(EUITypeTextField).frame(CGRectMake(Origin(100), 160, 100, 20)).placeholder(@"asdsad").toSuperView(self.view);
    
    Alloc(EUITypeControl).frame(CGRectMake(Origin(100), 200, 100, 30)).backgroundColor([UIColor orangeColor]).control_enabled(YES).control_selected(NO).control_highlighted(NO).control_contentVerticalAlignment(UIControlContentVerticalAlignmentCenter).control_contentHorizontalAlignment(UIControlContentHorizontalAlignmentCenter).control_event(^(id sender) {
        if ([sender isKindOfClass:[UIControl class]]) {
            NSLog(@"responder action block");
        }
    }, UIControlEventTouchUpInside).toSuperView(self.view);
}


@end
