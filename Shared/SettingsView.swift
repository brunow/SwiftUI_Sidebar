//
//  SettingsView.swift
//  Sidebar
//
//  Created by cesar4 on 14/11/2020.
//

import SwiftUI

struct SettingsView: View {
    @AppStorage("showAll") var showAll: Bool = true
    
    var body: some View {
        #if os(macOS)
            list
        #else
            list.listStyle(InsetGroupedListStyle())
        #endif
    }
    
    var list: some View {
        List {
            Toggle("Show all", isOn: $showAll)
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
