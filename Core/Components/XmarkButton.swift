//
//  XmarkButton.swift
//  Crypto_app
//
//  Created by teona nemsadze on 27.02.23.
//

import SwiftUI

struct XMarkButton: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Button(action: {
  presentationMode.wrappedValue.dismiss()
     }, label: {
  Image(systemName: "xmark") 
        .font(.headline)
       })
    }
}

struct XmarkButton_Previews: PreviewProvider {
    static var previews: some View {
        XMarkButton()
    }
}
