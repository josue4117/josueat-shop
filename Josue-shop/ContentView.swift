//
//  ContentView.swift
//  Josue-shop
//
//  Created by Ximena Ibarra Sanchez  on 16/7/25.
//

import SwiftUI

struct ContentView: View {
    var screen = NSScreen.main!.visibleFrame
    var body: some View {
        HStack(spacing:0){
            SidebarView()
                .frame(width: screen.width / 7, height: screen.height)

            VStack(spacing:0){
                SearchBarView()
                Spacer()
            }
            
        }
        .frame(width: screen.width, height: screen.height)
    }
}

#Preview {
    ContentView()
}
