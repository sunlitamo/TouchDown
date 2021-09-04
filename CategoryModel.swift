//
//  CategoryModel.swift
//  TouchDown
//
//  Created by Fang Sun on 2021-08-26.
//

import Foundation

struct Category:Codable,Identifiable {
    let id: Int
    let name: String
    let image: String
}
