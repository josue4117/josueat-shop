//
//  ProductCardView.swift
//  Josue-shop
//
//  Created by Ximena Ibarra Sanchez  on 17/7/25.
//
import SwiftUI

struct ProductCardView: View {
    let imageName: String
    let title: String
    let subtitle: String
    let price: String

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 120)
                .clipped()
                .padding(.bottom, 5)

            Text(title)
                .font(.headline)
                .fontWeight(.bold)
                .foregroundColor(.black)

            Text(subtitle)
                .font(.caption)
                .foregroundColor(.gray)
                .lineLimit(1)

            Spacer()

            HStack {
                Text(price)
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundColor(accentGreen)

                Spacer()

                Image(systemName: "plus.circle.fill")
                    .font(.title2)
                    .foregroundColor(accentGreen)
            }
        }
        .padding(15)
        .frame(width: 180, height: 250)
        .background(Color.white)
        .cornerRadius(20)
        .shadow(color: Color.black.opacity(0.08), radius: 8, x: 0, y: 4)
    }
}

struct PopularProductsView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            HStack {
                Text("Popular Products")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.black)

                Text("View More")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding(.horizontal)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ProductCardView(imageName: "fresas", title: "Strawberry", subtitle: "Lorem ipsum dolor sit amet,", price: "$20.10 /pre kg")
                    ProductCardView(imageName: "lechuga", title: "Cabbage", subtitle: "Lorem ipsum dolor sit amet,", price: "$15.10 /pre kg")
                    ProductCardView(imageName: "Brocoli", title: "Brocoly", subtitle: "Lorem ipsum dolor sit amet,", price: "$25.10 /pre kg")
                    ProductCardView(imageName: "naranja", title: "Orange", subtitle: "Lorem ipsum dolor sit amet,", price: "$12.10 /pre kg")
                    ProductCardView(imageName: "manzanas", title: "Fresh Apple", subtitle: "Lorem ipsum dolor sit amet,", price: "$18.10 /pre kg")
                }
                .padding(.horizontal, 20)
            }
            .padding(.bottom, 30)
        }
    }
}

struct PopularProductsView_Previews: PreviewProvider {
    static var previews: some View {
        PopularProductsView()
            .previewLayout(.sizeThatFits)
            .padding(.vertical, 20)
            .background(Color.gray.opacity(0.05))
    }
}
