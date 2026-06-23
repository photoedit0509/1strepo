import SwiftUI

struct TwoScreenButtonApp: View {
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        VStack {
            Text("Welcome")
                .font(.largeTitle)
                .padding(.bottom, 40)

            NavigationLink(destination: SecondScreen()) {
                Text("Click Here")
                    .font(.title2)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 200)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
        }
        .navigationTitle("First Screen")
       //.navigationBarBackButtonHidden(false)
    }
}

struct SecondScreen: View {
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        VStack {
            Text("Good Job")
                .font(.largeTitle)
                .padding(.bottom, 40)

            Button("Go Back") {
                dismiss()
            }
            .font(.title2)
            .foregroundColor(.white)
            .padding()
            .frame(width: 200)
            .background(Color.green)
            .cornerRadius(10)
        }
        .navigationTitle("Second Screen")
    }
}

struct TwoScreenButtonApp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            TwoScreenButtonApp()
        }
    }
}
