//
//  ReminderSettingsView.swift
//  BudgetBuddyApps
//
//  Created by Chujun Xiang on 2025-04-29.
//
import SwiftUI
struct ReminderSettingsView: View {
    @State var remindersEnabled = true
    @State var reminderTime = Date() //ChatGPT

    var body: some View {
        NavigationView{
            VStack{
                Text("Don't forget to log your expense today!")
                    .bold()
                Form{
                    Toggle("Enable reminders", isOn: $remindersEnabled)
                    DatePicker("Time", selection: $reminderTime, displayedComponents: .hourAndMinute) //ChatGPT
                }
            }
        }
    }
}
