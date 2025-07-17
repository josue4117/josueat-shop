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
        HStack(spacing: 0) {
            SidebarView()
                .frame(width: screen.width / 7, height: screen.height)

            VStack(alignment: .leading, spacing: 0) {
                Spacer().frame(height: 30)

                SearchBarView()
                    .padding(.bottom, 20)

                CategoriesView()
                    .padding(.bottom, 20)

                PopularProductsView()
                    .padding(.bottom, 20)

                DiscountShopView()
                    .padding(.bottom, 20)
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .frame(width: screen.width, height: screen.height)
        .background(Color.white)
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    ContentView()
}
