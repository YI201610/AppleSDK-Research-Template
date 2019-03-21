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

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
