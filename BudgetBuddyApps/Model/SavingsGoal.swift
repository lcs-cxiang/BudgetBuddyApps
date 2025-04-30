//
//  SavingsGoal.swift
//  BudgetBuddyApps
//
//  Created by Chujun Xiang on 2025-04-29.
//
import SwiftUI

struct SavingsGoal: Identifiable{
    let id = UUID()
    let title: String
    let targetAmount: Double
    var currentAmount: Double = 0.0
    var progress: Double{
        currentAmount / targetAmount
    }
}
