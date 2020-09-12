//
//  MenuView.swift
//  newxcode
//
//  Created by Sergey Sevriugin on 11/09/20.
//

import SwiftUI

struct MenuView: View {
    @EnvironmentObject var userData: UserData
    var body: some View {
        VStack(alignment: .leading) {
            Spacer()
            ForEach(0..<K.menuItems.count, id:\.self) { i in
                MenuItemView(item: userData.showSideMenu ? K.menuItems[i] : MenuItem(title: "?",iconSystemName: "gear"))
            }
            Spacer()
            
        }.frame(minWidth: 0, maxWidth: userData.offset, minHeight: 0, maxHeight: .infinity).background(Color.white).edgesIgnoringSafeArea(.all).statusBar(hidden: userData.showSideMenu).animation(.easeInOut)
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView().environmentObject(UserData())
    }
}
