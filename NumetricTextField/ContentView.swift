//
//  ContentView.swift
//  NumetricTextField
//
//  Created by Ramill Ibragimov on 26.12.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var isNumericString = ""
    @State private var decNumberString = ""
    var body: some View {
        NavigationStack {
            VStack {
                TextField("Enter Integer Number", text: $isNumericString)
                TextField("Enter Decimal Number", text: $decNumberString)
                Spacer()
            }
            .navigationTitle("Numbers Only")
            .textFieldStyle(.roundedBorder)
            .frame(width: 200)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
