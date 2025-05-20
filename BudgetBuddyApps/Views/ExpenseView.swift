//
//  ExpenseView.swift
//  BudgetBuddyApps
//
//  Created by Chujun Xiang on 2025-04-29.
//

import SwiftUI
struct ExpenseView: View {
    @State private var expenses: [Expense] = []
    @State private var name = ""
    @State private var amount = ""
    
    var total: Double {
            expenses.reduce(0) { $0 + $1.amount }
        } //ChatGPT
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    TextField("Item", text: $name)
                    TextField("Amount", text: $amount)
                        .keyboardType(.decimalPad)
                    Button("Add") {
                        if let amt = Double(amount) {
                            expenses.append(Expense(name: name, amount: amt))
                            name = ""
                            amount = ""
                        }
                    }
                }.padding()
                
                HStack {
                        Text("Total:")
                        .font(.headline)
                        Spacer()
                        Text("$\(total, specifier: "%.2f")")
                        .font(.headline)
                                }
                                .padding(.horizontal)
                
                List(expenses) { item in
                    HStack {
                        Text(item.name)
                        Spacer()
                        Text("$\(item.amount, specifier: "%.2f")")//ChatGPT
                    }
                }
            }
            .navigationTitle("Expenses")
        }
    }
}
#Preview {
    ExpenseView()
}
