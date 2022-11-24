//
//  Expence.swift
//  Expense Tracker
//
//  Created by Pavel Markitantov on 24/11/2022.
//

import SwiftUI


struct Expense: Identifiable, Hashable {
    var id = UUID().uuidString
    var remark: String
    var amount: Double
    var date: Date
    var type: ExpenseType
    var color: String
}

enum ExpenseType: String {
    case income = "Income"
    case expense = "expenses"
}

var sample_expenses: [Expense] = [
    Expense(remark: "Wine", amount: 20, date: Date(timeIntervalSince1970: 1652987245), type: .expense, color: "Yellow")]
