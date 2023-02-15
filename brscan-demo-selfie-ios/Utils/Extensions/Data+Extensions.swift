//
//  Data+Extensions.swift
//  mlKitFirebase
//
//  Created by Alan Soares on 18/08/21.
//

import Foundation

extension Data {
    mutating func append(_ string: String) {
        if let data = string.data(using: .utf8) {
            append(data)
        }
    }
}
