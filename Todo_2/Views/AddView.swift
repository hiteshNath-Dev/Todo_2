//
//  AddView.swift
//  Todo_2
//
//  Created by hiteshNath-Dev on 29/12/24.
//

import SwiftUI

struct AddView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listViewModel: ListViewModel
    @State var textFieldText: String = ""
    
    var body: some View {
        ScrollView{
            VStack {
                TextField( "Type something here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(Color.gray.opacity(0.2)))
                    .cornerRadius(10)
                
                Button (action: saveBtn , label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        
                })

            }
            .padding(14)
        }
        .navigationTitle("Add an item 🖊️")
    }
    
    func saveBtn(){
        listViewModel.addItem(title: textFieldText)
        presentationMode.wrappedValue.dismiss()
    }
}

#Preview {
    NavigationView {
        AddView()
    }
    .environmentObject(ListViewModel())
}
