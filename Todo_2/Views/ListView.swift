//
//  ListView.swift
//  Todo_2
//
//  Created by hiteshNath-Dev on 29/12/24.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        List{
            HStack{
                Image(systemName: "checkmark.circle")
                Text("This is the first item")
                Spacer()
            }
        }.navigationTitle("Todo List 📝")
    }
}

#Preview {
    NavigationView {
        ListView()
    }
}
