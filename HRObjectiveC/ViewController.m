//
//  ViewController.m
//  HRObjectiveC
//
//  Created by developer1 Jeyabalaji on 11/9/18.
//  Copyright © 2018 Ant and Buffalo. All rights reserved.
//

#import "ViewController.h"
#import "SimpleTextEditor.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    SimpleTextEditor *simple = [[SimpleTextEditor alloc] init];
    
    [simple performOperations];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
