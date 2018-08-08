//
//  HadesUITools.m
//  HadesUITools
//
//  Created by 王浩祯 on 2018/8/7.
//  Copyright © 2018年 王浩祯. All rights reserved.
//

#import "HadesUITools.h"

@implementation HadesUITools

NS_ASSUME_NONNULL_BEGIN

#pragma mark - ❀==============❂ button function ❂==============❀
+(UIButton *)buttonInitWithTitle:(NSString *)btn_title titleColor:(nullable UIColor * )btn_titleColor frame:(CGRect)btn_frame backgroundColor:(nullable UIColor *)btn_backgroundColor backgroundImage:(nullable UIImage *)btn_backgroundImage forState:(UIControlState)btn_state target:(nullable id)btn_target action:(nullable SEL)selector forControlEvents:(UIControlEvents)btn_event {
    
    UIButton* button = [UIButton new];

    [button setTitle:btn_title forState:btn_state];
    button.frame = btn_frame;
    [button setTitleColor:btn_titleColor forState:btn_state];
    [button setBackgroundColor:btn_backgroundColor];
    [button setBackgroundImage:btn_backgroundImage forState:btn_state];
    [button addTarget:btn_target action:selector forControlEvents:btn_event];
    
    return button;
}

+(UIButton *)buttonInitWithTitle:(NSString *)btn_title frame:(CGRect)btn_frame titleColor:(UIColor *)btn_color backgroundColor:(UIColor *)btn_backgroundColor action:(nullable SEL)selector forControlEvents:(UIControlEvents)btn_event{
    UIButton* btn = [self buttonInitWithTitle:btn_title titleColor:btn_color frame:btn_frame backgroundColor:btn_backgroundColor backgroundImage:nil forState:UIControlStateNormal target:nil action:selector forControlEvents:btn_event];
    return btn;
}

+(UIButton *)buttonInitWithTitle:(NSString *)btn_title frame:(CGRect)btn_frame action:(SEL)selector forControlEvents:(UIControlEvents)btn_event{
    UIButton* btn = [self buttonInitWithTitle:btn_title titleColor:[UIColor blackColor] frame:btn_frame backgroundColor:[UIColor whiteColor] backgroundImage:nil forState:UIControlStateNormal target:nil action:selector forControlEvents:btn_event];
    return btn;
}

#pragma mark - ❀==============❂ label function ❂==============❀
+(UILabel *)labelInitWithFrame:(CGRect)lab_frame text:(NSString *)lab_text{
    UILabel* lab = [self labelInitWithFrame:lab_frame text:lab_text font:nil textAlignment:NSTextAlignmentLeft textColor:nil background:nil];
    return lab;
}

+(UILabel *)labelInitWithFrame:(CGRect)lab_frame text:(NSString *)lab_text font:(nullable UIFont *)lab_font textAlignment:(NSTextAlignment)lab_alignment{
    UILabel* lab = [self labelInitWithFrame:lab_frame text:lab_text font:lab_font textAlignment:lab_alignment textColor:nil background:nil];
    return lab;
}

+(UILabel *)labelInitWithFrame:(CGRect)lab_frame text:(NSString *)lab_text font:(nullable UIFont *)lab_font textAlignment:(NSTextAlignment)lab_alignment textColor:(nullable UIColor *)lab_textColor background:(nullable UIColor *)lab_backgroundColor{
    UILabel* lab = [UILabel new];
    lab.frame = lab_frame;
    lab.text = lab_text;
    lab.font = lab_font;
    lab.textAlignment = lab_alignment;
    lab.textColor = lab_textColor;
    lab.backgroundColor = lab_backgroundColor;
    return lab;
}
#pragma mark - ❀==============❂ super addsubview ❂==============❀
+(void)HadesAddsubviewWithDictionary:(NSDictionary *)dictionary superView:(UIView *)superView{
    
    NSArray* btn_arr = [dictionary objectForKey:@"UIButton"];
    
    NSArray* lab_arr = [dictionary objectForKey:@"UILabel"];
    
    NSArray* view_arr = [dictionary objectForKey:@"UIView"];
    
    NSArray* textfield_arr = [dictionary objectForKey:@"UITextField"];
    
    NSArray* imageview_arr = [dictionary objectForKey:@"UIImageView"];
    
    NSArray* textview_arr = [dictionary objectForKey:@"UITextView"];
    
    for (int i = 0; i < btn_arr.count; i++) {
        
        [superView addSubview:(UIButton *)btn_arr[i]];
    }
    
    for (int i = 0; i < lab_arr.count; i++) {
        
        [superView addSubview:(UILabel *)lab_arr[i]];
    }
    
    for (int i = 0; i < view_arr.count; i++) {
        
        [superView addSubview:(UIView *)view_arr[i]];
    }
    
    for (int i = 0; i < textfield_arr.count; i++) {
        
        [superView addSubview:(UITextField *)textfield_arr[i]];
    }
    
    for (int i = 0; i < imageview_arr.count; i++) {
        
        [superView addSubview:(UIImageView *)imageview_arr[i]];
    }
    
    for (int i = 0; i < textview_arr.count; i++) {
        
        [superView addSubview:(UITextField *)textview_arr[i]];
    }
    
}

NS_ASSUME_NONNULL_END







@end


