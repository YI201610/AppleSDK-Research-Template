//
//  TopMenuModelControllerTests.swift
//  AppleSDKTips
//
//

import XCTest

@testable import AppleSDKTips

/**
 TopMenuControllerのテストコード
 */
class TopMenuModelControllerTests: XCTestCase {
    
    var controller: TopMenuModelController?
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    
        let testBundle = Bundle(for: type(of: self))
        let plistPath = testBundle.path(forResource: "topMenuTest", ofType: "plist")
        
        guard let plistName = plistPath else {
            return
        }
        
        controller = TopMenuModelController(plistName: plistName)
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testThatControllerHasMenuSpec() {
        
        guard let model = controller else {
            XCTAssert(false, "model controller作成失敗")
            return
        }
        
        XCTAssertTrue(model.numberOfSection() > 0, "複数のセクションを持つこと")
    }
    
    /*
     - (void)testThatControllerHasMenuSpec {
     XCTAssertTrue([modelController numberOfSection] > 0, @"複数のセクションをもつこと");
     }
     
     - (void) testThatControllerCanReturnSectionKeyString
     {
     NSInteger countOfSection = [modelController numberOfSection];
     XCTAssertGreaterThan(countOfSection, 0, "必ず１つ以上のセクションをもつこと");
     
     for(int i = 0; i < countOfSection; i++){
     NSString* sectionNameString = [modelController sectionNameStringWithIndex:i];
     XCTAssertNotNil(sectionNameString, @"全てのセクションは名称をもつこと");
     }
     }
     
     /*!
     @abstract セクションが保持するアイテム数を返すメソッドがあること
     */
     - (void) testThatControllerCanReturnCountOfItemsInSection
     {
     NSString* sectionNameString = @"WWW";
     NSInteger countOfItem = [modelController numberOfItemForSection:sectionNameString];
     XCTAssertGreaterThanOrEqual(countOfItem, 0, @"セクションが保持するアイテム数を取得することができる");
     }
     
     /*!
     @abstract  全てのセクションの項目数を取得することができること
     */
     - (void) testThatControllerCanReturnEachSectionCount
     {
     NSInteger countOfSection = [modelController numberOfSection];
     for(int i = 0; i < countOfSection; i++){
     NSString* sectionNameString = [modelController sectionNameStringWithIndex:i];
     NSInteger countOfItem = [modelController numberOfItemForSection:sectionNameString];
     
     XCTAssertGreaterThanOrEqual(countOfItem, 0, @"全てのセクションの項目数を知ることができること");
     }
     }
     
     /*!
     @abstract  コントローラーは、検証項目のエンティティを返すことができる
     */
     - (void) testThatControllerCanReturnItemForSectionAtIndex
     {
     NSInteger countOfSection = [modelController numberOfSection];
     for(int i = 0; i < countOfSection; i++){
     NSString* sectionNameString = [modelController sectionNameStringWithIndex:i];
     NSInteger countOfItem = [modelController numberOfItemForSection:sectionNameString];
     
     for(int j = 0; j < countOfItem; j++){
     MTMTopMenuEntity* entity = [modelController itemForSection:sectionNameString index:j];
     XCTAssertNotNil(entity, @"モデルコントローラーは、指定されたセクション、指定された番号のエンティティを返すことができる: (%@:%@)", sectionNameString, entity);
     }
     }
     
     }
     
     
     - (void)testPerformanceExample {
     // This is an example of a performance test case.
     [self measureBlock:^{
     // Put the code you want to measure the time of here.
     }];
     }
     
     */
    
}
