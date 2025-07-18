//
//  SidebarView.swift
//  Josue-shop
//
//  Created by Ximena Ibarra Sanchez  on 16/7/25.
//
import SwiftUI

let accentGreen = Color(red: 0.20, green: 0.65, blue: 0.30)

struct SidebarView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Josue-Shop")
                .font(.custom("SomeCustomFont", size: 28))
                .fontWeight(.bold)
                .foregroundColor(accentGreen)
                .padding(.horizontal)
                .padding(.top, 30)

            VStack(alignment: .leading, spacing: 15) {
                SidebarItem(iconName: "square.grid.2x2.fill", text: "Dashboard", isSelected: true)
                SidebarItem(iconName: "leaf.fill", text: "Categories", isSelected: false)
                SidebarItem(iconName: "heart.fill", text: "Favourite", isSelected: false)
                SidebarItem(iconName: "cart.fill", text: "Orders", isSelected: false)
                SidebarItem(iconName: "message.fill", text: "Messages", isSelected: false)
                SidebarItem(iconName: "tag.fill", text: "Top Deals", isSelected: false)
                SidebarItem(iconName: "gearshape.fill", text: "Settings", isSelected: false)
            }
            .padding(.top, 20)
            .padding(.horizontal)

            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
    }
}

struct SidebarItem: View {
    let iconName: String
    let text: String
    let isSelected: Bool

    var body: some View {
        HStack(spacing: 10) {
            Image(systemName: iconName)
                .font(.body)
                .foregroundColor(isSelected ? .white : accentGreen)

            Text(text)
                .font(.body)
                .fontWeight(isSelected ? .semibold : .regular)
                .foregroundColor(isSelected ? .white : .gray)
        }
        .padding(.vertical, 10)
        .padding(.horizontal, 15)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(isSelected ? accentGreen : Color.clear)
        .cornerRadius(10)
    }
}

struct SidebarView_Previews: PreviewProvider {
    static var previews: some View {
        SidebarView()
            .previewLayout(.sizeThatFits)
            .frame(width: 200)
    }
}
