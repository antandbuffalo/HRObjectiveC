//
//  SimpleTextEditor.m
//  HRObjectiveC
//
//  Created by developer1 Jeyabalaji on 11/9/18.
//  Copyright © 2018 Ant and Buffalo. All rights reserved.
//

#import "SimpleTextEditor.h"

@implementation SimpleTextEditor

NSMutableArray *myStack;

-(void)performOperations {
    [self initStack];
    //let noOfOperations = Int(readLine(strippingNewline: true)!)!
    //int noOfOperations = 650476;
    NSArray *arr1 = [NSArray arrayWithObjects:@"1", @"abc", nil];
    NSArray *arr2 = [NSArray arrayWithObjects:@"3", @"3", nil];
    NSArray *arr3 = [NSArray arrayWithObjects:@"2", @"3", nil];
    NSArray *arr4 = [NSArray arrayWithObjects:@"1", @"xy", nil];
    NSArray *arr5 = [NSArray arrayWithObjects:@"3", @"2", nil];
    NSArray *arr6 = [NSArray arrayWithObjects:@"4", nil];
    NSArray *arr7 = [NSArray arrayWithObjects:@"4", nil];
    NSArray *arr8 = [NSArray arrayWithObjects:@"3", @"1", nil];
    
    NSArray *allOperations = [NSArray arrayWithObjects:arr1, arr2, arr3, arr4, arr5, arr6, arr7, arr8, nil];

    int i = 0;
    for(i=0; i < allOperations.count; i++) {
        //var stringArray = readLine(strippingNewline: true)!.split {$0 == " "}.map (String.init)
        NSArray *stringArray = allOperations[i];
        NSString *opType = @"", *opValue = @"";
        if(stringArray.count == 2) {
            opType = stringArray[0];
            opValue = stringArray[1];
        }
        else {
            opType = stringArray[0];
            opValue = @"";
        }
        [self doOperations:opType and:opValue];
    }
}

-(void)initStack {
    myStack = [[NSMutableArray alloc] init];
}

-(void)append1: (NSString *)value {
    NSString *top = myStack.lastObject;
    if(top == nil) {
        [myStack addObject:value];
    }
    else {
        top = [top stringByAppendingString:value];
        [myStack addObject:top];
    }
}

-(void)delete1: (int)length{
    NSString *top = myStack.lastObject;
    if(top == nil) {
        return;
    }
    else {
        top = [top substringToIndex:length];
    }
    [myStack addObject:top];
}

-(void)print1:(int)index {
    NSString *top = myStack.lastObject;
    if(top == nil) {
        return;
    }
    else {
        NSLog(@"%c", [top characterAtIndex:index]);
    }
}
-(void)undo1 {
    [myStack removeLastObject];
}

-(void) doOperations: (NSString *)operationType and: (NSString *)operationValue {
    if([operationType isEqualToString:@"1"]) {
        [self append1:operationValue];
    }
    else if([operationType isEqualToString:@"2"]) {
        [self delete1:[operationValue integerValue]];
    }
    else if([operationType isEqualToString:@"3"]) {
        int index = [operationValue integerValue] - 1;
        [self print1: index];
    }
    else if([operationType isEqualToString:@"4"]) {
        [self undo1];
    }
}

@end
