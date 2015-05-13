//
//  ProductsTableViewController.m
//  testTask
//
//  Created by Admin on 12.05.15.
//  Copyright (c) 2015 Stanislav Grinberg. All rights reserved.
//

#import "ProductsTableViewController.h"
#import "DetailViewController.h"
#import "Product.h"
#import "XMLManager.h"

@interface ProductsTableViewController () <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) Product *product;

@end

@implementation ProductsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.content = [XMLManager loadData];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [self.content count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *identifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier forIndexPath:indexPath];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    
    cell.textLabel.text = [[self.content objectAtIndex:indexPath.row] valueForKey:@"productName"];
    
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    Product *product = [Product new];
    product.name = [[self.content objectAtIndex:indexPath.row] valueForKey:@"productName"];
    product.productDescription = [[self.content objectAtIndex:indexPath.row] valueForKey:@"description"];
    product.picName = [[self.content objectAtIndex:indexPath.row] valueForKey:@"pictureName"];;
    
    self.product = product;
    [self performSegueWithIdentifier:@"detail" sender:self];
}


#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    DetailViewController *vc = [segue destinationViewController];

    if ([[segue identifier] isEqualToString:@"detail"]) {

        vc.name = self.product.name;
        vc.productDescription = self.product.productDescription;
        vc.picName = self.product.picName;
        [vc setTitle:@"Описание продукта"];

    }
}

@end
