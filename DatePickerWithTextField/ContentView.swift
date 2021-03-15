//
//  ContentView.swift
//  DatePickerWithTextField
//
//  Created by Simec Sys Ltd. on 15/3/21.
//

import SwiftUI

struct ContentView: View {
    @State private var date: Date?
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var email: String = ""
    
    var body: some View {
        VStack(spacing: 15) {
            TextField("First Name", text: $firstName)
                .padding()
                .frame(height: 50)
                .cornerRadius(5)
                .background(Color.white.shadow(radius: 2))
            TextField("Last Name", text: $lastName)
                .padding()
                .frame(height: 50)
                .cornerRadius(5)
                .background(Color.white.shadow(radius: 2))
            TextField("Email", text: $email)
                .padding()
                .frame(height: 50)
                .cornerRadius(5)
                .background(Color.white.shadow(radius: 2))
            DateInputFieldView(placeholder: "Select Date", date: self.$date)
                .padding()
                .frame(height: 50)
                .cornerRadius(5)
                .background(Color.white.shadow(radius: 2))
        }
        .frame(width: UIScreen.main.bounds.width * 0.85)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
