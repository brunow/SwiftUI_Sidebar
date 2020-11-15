//
//  Sidebar.swift
//  Sidebar
//
//  Created by cesar4 on 14/11/2020.
//

import SwiftUI

struct Item: Hashable, Identifiable {
    let id = UUID()
    let title: String
}

fileprivate let listItems = [Item(title: "item1"), Item(title: "item2"), Item(title: "item3")]

struct SidebarView: View {
    let items: [Item] = listItems
    
    @State var selection: Item? = listItems[0]
    
    var body: some View {
        NavigationView {
            List(selection: self.$selection) {
                Section(header: Text("Header")) {
                    ForEach(items) { item in
                        NavigationLink(
                            destination: ContentView(item: item),
                            tag: item,
                            selection: $selection,
                            label: {
                                Label(item.title, systemImage: "folder")
                                    .labelStyle(SidebarItemStyle(color: .blue))
                            })
                    }
                    
                    Divider()
                    
                    Text("Simple label")
                }
                
                #if os(iOS)
                NavigationLink(
                    destination: SettingsView(),
                    label: {
                        Label("Settings", systemImage: "gearshape")
                            .labelStyle(SidebarItemStyle(color: .pink))
                    })
                #endif
            }
            .listStyle(SidebarListStyle())
            .listItemTint(.red)
            
            .toolbar {
                ToolbarItem(placement: .status) {
                    Button(action: {}) {
                        Image(systemName: "plus")
                    }
                }
            }
        }
    }
}

struct Sidebar_Previews: PreviewProvider {
    static var previews: some View {
        SidebarView()
    }
}
