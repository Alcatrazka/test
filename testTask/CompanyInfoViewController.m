//
//  CompanyInfoViewController.m
//  testTask
//
//  Created by Admin on 12.05.15.
//  Copyright (c) 2015 Stanislav Grinberg. All rights reserved.
//

#import "CompanyInfoViewController.h"

@interface CompanyInfoViewController ()

@end

@implementation CompanyInfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)closeAction:(id)sender {

    [self dismissViewControllerAnimated:YES completion:nil];
    
}

@end
