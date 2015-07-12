//
//  ViewController.m
//  ColorsOfHappiness
//
//  Created by Admin on 12/7/15.
//  Copyright (c) 2015 Clarence. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITableViewDelegate,UITableViewDataSource>

@property NSArray *colorsArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    UIColor *red = [UIColor redColor];
    UIColor *green = [UIColor greenColor];
    UIColor *yellow = [UIColor yellowColor];
    UIColor *blue = [UIColor blueColor];
    UIColor *brown = [UIColor brownColor];
    
    self.colorsArray = @[red, green, yellow, blue, brown];


}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.colorsArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyCell" forIndexPath:indexPath];

//    cell.textLabel.text = [NSString stringWithFormat:@"Row %li", indexPath.row];
    
    cell.backgroundColor = [self.colorsArray objectAtIndex:indexPath.row];
    
//    if(indexPath.row == 0){
//    
//    cell.backgroundColor = [UIColor redColor];
//    
//    } else if (indexPath.row == 1){
//        cell.backgroundColor = [UIColor greenColor];
//    
//    } else if (indexPath.row == 2){
//        cell.backgroundColor = [UIColor yellowColor];
//    
//    } else {
//        cell.backgroundColor = [UIColor blueColor];
//    }
    
    
    return cell;

}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
