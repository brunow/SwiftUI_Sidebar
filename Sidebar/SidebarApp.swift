//
//  SidebarApp.swift
//  Sidebar
//
//  Created by cesar4 on 14/11/2020.
//

import SwiftUI

@main
struct SidebarApp: App {
    var body: some Scene {
        WindowGroup {
            SidebarView()
            
        }
        
        Settings {
            SettingsView()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}
