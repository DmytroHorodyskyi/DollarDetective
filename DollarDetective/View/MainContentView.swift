//
//  DollarDetective
//  MainContentView.swift
//
//  Created by Dmytro Horodyskyi on 06.03.2023.
//

import SwiftUI

struct MainContentView: View {

    @EnvironmentObject private var launchScreenState: LaunchScreenStateManager

    init() {
        UITabBar.appearance().unselectedItemTintColor = UIColor(Color("TextColor"))
        UITabBar.appearance().backgroundColor = UIColor( Color("DarkMainColor"))
    }

    var body: some View {
          TabView {
                CashFlowView()
                PropertyView()
                SettingsView()
            }
          .onAppear {              self.launchScreenState.dismiss()
          }
          .accentColor(Color("GoldColor"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainContentView()
    }
}
