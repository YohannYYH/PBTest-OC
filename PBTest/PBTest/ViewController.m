//
//  ViewController.m
//  PBTest
//
//  Created by nongfadai on 2018/8/8.
//  Copyright © 2018年 nongfadai. All rights reserved.
//

#import "ViewController.h"
#import "Person.pbobjc.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Person *person1 = [[Person alloc] init];
    person1.name = @"小王";
    person1.level = 5;
    person1.icon = @"12.jpg";
    NSData *data = person1.data;
    NSLog(@"========%@", data);
    NSError *error = nil;
    Person *persion2 = [Person parseFromData:data error:&error];
    NSLog(@"=========%@", persion2.description);
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
