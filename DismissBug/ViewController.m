//
//  ViewController.m
//  DismissBug
//
//  Created by Herman Chan on 2014-09-26.
//  Copyright (c) 2014 MyOrg. All rights reserved.
//

#import "ViewController.h"
#import "ModalViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  
  UIButton *b = [UIButton buttonWithType:UIButtonTypeContactAdd];
  [b setTitle:@"Click me" forState:UIControlStateNormal];
  b.frame = CGRectMake(0, 100, 100, 100);
  [b addTarget:self action:@selector(pressed) forControlEvents:UIControlEventTouchUpInside];
  [self.view addSubview:b];
}

- (void) pressed {
  NSLog(@"pressed");
  ModalViewController *c = [[ModalViewController alloc] initWithNibName:nil bundle:nil];
  UINavigationController *n = [[UINavigationController alloc] initWithRootViewController:c];
  [self presentViewController:n animated:YES completion:nil];
}

@end
