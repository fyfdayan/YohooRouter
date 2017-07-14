//
//  RouterViewController.m
//  YohooRouter
//
//  Created by 傅雁锋 on 06/02/2017.
//  Copyright (c) 2017 傅雁锋. All rights reserved.
//

#import "RouterViewController.h"

@interface RouterViewController ()

@end

@implementation RouterViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    YohooDataEvent *event = [[YohooDataEvent alloc] initWithEventName:@"testEvent" function:^id(NSDictionary *param) {
        NSLog(@"嘿嘿");
        return @"哈哈哈";
    }];
    
    [[RouterManager getInstance] registerDataEvent:event];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)testEvent:(id)sender {
    id data = [[RouterManager getInstance] getDataByEventName:@"testEvent" withParam:nil];
    NSLog(@"%@", data);
}
@end
