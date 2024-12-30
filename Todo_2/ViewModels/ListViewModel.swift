//
//  ListViewModel.swift
//  Todo_2
//
//  Created by hiteshNath-Dev on 31/12/24.
//

import Foundation

class ListViewModel: ObservableObject{
    
    @Published var items: [ItemModel] = []
    
    init() {
        getItems()
    }
    
    func getItems(){
        var newItems = [
            ItemModel(title: "This is the first item", isCompleted: true),
            ItemModel(title: "This is the second item", isCompleted: false),
            ItemModel(title: "This is the third item", isCompleted: false)
        ]
        
        items.append(contentsOf: newItems)
    }
    
    func deleteItem(indexSet: IndexSet){
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int){
        items.move(fromOffsets: from, toOffset: to)
    }
}
