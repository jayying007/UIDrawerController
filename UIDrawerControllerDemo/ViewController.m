//
//  ViewController.m
//  UIDrawerControllerDemo
//
//  Created by janezhuang on 2022/5/21.
//

#import "ViewController.h"
#import <UIDrawerController/UIDrawerController.h>

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    self.title = @"首页";
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage systemImageNamed:@"square.and.arrow.up"] style:UIBarButtonItemStylePlain target:self action:@selector(showListViewController)];
    
    UITextView *textView = [[UITextView alloc] initWithFrame:CGRectMake(0, 200, self.view.bounds.size.width, 300)];
    textView.text = @"你说把爱渐渐放下会走更远，又何必去改变已错过的时间";
    textView.font = [UIFont systemFontOfSize:20];
    [self.view addSubview:textView];
}

- (void)showListViewController {
    [self.drawerController showLeftViewController];
}
@end
