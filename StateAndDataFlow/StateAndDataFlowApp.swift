//
//  StateAndDataFlowApp.swift
//  StateAndDataFlow
//
//  Created by Aiza on 10.11.2021.
//

import SwiftUI

@main
struct StateAndDataFlow: App {
    private let user = DataManager.shared.loadUser()
    
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(UserManager(user: user))
        }
    }
}
