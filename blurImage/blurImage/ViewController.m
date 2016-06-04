//
//  ViewController.m
//  blurImage
//
//  Created by 李根 on 16/6/4.
//  Copyright © 2016年 ligen. All rights reserved.
//

#import "ViewController.h"
#import "ScanViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    [self.view addSubview:view];
    view.backgroundColor = [UIColor orangeColor];
    
//    UIImage *image = [view convertViewToImage];
    /*
    UIImageView *imageview = [[UIImageView alloc] initWithFrame:CGRectMake(100, 300, 100, 100)];
    [self.view addSubview:imageview];
    imageview.image = [view updateBLur];
    */
    
    
    UIButton *scanBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:scanBtn];
    scanBtn.frame = CGRectMake(200, 100, 50, 30);
    scanBtn.backgroundColor = [UIColor lightGrayColor];
    [scanBtn setTitle:@"scan" forState:UIControlStateNormal];
    [scanBtn addTarget:self action:@selector(scan:) forControlEvents:UIControlEventTouchUpInside];
    
    
}

- (void)scan:(id)sender {
    ScanViewController *scanVC = [[ScanViewController alloc] init];
    [self presentViewController:scanVC animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
