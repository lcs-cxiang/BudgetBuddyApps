//
//  Expense.swift
//  BudgetBuddyApps
//
//  Created by Chujun Xiang on 2025-04-29.
//

import Foundation

struct Expense Identifiable{
    let id = UUID()
    let name: String
    let amount: Double
}
