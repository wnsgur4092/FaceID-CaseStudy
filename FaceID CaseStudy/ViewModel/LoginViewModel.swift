//
//  LoginViewModel.swift
//  FaceID CaseStudy
//
//  Created by JunHyuk Lim on 17/10/2022.
//

import SwiftUI
import Firebase

class LoginViewModel : ObservableObject {
    
    @Published var email : String = ""
    @Published var password : String = ""
    
    //MARK: - FACE ID PROPERTIS
    @AppStorage("use_face_id") var useFaceID : Bool = false
    @AppStorage("use_face_email") var faceIDEmail : String = ""
    @AppStorage("use_face_password") var faceIDPassword : String = ""
    
    //LogStatus
    @AppStorage("log_status") var logStatus : Bool = false
    
    //MARK: - ERROR
    @Published var showError : Bool = false
    @Published var errorMsg : String = ""
    
    //MARK: - Firebase Login
    func loginUser(useFaceID : Bool) async throws{
        
        let _ = try await Auth.auth().signIn(withEmail: email, password: password)
        
        if useFaceID{
            self.useFaceID = useFaceID
            faceIDEmail = email
            faceIDPassword = password
        }
        
        logStatus = true
    }
}

