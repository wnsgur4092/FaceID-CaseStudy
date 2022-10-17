//
//  HomeView.swift
//  FaceID CaseStudy
//
//  Created by JunHyuk Lim on 17/10/2022.
//

import SwiftUI
import Firebase

struct HomeView: View {
    //MARK: - PROPERTIES
    @AppStorage("log_status") var logStatus : Bool = false
    
    //MARK: - BODY
    var body: some View {
        VStack(spacing:20) {
            if logStatus{
                Text("Logged In")
                Button {
                    try? Auth.auth().signOut()
                    logStatus = false
                } label: {
                    Text("LogOut")
                }

            } else {
                Text("Came as Guest")
            }
        }
        .navigationTitle("Home")
        
    }
}

//MARK: - PREVIEW
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
