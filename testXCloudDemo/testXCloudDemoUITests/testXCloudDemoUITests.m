//
//  testXCloudDemoUITests.m
//  testXCloudDemoUITests
//
//  Created by sunyc on 2024/8/30.
//

#import <XCTest/XCTest.h>

@interface testXCloudDemoUITests : XCTestCase

@end

@implementation testXCloudDemoUITests

- (void)setUp {
    [super setUp];
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;

    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    [[[XCUIApplication alloc] init] launch];
}

- (void)tearDown {
    [super tearDown];
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testExample {
    // Use recording to get started writing UI tests.
    // Use XCTAssert and related functions to verify your tests produce the correct results.

    // 获取应用实例
    XCUIApplication *app = [[XCUIApplication alloc] init];
    
    // 验证标签文本
    XCUIElement *label = app.staticTexts[@"这是一个测试包2"];
    XCTAssertTrue(label.exists, @"测试标签不存在");

    // 验证按钮文本
    XCUIElement *button = app.buttons[@"点击"];
    XCTAssertTrue(button.exists, @"测试按钮不存在");
    
    // 点击按钮并验证日志输出
    [button tap];
    // 这里的日志输出验证可以通过其他方式来实现，例如检查某个状态变化
}

@end
