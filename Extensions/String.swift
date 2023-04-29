//
//  String.swift
//  Crypto_app
//
//  Created by teona nemsadze on 04.03.23.
//

import Foundation

extension String {
    
    var removingHTMLccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
}
