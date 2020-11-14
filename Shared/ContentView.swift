//
//  ContentView.swift
//  Sidebar
//
//  Created by cesar4 on 14/11/2020.
//

import SwiftUI

struct ContentView: View {
    let item: Item
    
    var body: some View {
        ZStack {
            Color.white
            Group {
                Text("Selected item: ") +
                Text(item.title).font(.headline)
            }
        }
        .navigationTitle(item.title)
        
        .toolbar {
            ToolbarItem(placement: .navigation) {
                Button(action: {}) {
                    Image(systemName: "chevron.backward")
                }
            }
            
            ToolbarItem(placement: .navigation) {
                Button(action: {}) {
                    Image(systemName: "chevron.forward")
                }
            }
            
            ToolbarItem(placement: .status) {
                Button(action: {}) {
                    Image(systemName: "square.and.arrow.up")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView(item: Item(title: "Item1"))
        }
    }
}
