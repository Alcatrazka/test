//
//  DetailViewController.m
//  testTask
//
//  Created by Admin on 12.05.15.
//  Copyright (c) 2015 Stanislav Grinberg. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.labelName.text = self.name;
    self.textView.text = self.productDescription;
    self.imageView.image = [UIImage imageNamed:self.picName];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

//// In a storyboard-based application, you will often want to do a little preparation before navigation
//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//    // Get the new view controller using [segue destinationViewController].
//    // Pass the selected object to the new view controller.
//    [[segue destinationViewController] setTitle:@"test"];
//}


@end
