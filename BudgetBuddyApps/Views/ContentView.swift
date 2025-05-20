//
//  ContentView.swift
//  BudgetBuddyApps
//
//  Created by Chujun Xiang on 2025-04-29.
//

import SwiftUI




struct BudgetBuddyApps: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    var body: some View {
        TabView {
            ExpenseView()
                .tabItem {
                    Label("Expenses", systemImage: "creditcard")
                }

//            SavingsGoalsView()
//                .tabItem {
//                    Label("Goals", systemImage: "target")
//                }
//
//            ReminderSettingsView()
//                .tabItem {
//                    Label("Reminders", systemImage: "bell")
//                }
        }
    }
}

#Preview {
    ContentView()
}
