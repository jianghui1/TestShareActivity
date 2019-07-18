//
//  ViewController.m
//  TestShareActivity
//
//  Created by ys on 2019/7/18.
//  Copyright © 2019 mg. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imgView1;
@property (weak, nonatomic) IBOutlet UIImageView *imgView2;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)shareAction:(id)sender {
    
    UIImage *img1 = [UIImage imageNamed:@"11111.jpg"];
    UIImage *img2 = [UIImage imageNamed:@"11111.png"];
    NSArray *items = @[img1, img2];
    
    UIActivityViewController *activityCtl = [[UIActivityViewController alloc] initWithActivityItems:items
                                                                              applicationActivities:nil];
    activityCtl.completionWithItemsHandler = ^(UIActivityType  _Nullable activityType, BOOL completed, NSArray * _Nullable returnedItems, NSError * _Nullable activityError) {
    };
    
    [self presentViewController:activityCtl animated:YES completion:nil];
    
    
}

@end
