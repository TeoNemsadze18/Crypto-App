//
//  HapticManager.swift
//  Crypto_app
//
//  Created by teona nemsadze on 28.02.23.
//

import Foundation
import UIKit

class HapticsManager {
    
    static private let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
}
