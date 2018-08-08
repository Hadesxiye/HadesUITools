//
//  HadesUITools.h
//  HadesUITools
//
//  Created by 王浩祯 on 2018/8/7.
//  Copyright © 2018年 王浩祯. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface HadesUITools : NSObject

/**
 一键返回UIButton简易版
 Streamlined method
 */
+(UIButton *)buttonInitWithTitle:(NSString *)btn_title frame:(CGRect)btn_frame action:(SEL)selector forControlEvents:(UIControlEvents)btn_event;
/**
 常规设置
 normal method
 */
+(UIButton *)buttonInitWithTitle:(NSString *)btn_title frame:(CGRect)btn_frame titleColor:(UIColor *)btn_color backgroundColor:(UIColor *)btn_backgroundColor action:(nullable SEL)selector forControlEvents:(UIControlEvents)btn_event;

/**
 一键返回button全部功能
 Complete method
 */
+(UIButton *)buttonInitWithTitle:(NSString *)btn_title titleColor:(nullable UIColor * )btn_titleColor frame:(CGRect)btn_frame backgroundColor:(nullable UIColor *)btn_backgroundColor backgroundImage:(nullable UIImage *)btn_backgroundImage forState:(UIControlState)btn_state target:(nullable id)btn_target action:(nullable SEL)selector forControlEvents:(UIControlEvents)btn_event;

/**
 一键返回UIlabel简易版
 Streamlined method
 */
+(UILabel *)labelInitWithFrame:(CGRect)lab_frame text:(NSString *)lab_text;

/**
 常规设置
 normal method
 */
+(UILabel *)labelInitWithFrame:(CGRect)lab_frame text:(NSString *)lab_text font:(nullable UIFont *)lab_font textAlignment:(NSTextAlignment)lab_alignment;

/**
 全部设置
 Complete method
 */
+(UILabel *)labelInitWithFrame:(CGRect)lab_frame text:(NSString *)lab_text font:(nullable UIFont *)lab_font textAlignment:(NSTextAlignment)lab_alignment textColor:(nullable UIColor *)lab_textColor background:(nullable UIColor *)lab_backgroundColor;


/**
 超级addsubview
 dictionary_key:@"UIButton",@"UILabel",@"UIView",@"UITextView",@"UITextField",@"UIImageView"
 dictionary_value:NSArray
 super addsubview
 */
+(void)HadesAddsubviewWithDictionary:(NSDictionary *)dictionary superView:(UIView *)superView;

@end

NS_ASSUME_NONNULL_END
