//
//  DiscountCardView.swift
//  Josue-shop
//
//  Created by Ximena Ibarra Sanchez  on 17/7/25.
//
import SwiftUI

struct DiscountCardView: View {
    let backgroundImageName: String
    let discountPercentage: String
    let description: String

    var body: some View {
        ZStack(alignment: .leading) {
            Image(backgroundImageName)
                .resizable()
                .scaledToFill()
                .frame(width: 180, height: 120)
                .clipped()
                .cornerRadius(15)

            VStack(alignment: .leading, spacing: 5) {
                Text(discountPercentage)
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(.white)

                Text(description)
                    .font(.caption2)
                    .foregroundColor(.white.opacity(0.9))
                    .lineLimit(2)
                    .fixedSize(horizontal: false, vertical: true)

                Spacer()

                Button(action: {
                    print("Shop Now tapped for \(discountPercentage)")
                }) {
                    Text("Shop Now")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(accentGreen)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 5)
                        .background(Color.white)
                        .cornerRadius(8)
                }
            }
            .padding(15)
            .frame(width: 180, height: 120, alignment: .leading)
        }
        .cornerRadius(15)
    }
}

struct DiscountShopView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            HStack {
                Text("Discount Shop")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.black)

                Text("View More")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding(.horizontal)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 15) {
                    DiscountCardView(backgroundImageName: "banner1", discountPercentage: "35% Discount", description: "Order any food from app and get the discount")
                    DiscountCardView(backgroundImageName: "banner2", discountPercentage: "20% Discount", description: "Order any food from app and get the discount")
                    DiscountCardView(backgroundImageName: "banner3", discountPercentage: "20% Discount", description: "Order any food from app and get the discount")
                    DiscountCardView(backgroundImageName: "banner4", discountPercentage: "10% Discount", description: "Order any food from app and get the discount")
                }
                .padding(.horizontal)
            }
        }
    }
}

struct DiscountShopView_Previews: PreviewProvider {
    static var previews: some View {
        DiscountShopView()
            .previewLayout(.sizeThatFits)
            .padding(.vertical, 20)
            .background(Color.white)
    }
}
