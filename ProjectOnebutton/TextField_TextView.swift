import SwiftUI

struct TextField_TextView: View {
    
    //        SwiftUI
    @State var notes: String = ""      //Text_View or Text Editor
    @State var name: String = ""      //Text_Field
    var body: some View {
        TextField("Enter your name", text: $name)
           .textFieldStyle(RoundedBorderTextFieldStyle())
           .padding()
        
        //UIKit
        
        //let textField = UITextField()
        //textField.placeholder = "Enter your name"
        //textField.borderStyle = .roundedRect
        
        
        //SwiftUI
        TextEditor(text: $notes)
            .frame(height: 200)
            .border(Color.gray, width: 1)
            .padding()
        
        //UIKit
        
        //let textView = UITextView()
        //textView.text = "Enter your notes here..."
        //textView.font = UIFont.systemFont(ofSize: 16)
        //textView.layer.borderWidth = 1
        //textView.layer.borderColor = UIColor.gray.cgColor
        
    }
    
}
        #Preview {
            TextField_TextView()
        }
    

