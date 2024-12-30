//
//  AddView.swift
//  Todo_2
//
//  Created by Administrator on 29/12/24.
//

import SwiftUI

struct AddView: View {
    
    @State var textFieldText: String = ""
    
    var body: some View {
        ScrollView{
            VStack {
                TextField( "Type something here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(Color.gray.opacity(0.2)))
                    .cornerRadius(10)
                
                Button {
                    
                } label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        
                }

            }
            .padding(14)
        }
        .navigationTitle("Add an item 🖊️")
    }
}

#Preview {
    NavigationView {
        AddView()
    }
}
