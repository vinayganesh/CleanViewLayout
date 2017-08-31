//
//  Guitar.swift
//  CleanViewLayout
//
//  Created by VinayGanesh on 8/30/17.
//  Copyright © 2017 VinayGanesh. All rights reserved.
//

import Foundation

struct Guitar: Equatable, GuitarViewControllerDisplayable {
    let name: String
    let brand: String
    let frets: Int
    let fretboard: String
    let strings: Int
    let body: String
    let inlays: String
    let headStock: String
    
    static func ==(lhs: Guitar, rhs: Guitar) -> Bool {
        return lhs.name == rhs.name &&
        lhs.brand == rhs.brand &&
        lhs.frets == rhs.frets &&
        lhs.fretboard == rhs.fretboard &&
        lhs.strings == rhs.strings &&
        lhs.body == rhs.body &&
        lhs.inlays == rhs.inlays &&
        lhs.headStock == rhs.headStock
    }
}

extension Guitar: JSONDeserializable {
    init?(dictionary: JSONDictionary) {
        guard
            let name = dictionary["name"] as? String,
            let brand = dictionary["brand"] as? String,
            let frets = dictionary["frets"] as? Int,
            let fretboard = dictionary["fretboard"] as? String,
            let strings = dictionary["strings"] as? Int,
            let body = dictionary["body"] as? String,
            let inlays = dictionary["inlays"] as? String,
            let headStock = dictionary["headstock"] as? String
        else {
            return nil
        }
        self.name = name
        self.brand = brand
        self.frets = frets
        self.fretboard = fretboard
        self.strings = strings
        self.body = body
        self.inlays = inlays
        self.headStock = headStock
    }
}
