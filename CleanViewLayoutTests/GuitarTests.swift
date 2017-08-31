//
//  GuitarTests.swift
//  CleanViewLayout
//
//  Created by VinayGanesh on 8/31/17.
//  Copyright © 2017 VinayGanesh. All rights reserved.
//

import XCTest
@testable import CleanViewLayout

class GuitarTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testInitialization() {
        let json = loadFixture("testdata")
        let guitar = Guitar(dictionary: json!)
        XCTAssertEqual(guitar?.brand, "Jackson")
        XCTAssertEqual(guitar?.frets, 24)
        XCTAssertEqual(guitar?.inlays, "shark tooth inlays")
    }
}
