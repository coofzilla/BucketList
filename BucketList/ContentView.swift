//
//  ContentView.swift
//  BucketList
//
//  Created by Jeric Hernandez on 1/23/24.
//

import SwiftUI

struct User: Identifiable, Comparable {
    static func < (lhs: User, rhs: User) -> Bool {
        lhs.lastName < rhs.lastName
    }

    let id = UUID()
    let firstName: String
    let lastName: String
}

struct ContentView: View {
    let users = [
        User(firstName: "Bob", lastName: "Vance"),
        User(firstName: "Michael", lastName: "Scott"),
        User(firstName: "Amy", lastName: "Adams")
    ].sorted()

    var body: some View {
        List(users) { user in
            Text(String("\(user.firstName), \(user.lastName)"))
        }
        Button("Read and Write") {
            let data = Data("Test Message".utf8)
            let url = URL.documentsDirectory.appending(path: "message.txt")

            do {
                try data.write(to: url, options: [.atomic, .completeFileProtection])
                let input = try String(contentsOf: url)
                print(input)
            } catch {
                print(error.localizedDescription)
            }
        }
    }

    func test() {
        print(URL.documentsDirectory)
    }
}

#Preview {
    ContentView()
}
