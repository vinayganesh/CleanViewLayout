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
    
    func testGuitarEquatablePostive() {
        let json = loadFixture("testdata")
        
        let mockDictionary = ["name":"Dinky",
                              "brand":"Jackson",
                              "frets": 24,
                              "fretboard": "maple wood",
                              "strings": 6,
                              "body": "maple wood",
                              "inlays": "shark tooth inlays",
                              "headstock": "reverse headstock"] as [String : AnyObject]
        
        let mockGuitar = Guitar(dictionary: mockDictionary)
        let guitar = Guitar(dictionary: json!)
        XCTAssertEqual(guitar, mockGuitar)
    }
    
    func testGuitarEquatableNegative() {
        let json = loadFixture("testdata")
        
        let mockDictionary = ["name":"Dinky",
                              "brand":"Jackson",
                              "frets": 24,
                              "fretboard": "maple wood",
                              "strings": 8,
                              "body": "maple wood",
                              "inlays": "shark tooth inlays",
                              "headstock": "reverse headstock"] as [String : AnyObject]
        
        let mockGuitar = Guitar(dictionary: mockDictionary)
        let guitar = Guitar(dictionary: json!)
        XCTAssertNotEqual(guitar, mockGuitar)
    }
}

