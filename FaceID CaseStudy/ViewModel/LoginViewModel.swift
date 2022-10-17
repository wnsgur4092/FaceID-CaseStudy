//
//  LoginViewModel.swift
//  FaceID CaseStudy
//
//  Created by JunHyuk Lim on 17/10/2022.
//

import SwiftUI

class LoginViewModel : ObservableObject {
    
    @Published var email : String = ""
    @Published var password : String = ""
    
    //MARK: - FACE ID PROPERTIS
    @AppStorage("use_face_id") var useFaceID : Bool = false
    @AppStorage("use_face_email") var useFacemail : String = ""
    @AppStorage("use_face_password") var useFacePassword : String = ""
}

