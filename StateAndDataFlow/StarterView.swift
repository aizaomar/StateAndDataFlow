//
//  ContentView.swift
//  StateAndDataFlow
//
//  Created by Aiza on 10.11.2021.
//

import SwiftUI

struct StarterView: View {
    
    @EnvironmentObject private var userManager: UserManager
    
    var body: some View {
        Group {
            if userManager.user.isRegistered {
                TimerView()
            } else {
                RegisterView()
            }
        }
    }
}

struct StarterView_Previews: PreviewProvider {
    static var previews: some View {
        StarterView()
            .environmentObject(UserManager())
    }
}
