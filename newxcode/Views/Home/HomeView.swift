//
//  ContentView.swift
//  newxcode
//
//  Created by Sergey Sevriugin on 08/09/20.
//

import SwiftUI
import MapKit
import Combine


struct HomeView: View {
    @EnvironmentObject var userData: UserData
    var body: some View {
        ZStack(alignment: .topLeading) {
            
            MapView().padding(.leading,  userData.offset).ignoresSafeArea()
            
            MenuButtonView()
            BookLessonActivationView()
            
            HStack {
                MenuView()
                
                BlackView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView().environmentObject(UserData())
    }
}
