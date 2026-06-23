//
//  FeedbackDetailView.swift
//  ProjectOnebutton
//
//  Created by Arjun_Aarna on 6/23/26.
//

import SwiftUI
struct FeedbackDetailView: View {
    let fullName: String
    let feedback: String

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 32) {

                // Name Card
                VStack(alignment: .leading, spacing: 8) {
                    Text("Name")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(.secondary)
                        .textCase(.uppercase)
                        .tracking(1.2)

                    Text(fullName)
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(.primary)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(20)
                .background(Color(.systemGray6))
                .cornerRadius(12)

                // Feedback Card
                VStack(alignment: .leading, spacing: 8) {
                    Text("Feedback")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(.secondary)
                        .textCase(.uppercase)
                        .tracking(1.2)

                    Text(feedback)
                        .font(.body)
                        .foregroundColor(.primary)
                        .fixedSize(horizontal: false, vertical: true)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(20)
                .background(Color(.systemGray6))
                .cornerRadius(12)

                Spacer()
            }
            .padding(20)
        }
        .navigationTitle("Summary")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        FeedbackDetailView(fullName: "John Doe", feedback: "Great experience overall!")
    }
}

