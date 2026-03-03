//
//  FeedingRow.swift
//  BoneAppetit
//
//  Created by Shiyi Li on 2026-03-03.
//


import SwiftUI

struct FeedingRow: View {

    let leftTop: String
    let leftBottom: String
    let rightTop: String
    let rightBottom: String

    var body: some View {
        HStack {

            VStack(alignment: .leading, spacing: 2) {
                Text(leftTop)
                    .font(.headline)
                Text(leftBottom)
                    .foregroundColor(.gray)
            }

            Spacer()

            VStack(alignment: .trailing, spacing: 2) {
                Text(rightTop)
                    .font(.headline)
                Text(rightBottom)
                    .foregroundColor(.gray)
            }
        }
        .padding(.vertical, 12)
        .padding(.horizontal, 14)
    }
}