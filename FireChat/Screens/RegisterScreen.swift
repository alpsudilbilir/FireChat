//
//  RegisterScreen.swift
//  FireChat
//
//  Created by Alpsu Dilbilir on 23.06.2022.
//

import SwiftUI

struct RegisterScreen: View {
    @State var user = User()
    var fireBaseManager = FireBaseManager()
    var body: some View {
        ScrollView {
            HStack {
                Text("Register")
                    .font(.system(size: 28))
                    .fontWeight(.bold)
                    .foregroundColor(.fire)
                Spacer()
            }
            .padding()
            
            Button {
                //Use image picker
            } label: {
                Image(systemName: "person.circle")
                    .resizable()
                    .foregroundColor(.fire.opacity(0.5))
                    .frame(minWidth: 120, maxWidth: 180, minHeight: 160, maxHeight: 200, alignment: .center)
            }
            
//            CustomTextField(prompt: "First name", text: $user.name)
//            CustomTextField(prompt: "Last name", text: $user.surname)
            CustomTextField(prompt: "Email", text: $user.email)
                .keyboardType(.emailAddress)
            CustomSecureField(prompt: "Password", text: $user.password)
            
            Button {
                fireBaseManager.createNewAccount(email: user.email, password: user.password)
            } label: {
                Text("Register")
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, minHeight: 50, maxHeight: 60)
                    .background(Color.fire)
                    .clipShape(Capsule())
                    .padding()
            }
        }
        .navigationBarHidden(true)
    }
    private func createNewAccount() {
        
    }
}

struct RegisterScreen_Previews: PreviewProvider {
    static var previews: some View {
        RegisterScreen()
    }
}
