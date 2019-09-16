//
//  ContentView.swift
//  swift-ui-reactive-demo
//
//  Created by Kushida　Eiji on 2019/09/16.
//  Copyright © 2019 Kushida　Eiji. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var users = [String]()
    
    var body: some View {
                
        NavigationView {
            
            VStack {
                VStack {
                    VStack {
                    
                        Group {
                            TextField("First Name", text: $firstName)
                                .padding(12)
                        }.setTextFieldStyle()
                        
                        Group {
                            TextField("Last Name", text: $lastName)
                                .padding(12)
                        }.setTextFieldStyle()

                        Button(action: {
                            
                            self.users.append("\(self.firstName) \(self.lastName)")
                            self.firstName = ""
                            self.lastName = ""                            
                        }) {
                            
                            Group {
                                Text("Create User")
                                    .accentColor(.white)
                                    .padding(12)
                            }.background((firstName.count + lastName.count > 0) ? Color.blue : Color.gray)
                            .setButtonStyle()
                        }
                    }.padding(12)
                                        
                }.background(Color.gray)
                
                List (users, id: \.self){
                    Text($0)
                }
            }.navigationBarTitle("Credit Card Form")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
