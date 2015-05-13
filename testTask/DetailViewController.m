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


@end
