//
//  SidebarView.swift
//  Josue-shop
//
//  Created by Ximena Ibarra Sanchez  on 16/7/25.
//
import SwiftUI

struct SidebarView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Josue-Shop")
                .font(.custom("SomeCustomFont", size: 24))
                .foregroundColor(Color(red: 0.29, green: 0.78, blue: 0.47))
                .frame(maxWidth: .infinity, alignment: .center)
                .multilineTextAlignment(.center)
                .padding(.bottom,20)
                .padding(.top, 30)
                .padding(.horizontal)

            Divider()
                .overlay(Color(red: 0.9, green: 0.9, blue: 0.9))
                .padding(.bottom, 20)
                .padding(.horizontal)

            Button {
            } label: {
                HStack {
                    Image(systemName: "square.grid.3x3.fill")
                    Text("Dashboard")
                }
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.green)
                .cornerRadius(8)
            }
            .buttonStyle(PlainButtonStyle())
            .padding(.bottom, 10)
            .padding(.horizontal)

            SidebarItem(icon: "leaf.fill", text: "Categories")
            SidebarItem(icon: "heart.fill", text: "Favourite")
            SidebarItem(icon: "cart.fill", text: "Orders")
            SidebarItem(icon: "message.fill", text: "Messages")
            SidebarItem(icon: "tag.fill", text: "Top Deals")
            SidebarItem(icon: "gearshape.fill", text: "Settings")

            Spacer()
        }
        .frame(width: 200, alignment: .topLeading)
        .background(Color.white)
    }
}

struct SidebarItem: View {
    let icon: String
    let text: String

    var body: some View {
        Button {
        } label: {
            HStack {
                Image(systemName: icon)
                Text(text)
                Spacer()
            }
            .foregroundColor(Color(red: 0.29, green: 0.78, blue: 0.47))
            .contentShape(Rectangle())
        }
        .buttonStyle(PlainButtonStyle())
        .padding(.vertical, 8)         .padding(.horizontal) 
    }
}

struct SidebarView_Previews: PreviewProvider {
    static var previews: some View {
        SidebarView()
    }
}
