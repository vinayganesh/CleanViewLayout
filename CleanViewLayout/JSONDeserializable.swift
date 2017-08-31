//
//  JSONDeserializable.swift
//  CleanViewLayout
//
//  Created by VinayGanesh on 8/30/17.
//  Copyright © 2017 VinayGanesh. All rights reserved.
//

import Foundation

typealias JSONDictionary = Dictionary<String,AnyObject>

protocol JSONDeserializable {
    init?(dictionary: JSONDictionary)
}
