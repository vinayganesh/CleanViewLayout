//
//  GuitarViewControllerTests.swift
//  CleanViewLayout
//
//  Created by VinayGanesh on 8/31/17.
//  Copyright © 2017 VinayGanesh. All rights reserved.
//

import XCTest
@testable import CleanViewLayout

class GuitarViewControllerTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    struct MockDisplayable: GuitarViewControllerDisplayable  {
        let name = "Dinky"
        let brand = "Jackson"
        let frets = 24
        let fretboard = "maple"
        let strings = 6
        let body = "maple wood"
        let inlays = "shark tooth"
        let headStock = "reverse headstock"
    }
    
    func testInitialization() {
        let displayable = MockDisplayable()
        let viewController = GuitarViewController(displayable: displayable)
        XCTAssertEqual(displayable, viewController.displayable)
    }
    
    func testDisplayableWithMockData() {
        let displayable = MockDisplayable()
        let viewController = GuitarViewController(displayable: displayable)
        XCTAssertEqual(displayable.body, viewController.displayable.body)
    }
    
    func testDisplayableWithMockJsonData() {
        let json = loadFixture("testdata")
        let guitar = Guitar(dictionary: json!)
        let viewController = GuitarViewController(displayable: guitar!)
        XCTAssertEqual(viewController.displayable, guitar)
    }
}
