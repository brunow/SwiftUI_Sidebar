//
//  SidebarItemStyle.swift
//  Sidebar
//
//  Created by cesar4 on 14/11/2020.
//

import SwiftUI

struct SidebarItemStyle: LabelStyle {
    let color: Color
    
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.icon
                .foregroundColor(color)
            
            configuration.title
        }
    }
}
