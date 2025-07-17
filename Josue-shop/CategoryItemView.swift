//
//  CategoryItemView.swift
//  Josue-shop
//
//  Created by Ximena Ibarra Sanchez  on 17/7/25.
//
import SwiftUI

struct CategoryItemView: View {
    let iconName: String
    let categoryName: String

    var body: some View {
        VStack(spacing: 12) {
            Image(systemName: iconName)
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 60)
                .foregroundColor(Color(red: 0.29, green: 0.78, blue: 0.47))
                .padding(20)
                .background(Color.white)
                .cornerRadius(20)
                .shadow(color: Color.black.opacity(0.1), radius: 8, x: 0, y: 4)

            Text(categoryName)
                .font(.headline)
                .fontWeight(.medium)
                .foregroundColor(.gray)
        }
        .frame(width: 120)
    }
}

struct CategoriesView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                Text("Categories")
                    .font(.custom("SomeCustomFont", size: 28))
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                
                Spacer()
                
                HStack(spacing: 6) {
                    Image(systemName: "slider.horizontal.3")
                        .font(.body)
                    Text("Filter")
                        .font(.callout)
                }
                .padding(.horizontal, 12)
                .padding(.vertical, 7)
                .background(Color(red: 0.29, green: 0.78, blue: 0.47).opacity(0.15))
                .cornerRadius(10)
                .foregroundColor(Color(red: 0.29, green: 0.78, blue: 0.47))
                
                Image(systemName: "chevron.left")
                    .font(.body)
                    .padding(10)
                    .background(Color(red: 0.29, green: 0.78, blue: 0.47).opacity(0.2))
                    .clipShape(Circle())
                    .foregroundColor(Color(red: 0.29, green: 0.78, blue: 0.47))
                .padding(.leading, 10)

                Image(systemName: "chevron.right")
                    .font(.body)
                    .padding(10)
                    .background(Color(red: 0.29, green: 0.78, blue: 0.47))
                    .clipShape(Circle())
                    .foregroundColor(.white)
            }
            .padding(.horizontal)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 25) { 
                    CategoryItemView(iconName: "apple.fill", categoryName: "Fruits")
                    CategoryItemView(iconName: "bread.slice.fill", categoryName: "Bread")
                    CategoryItemView(iconName: "leaf.fill", categoryName: "Vegetable")
                    CategoryItemView(iconName: "fish.fill", categoryName: "Fish")
                    CategoryItemView(iconName: "fork.knife", categoryName: "Meat")
                    CategoryItemView(iconName: "bottle.fill", categoryName: "Drinks")
                    CategoryItemView(iconName: "tortoise.fill", categoryName: "Sea Food")
                    CategoryItemView(iconName: "icecream.fill", categoryName: "Ice cream")
                    CategoryItemView(iconName: "cup.and.saucer.fill", categoryName: "Juice")
                    CategoryItemView(iconName: "jar.fill", categoryName: "Jam")
                }
                .padding(.horizontal)
            }
        }
        .background(Color.white)
    }
}
struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
            .previewLayout(.sizeThatFits)
            .padding(.vertical, 20)
    }
}
