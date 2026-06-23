import SwiftUI

struct FeedbackFormView: View {
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var feedback: String = ""
    @State private var navigateToDetail = false

    var body: some View {
        NavigationStack {
            Form {
                // First Name
                Section {
                    VStack(alignment: .leading, spacing: 6) {
                        Text("First Name")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                        TextField("Enter first name", text: $firstName)
                            .textFieldStyle(.plain)
                            .padding(10)
                            .background(Color(.systemGray6))
                            .cornerRadius(8)
                    }
                    .padding(.vertical, 4)
                }

                // Last Name
                Section {
                    VStack(alignment: .leading, spacing: 6) {
                        Text("Last Name")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                        TextField("Enter last name", text: $lastName)
                            .textFieldStyle(.plain)
                            .padding(10)
                            .background(Color(.systemGray6))
                            .cornerRadius(8)
                    }
                    .padding(.vertical, 4)
                }

                // Feedback
                Section {
                    VStack(alignment: .leading, spacing: 6) {
                        Text("Feedback")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                        TextEditor(text: $feedback)
                            .frame(minHeight: 120)
                            .padding(6)
                            .background(Color(.systemGray6))
                            .cornerRadius(8)
                    }
                    .padding(.vertical, 4)
                }

                // Submit Button
                Section {
                    Button(action: {
                        navigateToDetail = true
                    }) {
                        Text("Submit")
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 4)
                            .foregroundColor(.white)
                    }
                    .disabled(firstName.isEmpty || lastName.isEmpty || feedback.isEmpty)
                    .listRowBackground(
                        (firstName.isEmpty || lastName.isEmpty || feedback.isEmpty)
                            ? Color.gray
                            : Color.blue
                    )
                }
            }
            .navigationTitle("Feedback Form")
            .navigationBarTitleDisplayMode(.large)
            .navigationDestination(isPresented: $navigateToDetail) {
                FeedbackDetailView(
                    fullName: "\(firstName) \(lastName)",
                    feedback: feedback
                )
            }
        }
    }
}

#Preview {
    FeedbackFormView()
}
