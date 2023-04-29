//
//  UIAplication.swift
//  Crypto_app
//
//  Created by teona nemsadze on 24.02.23.
//

import Foundation
import SwiftUI
 
extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
}
