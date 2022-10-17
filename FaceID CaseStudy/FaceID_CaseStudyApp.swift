//
//  FaceID_CaseStudyApp.swift
//  FaceID CaseStudy
//
//  Created by JunHyuk Lim on 17/10/2022.
//

import SwiftUI
import Firebase

@main
struct FaceID_CaseStudyApp: App {
    //MARK: - Intialise Firebase
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
