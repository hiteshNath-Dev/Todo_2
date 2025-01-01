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
    
    @State var alertMsg: String = ""
    @State var showAlert: Bool = false
    
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
        .alert(isPresented: $showAlert, content: getAlertMsg)
    }
    
    func saveBtn(){
        if isTextValid() {
            listViewModel.addItem(title: textFieldText)
            presentationMode.wrappedValue.dismiss()
        }
    }
    
    func isTextValid() -> Bool{
        if textFieldText.count < 3 {
            alertMsg = "Your Todo  item must be atleast 3 characters long!!! 😰"
            showAlert.toggle()
            return false
        }
        return true
    }
    
    func getAlertMsg() -> Alert {
        return Alert(title: Text(alertMsg))
    }
}

#Preview {
    NavigationView {
        AddView()
    }
    .environmentObject(ListViewModel())
}
