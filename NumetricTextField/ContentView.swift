//
//  ContentView.swift
//  NumetricTextField
//
//  Created by Ramill Ibragimov on 26.12.2022.
//

import SwiftUI

struct ContentView: View {
    enum FocusedField {
        case int, dec
    }
    @State private var isNumericString = ""
    @State private var decNumberString = ""
    @FocusState private var focusedField: FocusedField?
    var body: some View {
        NavigationStack {
            VStack {
                TextField("Enter Integer Number", text: $isNumericString)
                    .focused($focusedField, equals: .int)
                    //.keyboardType(.numberPad)
                    .numbersOnly($isNumericString)
                TextField("Enter Decimal Number", text: $decNumberString)
                    .focused($focusedField, equals: .dec)
                    //.keyboardType(.decimalPad)
                    .numbersOnly($decNumberString, includeDecimal: true)
                Spacer()
            }
            .navigationTitle("Numbers Only")
            .textFieldStyle(.roundedBorder)
            .frame(width: 200)
            .toolbar {
                ToolbarItem(placement: .keyboard) {
                    Spacer()
                }
                ToolbarItem(placement: .keyboard) {
                    Button {
                        focusedField = nil
                    } label: {
                        Image(systemName: "keyboard.chevron.compact.down")
                    }
                }
            }
            .onAppear {
                UITextField.appearance().clearButtonMode = .whileEditing
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
