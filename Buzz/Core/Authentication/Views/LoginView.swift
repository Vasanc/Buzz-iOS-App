//
//  LoginView.swift
//  Twitter Clone
//
//  Created by Vasan C on 02/04/23.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""

    var body: some View {
        VStack{
            VStack(alignment: .leading){
                HStack{
                    Spacer()
                }
                Text("Hello.")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    
                Text("Welcome Back")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
            }
            .frame(height: 260)
            .padding(.leading)
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(RoundedShape(corners: [.bottomRight]))
            VStack(spacing: 40){
                TextField("Email", text: $email)
                TextField("Password", text: $password)
            }
            .padding(.horizontal, 32)
            .padding(.top, 44)
            
            HStack{
                Spacer()
                
                NavigationLink{
                    Text("Reset password view")
                }label: {
                    Text("Forget Password?")
                        .padding(.trailing, 24)
                        .font(.caption)
                        .foregroundColor(Color(.systemBlue))
                        .bold()
                }
            }
            Button{
                print("Sign in")
            }label: {
                Text("Sign in")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 340, height: 50)
                    .background(Color(.systemBlue))
                    .cornerRadius(80)
                    .padding(.top, 43)
            }
            .shadow(color: .gray.opacity(0.5), radius: 10)
            
            Spacer()
            
            NavigationLink{
                SignUpView()
                    .toolbar(.hidden)
            }label: {
                HStack{
                    Text("Don't have account?")
                    Text("Sign Up")
                        .bold()
                }
                .foregroundColor(Color(.systemBlue))
                .padding(.bottom, 32)
                .font(.caption)
                .toolbar(.hidden)
            }
        }
        .ignoresSafeArea()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
