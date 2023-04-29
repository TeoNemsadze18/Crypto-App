//
//  StatisticModel.swift
//  Crypto_app
//
//  Created by teona nemsadze on 25.02.23.
//

import Foundation

struct StatisticModel: Identifiable {
    let id = UUID().uuidString
    let title: String
    let value: String 
    let percentageChange: Double?
    
    init(title: String, value: String, percentageChange: Double? = nil) {
        self.title = title
        self.value = value
        self.percentageChange = percentageChange
        
    }
}
 

