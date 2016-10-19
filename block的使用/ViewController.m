//
//  ViewController.m
//  block的使用
//
//  Created by Z先生 on 16/10/19.
//  Copyright © 2016年 Z先生. All rights reserved.
//

#import "ViewController.h"
#import "BlockViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //1.block的声明
    // 返回值类型(^block变量名)(参数)
    void (^block)(int);
    
    
    //2.定义
      //1.方式一
    void (^block1)() = ^(){
        
    };
    
    //调用就会执行代码块
    block1();
    
    
    
    //方式二
        //1.block如果没有参数可以省略括号
    void (^block2)() = ^{
        
    };
    
    //方式三
        //block中返回值可以省略
    int (^block3)() = ^int{
        return 3;
    };
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)button:(id)sender {
    BlockViewController *my = [[BlockViewController alloc] init];
   

    my.sendData = ^(NSString *a){
        self.label.text = a;
    };
    
    [self presentViewController:my animated:NO completion:nil];
}

@end
