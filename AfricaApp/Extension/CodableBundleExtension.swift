//
//  CodableBundleExtension.swift
//  AfricaApp
//
//  Created by Apple on 5/7/21.
//

import Foundation

// 1. Locate the json file

// 2. Create a property for the data

// 3. Create a decoder

// 4. Create a property for the decoded data

// 5. Return the ready-to-use data

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        // 1. Locate the json file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        
        // 2. Create a property for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        
        // 3. Create a decoder
        let decoder = JSONDecoder()
        
        // 4. Create a property for the decoded data
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        
        // 5. Return the ready-to-use data
        return loaded
    }
}
