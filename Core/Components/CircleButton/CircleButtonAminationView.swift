//
//  CircleButtonAminationView.swift
//  Crypto_app
//
//  Created by teona nemsadze on 21.02.23.
//

import SwiftUI

struct CircleButtonAminationView: View {
    
    @Binding var animate: Bool
     
    var body: some View {
        Circle()
            .stroke(lineWidth: 5.0)
            .scale(animate ? 1.0 :0.0)
            .opacity(animate ? 0.0: 1.0)
            .animation(animate ? Animation.easeOut(duration: 1.0) : .none)
    }
}

struct CircleButtonAminationView_Previews: PreviewProvider {
    static var previews: some View {
        CircleButtonAminationView(animate: .constant(false))
            .foregroundColor(.red)
            .frame(width: 100, height: 100)
    }
}
