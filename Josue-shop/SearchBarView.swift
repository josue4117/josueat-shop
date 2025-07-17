//
//  SearchBarView.swift
//  Josue-shop
//
//  Created by Ximena Ibarra Sanchez  on 16/7/25.
//
import SwiftUI

struct SearchBarView: View {
    @State private var searchText: String = ""

    var body: some View {
        HStack(spacing: 15) {
            HStack(spacing: 8) {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(Color(red: 0.29, green: 0.78, blue: 0.47))
                
                TextField("Search your products...", text: $searchText)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .textFieldStyle(PlainTextFieldStyle())
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 8)
            .cornerRadius(8)
            .frame(maxWidth: .infinity)
            Image(systemName: "calendar")
                .foregroundColor(Color(red: 0.29, green: 0.78, blue: 0.47))
            Image(systemName: "heart")
                .foregroundColor(Color(red: 0.29, green: 0.78, blue: 0.47))
            Image(systemName: "bell")
                .foregroundColor(Color(red: 0.29, green: 0.78, blue: 0.47))
            HStack(spacing: 4) {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(Color(red: 0.29, green: 0.78, blue: 0.47))
                Image(systemName: "chevron.down")
                    .font(.caption)
                    .foregroundColor(Color(red: 0.29, green: 0.78, blue: 0.47))
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
        .background(Color.white)
        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView()
            .previewLayout(.sizeThatFits)
            .padding(.top, 20)
    }
}
