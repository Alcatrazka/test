//
//  DetailViewController.h
//  testTask
//
//  Created by Admin on 12.05.15.
//  Copyright (c) 2015 Stanislav Grinberg. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import "Product.h"

@interface DetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (weak, nonatomic) IBOutlet UILabel *labelName;

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *productDescription;
@property (strong, nonatomic) NSString *picName;


@end
