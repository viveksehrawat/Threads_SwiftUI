//
//  RegisterView.swift
//  Threads
//
//  Created by Vivek Sehrawat on 17/09/23.
//

import SwiftUI

struct RegisterView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var fullName: String = ""
    @State private var userName: String = ""

    private func styledTextField(_ placeholder: String, text: Binding<String>) -> some View {
          TextField(placeholder, text: text)
              .font(.subheadline)
              .padding(12)
              .background(Color(.systemGray6))
              .cornerRadius(10)
              .padding(.horizontal, 24)
      }
    
    var body: some View {
        
            VStack{
                Spacer()
                Image("threads")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .padding()
                VStack{
                    TextField("Enter your email", text: $email)
                        .modifier(CustomTextField())
                    
                    SecureField("Enter your password", text: $password)
                        .modifier(CustomTextField())

                    
                    TextField("Enter your full name", text: $fullName)
                        .modifier(CustomTextField())

                    
                    TextField("Enter your user name", text: $userName)
                        .modifier(CustomTextField())

                    
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

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
