//
//  ExpenseView.swift
//  Expense Tracker
//
//  Created by Pavel Markitantov on 24/11/2022.
//

import SwiftUI

class ExpenseView: ObservableObject {
    
    @Published var startDate: Date = Date()
    @Published var endDate: Date = Date()
    @Published var currentMonthStartDate: Date = Date()
    
    init(){
        let calendar = Calendar.current
        let components = calendar.dateComponents([.year, .month], from: Date())
        
        startDate = calendar.date(from: components)!
        currentMonthStartDate = calendar.date(from: components)!
    }
    @Published var expenses: [Expense] = sample_expenses
    
    func currentMonthDateString()-> String{
        return currentMonthStartDate.formatted(date: .abbreviated, time: .omitted) + " - " + Date().formatted(date:.abbreviated, time: .omitted)
    }
    
    func convertExpensesToCurrency(expenses: [Expense]) -> String {
        var value: Double = 0.0
        value = expenses.reduce(0, {partialResult, expense in
            return partialResult + (expense.type == .income ? expense.amount : -expense.amount)
            
        })
        let polandLocale = Locale(identifier: "pl_PL")
        let formatter = NumberFormatter()
        formatter.locale = polandLocale
        formatter.numberStyle = .currency
        
        return formatter.string(from: .init(value: value)) ?? "$0.00"
    }
    
}


