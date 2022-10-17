//
//  LoginView.swift
//  FaceID CaseStudy
//
//  Created by JunHyuk Lim on 17/10/2022.
//

import SwiftUI

struct LoginView: View {
    //MARK: - PROPERTIES
    @StateObject var loginViewModel : LoginViewModel = LoginViewModel()
    
    @AppStorage("use_face_id") var useFaceID : Bool = false
    
    //MARK: - BODY
    var body: some View {
        VStack{
            Circle()
                .trim(from: 0, to: 0.5)
                .fill(.black)
                .frame(width: 45, height: 45)
                .rotationEffect(Angle.degrees(270))
                .hLeading()
                .offset(x:-23)
                .padding(.bottom, 30)
            
            Text("Login Now")
                .font(.largeTitle.bold())
                .foregroundColor(.black)
                .hLeading()
            
            //MARK: - EMAIL
            TextField("Email", text: $loginViewModel.email)
                .padding()
                .background{
                    RoundedRectangle(cornerRadius: 8)
                        .fill(
                            loginViewModel.email == "" ? Color.black.opacity(0.05) : Color.orange
                        )
                }
                .textInputAutocapitalization(.never)
                .padding(.top, 20)
            
            //MARK: - PASSWORD
            TextField("Password", text: $loginViewModel.password)
                .padding()
                .background{
                    RoundedRectangle(cornerRadius: 8)
                        .fill(
                            loginViewModel.password == "" ? Color.black.opacity(0.05) : Color.orange
                        )
                }
                .textInputAutocapitalization(.never)
                .padding(.top, 20)
            
            //MARK: - FACE ID
            Group {
                if useFaceID{
                    Button {
                        //FACE ID ACTION
                    } label: {
                        VStack(alignment: .leading, spacing: 10) {
                            Label {
                                Text("Use FaceID to login into previous account")
                            } icon: {
                                Image(systemName: "faceid")
                            }
                            .font(.caption)
                            .foregroundColor(.gray)
                            
                            Text("Note : You can turn off it in settings")
                                .font(.caption2)
                                .foregroundColor(.gray)

                        }
                    }
                    .hLeading()

                } else {
                    Toggle(isOn: $useFaceID) {
                        Text("Use FaceID to login")
                            .foregroundColor(.gray)
                    }
                }
            }
            .padding(.vertical, 20)
            
            
            //MARK: - LOGIN BUTTON
            Button {
                
            } label: {
                Text("LOGIN")
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .hCenter()
                    .background{
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color.blue)
                    }
            }
            .padding(.vertical,35)
            .disabled(loginViewModel.email == "" || loginViewModel.password == "")
            .opacity(loginViewModel.email == "" || loginViewModel.password == "" ? 0.5 : 1)
            
            NavigationLink {
                
            } label: {
                Text("Skip Now")
                    .foregroundColor(.gray)
            }


        }
        .padding(.horizontal, 25)
        .padding(.vertical)
    }
}

//MARK: - EXTENSION
extension View {
    func hLeading()->some View {
        self.frame(maxWidth: .infinity, alignment: .leading)
    }
    
    func hTrailing()->some View {
        self.frame(maxWidth: .infinity, alignment: .trailing)
    }
    
    func hCenter()->some View {
        self.frame(maxWidth: .infinity, alignment: .center)
    }
}

//MARK: - PREVIEW
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
