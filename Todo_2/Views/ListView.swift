//
//  ListView.swift
//  Todo_2
//
//  Created by hiteshNath-Dev on 29/12/24.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [String] = [
        "This is the first item",
        "This is the second item",
        "This is the third item",
    ]
    
    var body: some View {
        List{
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
            }
        }.navigationTitle("Todo List 📝")
        .navigationBarItems(
            leading: EditButton(),
            trailing: NavigationLink("Add", destination: {
                Text("Destination")
            }))
    }
}

#Preview {
    NavigationView {
        ListView()
    }
}


