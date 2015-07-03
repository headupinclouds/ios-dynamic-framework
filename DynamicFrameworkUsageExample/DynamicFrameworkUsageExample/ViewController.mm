//
//  ViewController.m
//  DynamicFrameworkUsageExample
//
//  Created by Ruslan Baratov on 03/07/15.
//  Copyright (c) 2015 Ruslan Baratov. All rights reserved.
//

#import "ViewController.h"

#include <string>

std::string bar();

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *button;
@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.

  NSString* nsstring = [NSString stringWithUTF8String:bar().c_str()];
  [_button setTitle:nsstring forState:UIControlStateNormal];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
