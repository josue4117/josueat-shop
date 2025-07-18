//
//  SearchBarView.swift
//  Josue-shop
//
//  Created by Ximena Ibarra Sanchez  on 16/7/25.
//
import SwiftUI

struct SearchBarView: View {
    @State private var searchText = ""

    var body: some View {
        HStack(spacing: 15) {
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(accentGreen)
                
                TextField("Search your products...", text: $searchText)
                    .textFieldStyle(PlainTextFieldStyle())
                    .font(.body)
                    .foregroundColor(.black)
            }
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
            .background(Color.white)
            .cornerRadius(12)
            .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 2)
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(accentGreen.opacity(0.3), lineWidth: 1)
            )

            Spacer()

            HStack(spacing: 20) {
                Image(systemName: "calendar")
                    .font(.title2)
                    .foregroundColor(accentGreen)
                
                Image(systemName: "bell")
                    .font(.title2)
                    .foregroundColor(accentGreen)
                
                Image(systemName: "person.circle.fill")
                    .font(.title2)
                    .foregroundColor(accentGreen)
            }
        }
        .padding(.horizontal)
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray.opacity(0.1))
    }
}
