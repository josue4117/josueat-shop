//
//  OrderItemView.swift
//  Josue-shop
//
//  Created by Ximena Ibarra Sanchez  on 17/7/25.
//
import SwiftUI

struct OrderItemView: View {
    let imageName: String
    let productName: String
    let weight: String
    let quantity: Int
    let price: String

    var body: some View {
        HStack(spacing: 15) {
            Image(imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 50, height: 50)
                .clipShape(Circle())

            VStack(alignment: .leading, spacing: 5) {
                Text(productName)
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundColor(.black)

                Text(weight)
                    .font(.caption)
                    .foregroundColor(.gray)

                HStack(spacing: 5) {
                    Image(systemName: "minus.circle.fill")
                        .font(.caption)
                        .foregroundColor(accentGreen)
                    Text("\(quantity)")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                    Image(systemName: "plus.circle.fill")
                        .font(.caption)
                        .foregroundColor(accentGreen)
                }
            }

            Spacer()

            Text(price)
                .font(.headline)
                .fontWeight(.bold)
                .foregroundColor(accentGreen)
        }
        .padding(.vertical, 10)
        .padding(.horizontal, 15)
    }
}

struct LastOrderView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            HStack {
                Text("Last Order")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.black)

                Spacer()
            }
            .padding(.horizontal)

            VStack(spacing: 0) {
                OrderItemView(imageName: "flor", productName: "Red Saffron", weight: "Weight 500 gm", quantity: 1, price: "$150")
                Divider().padding(.horizontal)
                OrderItemView(imageName: "manzanas", productName: "Fresh Apple", weight: "Weight 2 kg", quantity: 1, price: "$120")
                Divider().padding(.horizontal)
                OrderItemView(imageName: "pezgrande", productName: "Big Fish", weight: "Weight 6 kg", quantity: 1, price: "$300")
            }
            .cornerRadius(15)
            .shadow(color: Color.black.opacity(0.08), radius: 8, x: 0, y: 4)
            .padding(.horizontal)
        }
    }
}

struct LastOrderView_Previews: PreviewProvider {
    static var previews: some View {
        LastOrderView()
            .previewLayout(.sizeThatFits)
            .padding(.vertical, 20)
            .background(Color.gray.opacity(0.05))
    }
}
