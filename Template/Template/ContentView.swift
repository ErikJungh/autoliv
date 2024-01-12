//
//  ContentView.swift
//  Template
//
//  Created by Erik Junghahn on 2024-01-11.
//

import UIKit
import SwiftUI

import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]

    var body: some View {
        
        ZStack {
            BackgroundView()
            VStack {
                Text("\(Vehicle.vehicleDescription()) trip" ).foregroundColor(AppStyle.secondaryColor())
            }
        }
        
    }
    
    struct BackgroundView: View {
        var body: some View {
            Color(AppStyle.primaryColor())
        }
    }


//    private func addItem() {
//        withAnimation {
//            let newItem = Item(timestamp: Date())
//            modelContext.insert(newItem)
//        }
//    }
//
//    private func deleteItems(offsets: IndexSet) {
//        withAnimation {
//            for index in offsets {
//                modelContext.delete(items[index])
//            }
//        }
//    }
}





#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
