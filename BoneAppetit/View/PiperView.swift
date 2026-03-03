//
//  PiperView.swift
//  BoneAppetit
//
//  Created by Shiyi Li on 2026-02-27.
//

import SwiftUI

struct Piper: View {

    @State private var selection: String = "Planned Feedings"

    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {

                // Segmented control
                Picker("Tabs", selection: $selection) {
                    Text("Meals").tag("Meals")
                    Text("Planned Feedings").tag("Planned Feedings")
                    Text("History").tag("History")
                }
                .pickerStyle(.segmented)
                .padding(.horizontal)
                .padding(.top, 10)

                // White card with rows (static)
                VStack(spacing: 0) {

                    FeedingRow(leftTop: "7 AM", leftBottom: "Daily",
                               rightTop: "Kibble", rightBottom: "2 scoops")
                    Divider()

                    FeedingRow(leftTop: "11 AM", leftBottom: "Daily",
                               rightTop: "Kibble", rightBottom: "2 scoops")
                    Divider()

                    FeedingRow(leftTop: "3 PM", leftBottom: "Daily",
                               rightTop: "Kibble", rightBottom: "2 scoops")
                    Divider()

                    FeedingRow(leftTop: "7 PM", leftBottom: "Daily",
                               rightTop: "Kibble", rightBottom: "2 scoops")
                    Divider()

                    FeedingRow(leftTop: "August", leftBottom: "Annually",
                               rightTop: "Puppucino", rightBottom: "1 cup")
                }
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 14))
                .padding(.horizontal)
                .padding(.top, 10)

                Spacer()
            }
            .background(Color(.systemGray6))
            .navigationTitle("Piper")
            .toolbar {

                // Back "Pets" capsule
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        // does nothing
                    } label: {
                        HStack(spacing: 6) {
                            Image(systemName: "chevron.left")
                            Text("Pets")
                        }
                        .padding(.horizontal, 12)
                        .padding(.vertical, 8)
                        .background(Color.white.opacity(0.9))
                        .clipShape(Capsule())
                    }
                }

                // Plus button
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        // does nothing
                    } label: {
                        Image(systemName: "plus")
                    }
                    .buttonStyle(.borderedProminent)
                }
            }
        }
    }
}

#Preview {
    Piper()
}
