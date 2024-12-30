//
//  ItemModel.swift
//  Todo_2
//
//  Created by hiteshNath-Dev on 30/12/24.
//

import Foundation

struct ItemModel: Identifiable{
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
