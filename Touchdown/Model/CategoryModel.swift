//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Ryan Williams on 2/5/24.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String 
}
