//
//  LoginView.swift
//  Threads
//
//  Created by Vivek Sehrawat on 17/09/23.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        
        NavigationStack{
            VStack{
                Spacer()
                Image("threads")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .padding()
                VStack{
                    TextField("Enter your email", text: $email)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal, 24)
                    
                    SecureField("Enter your password", text: $password)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal, 24)
                    
                }
                
                NavigationLink{
                    Text("Forgot password..")
                } label: {
                    Text("Forgot password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                        .padding(.vertical)
                        .padding(.trailing, 28)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                
                Button{}label: {
                    
                    Text("Login")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 350, height: 50)
                        .background(.black)
                        .cornerRadius(8)
                }
                Spacer()
                
                Divider()
                NavigationLink{
                    Text("Sign up")
                } label: {
                    HStack(spacing: 3){
                        Text("Don't have an account ?")
                        Text("Sign up")
                            .fontWeight(.semibold)
                    }
                    .font(.footnote)
                    .foregroundColor(.black)
                    .padding(.vertical, 16)
                    
                    
                }
            }
            .padding()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
