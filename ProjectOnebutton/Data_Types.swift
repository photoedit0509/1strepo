//
//  Data_Types.swift
//  ProjectOnebutton
//
//  Created by Arjun_Aarna on 6/18/26.
//

import SwiftUI

struct Data_Types: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        
            .onAppear {
                //                learningArrays()
                //                learningDictionaries()
                //                ifandelseconditions()
                forinLoop()
                
            }
    }
    
    func ifandelseconditions ()
    {
        let temperature = 35
        
        if temperature > 30 {
            print("It's hot outside!")
        }
        // Output: It's hot outside!
        
        let age = 16
        
        if age >= 18 {
            print("You can vote.")
        } else {
            print("You are too young to vote.")
        }
        // Output: You are too young to vote.
        
        let score = 75
        
        if score >= 90 {
            print("Grade: A")
        } else if score >= 80 {
            print("Grade: B")
        } else if score >= 70 {
            print("Grade: C")
        } else {
            print("Grade: F")
        }
        // Output: Grade: C
        
        let username = "admin"
        let password = "1234"
        
        // AND — both must be true
        if username == "admin" && password == "1234" {
            print("Login successful!")
        } else {
            print("Invalid credentials.")
        }
        
        // OR — at least one must be true
        let isWeekend = true
        let isHoliday = false
        
        if isWeekend || isHoliday {
            print("No work today!")
        }
        
        let userName: String? = nil
        
        if let name = userName {
            print("Hello, \(name)!")
        } else {
            print("No user found.")
        }
        // Output: Hello, Alice!
        
        let isMember = true
        let hasCoupon = false
        
        if isMember {
            if hasCoupon {
                print("20% discount applied!")
            } else {
                print("10% member discount applied.")
            }
        } else {
            print("No discount available.")
        }
        // Output: 10% member discount applied.
        
    }
    
    func learningArrays() {
        print("test")
        
        let fruits: [String] = ["Apple", "Banana", "Orange"]
        let numbers = [1, 2, 3, 4]
        
        var names: [String] = ["Vineela", "Arjun"]
        
        print(names)
        
        names.append("Thiru")
        names.append("Aarna")
        
        print(names)
        print(fruits.count)
        print(fruits.isEmpty)
        print(fruits[0])
        print(fruits[2])
        
    }
    
    
    func learningDictionaries() {
        
        var person: [String: String] = [
            "name": "Alice",
            "city": "New York",
            "email": "alice@mail.com"
        ]
        print("Dictionary:", person)
        
        // MARK: - 2. Access a Value
        let xyz = person["name"] ?? "No Name"
        print("Name", xyz)
        
        // MARK: - 3. Add a new Key-Value pair
        person["phone"] = "123-456-7890"
        print("After Adding Phone:", person)
        
        // MARK: - 4. Update an existing Value
        person["city"] = "Los Angeles"
        print("After Updating City:", person)
        
        // MARK: - 5. Remove a Key-Value pair
        person.removeValue(forKey: "email")
        print("After Removing Email:", person)
        
        // MARK: - 6. Check if Dictionary is Empty
        if person.isEmpty {
            print("Dictionary is Empty")
        } else {
            print("Dictionary is Not Empty")
        }
        
        // MARK: - 7. Count total Key-Value pairs
        print("Total Count:", person.count)
        
        // MARK: - 8. Loop through Dictionary
        //        print("\n--- Loop through Dictionary ---")
        //        for (key, value) in person {
        //            print("\(key): \(value)")
        //        }
        //
        // MARK: - 9. Check if a Key exists
        //        if let phone = person["phone"] {
        //            print("Phone exists:", phone)
        //        } else {
        //            print("Phone not found")
        //        }
        
        //        // MARK: - 10. All Keys and Values separately
        print("All Keys:", Array(person.keys))
        print("All Values:", Array(person.values))
        
        var enagandula: [String: String] = ["Father": "Thiru",
                                            "Mother": "Vineela",
                                            "Son": "Arjun Sai",
                                            "Daughter": "Aarna"]
        
        
        print(enagandula)
        
    }
    
    func forinLoop() {
        
        for i in 1...5 {
            print("Number: \(i)")
        }
        // Output:
        // Number: 1
        // Number: 2
        // Number: 3
        // Number: 4
        // Number: 5
        
        for i in 1..<5 {
            print("Value: \(i)")
        }
        // Output:
        // Value: 1
        // Value: 2
        // Value: 3
        // Value: 4
        
        let fruits = ["Apple", "Banana", "Mango", "Orange"]
        
        for fruit in fruits {
            print("Fruit: \(fruit)")
        }
        // Output:
        // Fruit: Apple
        // Fruit: Banana
        // Fruit: Mango
        // Fruit: Orange
        
        let studentGrades = ["Alice": 90, "Bob": 75, "Charlie": 85]

        for (name, grade) in studentGrades {
            print("\(name) scored \(grade)")
        }
        // Output (order may vary):
        // Alice scored 90
        // Bob scored 75
        // Charlie scored 85
        
        let colors = ["Red", "Green", "Blue"]

        for (index, color) in colors.enumerated() {
            print("Index \(index): \(color)")
        }
        // Output:
        // Index 0: Red
        // Index 1: Green
        // Index 2: Blue
        
        for i in 1...10 where i % 2 == 0 {
            print("\(i) is even")
        }
        // Output:
        // 2 is even
        // 4 is even
        // 6 is even
        // 8 is even
        // 10 is even
        
        for _ in 1...3 {
            print("Hello!")
        }
        // Output:
        // Hello!
        // Hello!
        // Hello!
        
        for row in 1...3 {
            for col in 1...3 {
                print("(\(row), \(col))", terminator: "  ")
            }
            print("")
        }
        // Output:
        // (1, 1)  (1, 2)  (1, 3)
        // (2, 1)  (2, 2)  (2, 3)
        // (3, 1)  (3, 2)  (3, 3)
        
        // Count up by 2
        
        for i in stride(from: 0, to: 10, by: 2) {
            print(i)
        }
        // Output: 0, 2, 4, 6, 8

        // Count down
        for i in stride(from: 10, to: 0, by: -2) {
            print(i)
        }
        // Output: 10, 8, 6, 4, 2
        
        // break — exits the loop early
        for i in 1...5 {
            if i == 3 { break }
            print(i)
        }
        // Output: 1, 2

        // continue — skips current iteration
        for i in 1...5 {
            if i == 3 { continue }
            print(i)
        }
        // Output: 1, 2, 4, 5
    }
}
    
    #Preview {
        Data_Types()
    }
    

