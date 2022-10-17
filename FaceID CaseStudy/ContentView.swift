//
//  ContentView.swift
//  FaceID CaseStudy
//
//  Created by JunHyuk Lim on 17/10/2022.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("log_status") var logStatus : Bool = false
    
    var body: some View {

        
        NavigationView {
            if logStatus{
                HomeView()
            } else {
                LoginView()
                    .toolbar(.hidden)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
