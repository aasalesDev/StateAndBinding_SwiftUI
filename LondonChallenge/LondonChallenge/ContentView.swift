//
//  ContentView.swift
//  LondonChallenge
//
//  Created by Anderson Sales on 07/03/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var username: String = ""
    @State var password: String = ""
    @State var rembemberUser: Bool = true
    @State var showAlert: Bool = false
    @State var showSheet: Bool = false
    @State var areCredentialsValid: Bool = false
    
    var body: some View {
        VStack {
            Spacer()
            Text("IRMANDADE SWIFT")
                .font(.system(size: 36))
                .frame(height: 150)
            Form {
                VStack {
                    Spacer()
                    TextField("", text: $username, prompt: Text("Enter your username..."))
                        .padding()
                    Spacer()
                        Divider()
                    Spacer()
                    SecureField("", text: $password, prompt: Text("Enter your password..."))
                        .padding()
                    Spacer()
                }
                VStack {
                    Spacer()
                    HStack {
                        Text("Remember user")
                            .padding(.top)
                            .padding(.bottom)
                        Toggle("", isOn: $rembemberUser)
                    }
                    Spacer()
                    VStack {
                        Button("Enter") {
                            if areCredentialsValid {
                                showAlert.toggle()
                                areCredentialsValid.toggle()
                            } else {
                                showSheet.toggle()
                            }
                        }
                        .padding()
                        Spacer()
                        .alert("Incorrect Username or Password!", isPresented: $showAlert) {
                            Button("OK", role: .cancel){}
                        }
                        .sheet(isPresented: $showSheet) {
                            VStack {
                                Spacer()
                                VStack {
                                    HStack {
                                        Text("Sky is the Limit")
                                            .font(.system(size: 36))
                                            .foregroundColor(.blue)
                                            .fontWeight(.bold)
                                            .padding()
                                        Image("aasales")
                                            .resizable()
                                            .clipShape(Circle())
                                            .scaledToFill()
                                            .frame(width: 150, height: 150)
                                            .padding()
                                    }
                                    Text("TMJ Irmandade!")
                                        .font(.system(size: 36))
                                        .foregroundColor(.red)
                                        .fontWeight(.heavy)
                                }
                                Spacer()
                                Button("Exit") {
                                    showSheet.toggle()
                                    areCredentialsValid.toggle()
                                }
                                .font(.system(size: 30))
                                Spacer()
                            }
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
