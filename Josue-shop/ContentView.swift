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
                Spacer().frame(height: 100)

                SearchBarView()
                    .padding(.bottom, 20)
                    .padding(.horizontal, 30) 

                CategoriesView()
                    .padding(.bottom, 20)
                    .padding(.horizontal, 30)
                PopularProductsView()
                    .padding(.bottom, 20)

                HStack(alignment: .top, spacing: 20) {
                    DiscountShopView()
                        .frame(width: screen.width * 0.40)

                    LastOrderView()
                        .frame(maxWidth: .infinity, idealHeight: 300)
                }
                .padding(.horizontal, 30)
                .padding(.bottom, 20)

                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .frame(width: screen.width, height: screen.height)
        .background(Color.white)
    }
}

#Preview {
    ContentView()
}
