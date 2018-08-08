//
//  ViewController.m
//  HadesUITools
//
//  Created by 王浩祯 on 2018/8/7.
//  Copyright © 2018年 王浩祯. All rights reserved.
//

#import "ViewController.h"
#import "HadesUITools/HadesUITools.h"
#define sc_width self.view.bounds.size.width
#define sc_heigth self.view.bounds.size.heigth
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self createUI];
}

-(void)createUI{
    UIButton* btn1 = [HadesUITools buttonInitWithTitle:@"简易版button" frame:CGRectMake(10, 10, sc_width/2 - 20, 50) action:@selector(btn_action:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton* btn2 = [HadesUITools buttonInitWithTitle:@"常规版button" frame:CGRectMake(10, 70, sc_width/2 - 20, 50) titleColor:[UIColor redColor] backgroundColor:[UIColor purpleColor] action:@selector(btn_action:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton* btn3 = [HadesUITools buttonInitWithTitle:@"完整版button" titleColor:[UIColor greenColor] frame:CGRectMake(10, 130, sc_width/2 - 20, 50) backgroundColor:[UIColor orangeColor] backgroundImage:[UIImage imageNamed:@""] forState:UIControlStateNormal target:self action:@selector(btn_action:) forControlEvents:UIControlEventTouchUpInside];
    
    UILabel* lab1 = [HadesUITools labelInitWithFrame:CGRectMake(sc_width/2, 10, sc_width/2 - 20, 50) text:@"简易版label"];
    
    UILabel* lab2 = [HadesUITools labelInitWithFrame:CGRectMake(sc_width/2, 70, sc_width/2 - 20, 50) text:@"常规版label" font:[UIFont systemFontOfSize:10] textAlignment:NSTextAlignmentCenter];
    
    UILabel* lab3 = [HadesUITools labelInitWithFrame:CGRectMake(sc_width/2, 130, sc_width/2 - 20, 50) text:@"完整版label" font:[UIFont systemFontOfSize:5] textAlignment:NSTextAlignmentRight textColor:[UIColor orangeColor] background:[UIColor blueColor]];
    

    NSDictionary* dic = @{
                          @"UIButton":[NSArray arrayWithObjects:btn1,btn2,btn3, nil],
                          @"UILabel":[NSArray arrayWithObjects:lab1,lab2,lab3, nil]
                          };
    
    [HadesUITools HadesAddsubviewWithDictionary:dic superView:self.view];
    
    
}

-(void)btn_action:(UIButton *)btn{
    UIButton* temp = btn;
    NSLog(@"%@",temp.titleLabel.text);
}

@end
