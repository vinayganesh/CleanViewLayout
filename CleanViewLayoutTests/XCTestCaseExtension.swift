//
//  XCTestCaseExtension.swift
//  CleanViewLayout
//
//  Created by VinayGanesh on 8/31/17.
//  Copyright © 2017 VinayGanesh. All rights reserved.
//

import XCTest
import Foundation
@testable import CleanViewLayout

extension XCTestCase {
    
    func loadFixture(_ filename: String ) -> JSONDictionary? {
        guard let path = Bundle(for: type(of: self)).path(forResource: filename, ofType: "json")
            else { return nil }
        do {
            let data = try Data(contentsOf: URL(fileURLWithPath: path))
            let json = try? JSONSerialization.jsonObject(with: data, options: [])
            return json as? JSONDictionary
        } catch {
            print("ERROR: \(error.localizedDescription)")
        }
        return nil
    }
}
