//
//  ios_simple_objcUITests.swift
//  ios-simple-objcUITests
//
//  Created by Akos Birmacher on 2018. 06. 27..
//  Copyright © 2018. Bitrise. All rights reserved.
//

import XCTest

class ios_simple_objcUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let bitriseIosSimpleObjcElement = XCUIApplication().staticTexts["Bitrise ios-simple-objc"]
        bitriseIosSimpleObjcElement.swipeLeft()
        bitriseIosSimpleObjcElement.swipeRight()
        bitriseIosSimpleObjcElement.swipeLeft()
        
        XCTContext.runActivity(named: "When I add attachment to activity") { (activity) in
            let screen = XCUIScreen.main
            let fullscreenshot = screen.screenshot()
            let fullScreenshotAttachment = XCTAttachment(screenshot: fullscreenshot)
            fullScreenshotAttachment.lifetime = .keepAlways
            activity.add(fullScreenshotAttachment)
        }
    }
    
}
