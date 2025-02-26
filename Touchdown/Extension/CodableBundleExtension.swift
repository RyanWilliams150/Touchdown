//
//  CodableBundleExtension.swift
//  Touchdown
//
//  Created by Ryan Williams on 2/5/24.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file:String) -> T {
        // 1. locate JSON
        guard let url = self.url(forResource: file, withExtension: nil) else{
            fatalError("Failed to locate \(file) from bundle.")
        }
        
        // 2. Property for data
        guard let data = try? Data (contentsOf: url) else{
            fatalError("Failed to locate \(file) from bundle.")
        }
        // 3. Decoder
        let decoder = JSONDecoder()
        
        // 4. Proptery to decode data
        guard let decodeData = try? decoder.decode(T.self, from: data) else{
            fatalError("Failed to locate \(file) from bundle.")
        }
        
        // 5. Return ready data
        return decodeData
    }
}
