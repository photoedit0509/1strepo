

import SwiftUI
struct Functions: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        
            .onAppear {
                
                greet()
                greetUser(name: "Alice") // Output: Hello, Alice!
                let result = add(a: 5, b: 3)
                print(result) // Output: 8
                
                greet(name: "Bob")                    // Output: Hello, Bob!
                greet(name: "Bob", message: "Hi")     // Output: Hi, Bob!
            }
    }
    
    func greet() {
        print("Hello, World!")
        greetUser(name: "Thiru")
    }
    
    func greetUser(name: String) {
        print("Hello, \(name)!")
    }

    func add(a: Int, b: Int) -> Int {
        return a + b
        
    }

    func greet(name: String, message: String = "Hello") {
        print("\(message), \(name)!")
    }

   
    
}
    
    #Preview {
        Functions()
    }
    

