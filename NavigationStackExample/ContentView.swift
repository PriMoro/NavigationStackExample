//
//  ContentView.swift
//  NavigationStackExample
//
//  Created by Priscila Moro on 31/10/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("Fruits").font(.title)) {
                    ForEach(fruits, id: \.id) {fruit in
                        NavigationLink(fruit.name) {
                            Text(fruit.name)
                        }
                    }
                }
                Section(header: Text("Desserts").font(.title)) {
                    ForEach(desserts, id: \.id) {dessert in
                        NavigationLink(dessert.name) {
                            Text(dessert.name)
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
