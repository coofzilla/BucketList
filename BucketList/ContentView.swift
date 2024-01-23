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
    }
}

#Preview {
    ContentView()
}
