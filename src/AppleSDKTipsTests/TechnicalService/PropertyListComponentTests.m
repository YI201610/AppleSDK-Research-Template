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
    
    NSString *_plistPath;
}

@end

@implementation PropertyListComponentTests

- (void)setUp {
    _component = [PropertyListComponent new];
    
    _plistPath = [[NSBundle mainBundle] pathForResource:@"topMenu" ofType:@"plist"];

}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}


/**
 plistを読み取ることができる
 */
- (void)testComponentCanReadPlist {

    id plist = [PropertyListComponent propertyListArrayWithPlistPath:_plistPath];
    XCTAssertNotNil(plist, @"plistが取得できない");
}


/**
 plistを書き込むことができる
 */
- (void)testComponentCanWritePlist {
    
    XCTAssertTrue(NO, @"plistを書き込むことができない");
}

/**
 plistを、/Library/Application Support/ 配下に新規に保存することができる
 */
- (void)testComponentCanWritePlistToApplicationSupportDirectory {
    
    XCTAssertTrue(NO, @"plistをApplicationSupportに書き込むことができない");
}

/**
 plistを、/Library/Caches/ 配下に新規に保存することができる
 */
- (void)testComponentCanWritePlistToCachesDirectory {
    
    XCTAssertTrue(NO, @"plistをCaches書き込むことができない");
}

/**
 plistを、Documents 配下に新規に保存することができる
 */
- (void)testComponentCanWritePlistToDocumentsDirectory {
    
    XCTAssertTrue(NO, @"plistをDocuments書き込むことができない");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
