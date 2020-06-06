//
//  SampleDemo.swift
//  AlgoliaiOSDemo
//
//  Created by 入江真礼 on 2020/06/05.
//  Copyright © 2020 入江真礼. All rights reserved.
//

import Foundation

struct Hits: Codable {
    let hits: [SampleDemo]
}

struct SampleDemo: Codable {
    let title: String
    let content: String
    let objectID: String
}
