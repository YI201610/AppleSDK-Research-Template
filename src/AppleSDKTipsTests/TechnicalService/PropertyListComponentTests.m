//
//  PropertyListComponentTests.m
//  AppleSDKTipsTests
//
//  Copyright © 2019 YI201610. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "PropertyListComponent.h"

@interface PropertyListComponentTests : XCTestCase {

    PropertyListComponent *_component;
}

@end

@implementation PropertyListComponentTests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
    _component = [PropertyListComponent new];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}


/**
 plistを読み取ることができる
 */
- (void)testComponentCanReadPlist {

     NSString* path = [[NSBundle mainBundle] pathForResource:@"topMenu" ofType:@"plist"];
    id plist = [PropertyListComponent propertyListArrayWithPlistPath:path];
    XCTAssertNotNil(plist, @"plistが取得できない");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
