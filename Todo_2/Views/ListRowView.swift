//
//  ListRowView.swift
//  Todo_2
//
//  Created by hiteshNath-Dev on 29/12/24.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    
    var body: some View {
        HStack{
            Image(systemName: item.isCompleted ?  "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? Color.green : Color.red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}
#Preview {
    
    let item1 = ItemModel(title: "This is the first item", isCompleted: true)
    let item2 = ItemModel(title: "This is the second item", isCompleted: false)
    
    Group{
        ListRowView(item: item1)
        ListRowView(item: item2)
    }
}
