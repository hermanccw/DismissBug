//
//  ModalViewController.m
//  DismissBug
//
//  Created by Herman Chan on 2014-09-26.
//  Copyright (c) 2014 MyOrg. All rights reserved.
//

#import "ModalViewController.h"

@interface ModalViewController ()
@property (nonatomic, strong) UITextView *textView;
@end

@implementation ModalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  self.title = @"Modal";
  UIBarButtonItem *leftButton = [[UIBarButtonItem alloc] initWithTitle:NSLocalizedString(@"Cancel", nil) style:UIBarButtonItemStylePlain target:self action:@selector(cancelPressed)];
  self.navigationItem.leftBarButtonItem = leftButton;
  
  self.textView = [[UITextView alloc] initWithFrame:CGRectMake(10, 200, 100, 100)];
  self.textView.backgroundColor = [UIColor whiteColor];
  
  [self.view addSubview:self.textView];
  
}

- (void)viewDidAppear:(BOOL)animated {
  [super viewDidAppear:animated];
  [self.textView becomeFirstResponder];
  
}

- (void) cancelPressed {
  [self dismissViewControllerAnimated:YES completion:nil];
}

@end
