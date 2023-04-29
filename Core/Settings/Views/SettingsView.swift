//
//  SettingsView.swift
//  Crypto_app
//
//  Created by teona nemsadze on 04.03.23.
//

import SwiftUI


struct SettingsView: View {
    
    let defaultURL = URL(string: "https://www.google.com")!
    let iosURL = URL(string: "https://developer.apple.com/xcode/swiftui/")!
    let facebookURL = URL(string: "https://www.facebook.com")!
    let coingeckoURL = URL (string: "https://www.coingecko.com")!
    let appleURL = URL(string: "https://www.apple.com")!
    
    
    var body: some View {
        NavigationView {
            ZStack {
                List {
                    Color.theme.background
                        .ignoresSafeArea()
                    
                  swiftfullThinkingSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                  coinGeckoSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                  developerSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                  applicationSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                }
            }
            .font(.headline)
            .accentColor(.blue)
            .listStyle(GroupedListStyle())
            .navigationTitle("Settings")
            .toolbar {
               ToolbarItem (placement: .navigationBarLeading) {
                XMarkButton()
               }
            }
        }
    }
}
 
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

extension SettingsView {
    
private var swiftfullThinkingSection: some View {
    Section(header: Text("IOs Dev")) {
        VStack(alignment: .leading) {
            Image("logo")
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(RoundedRectangle(cornerRadius: 20))
            Text("This is my First Crypto App")
                .font(.title)
                .fontWeight(.medium)
                .foregroundColor(Color.theme.accent)
        }
        .padding(.vertical)
        Link("IOs dev", destination: iosURL)
        Link("facebook", destination: facebookURL)
    }
  }
    private var coinGeckoSection: some View {
        Section(header: Text("CoinGecko")) {
            VStack(alignment: .leading) {
                Image("coingecko")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This cryptocurrency data that is used in this app comes from a from a free API from CoinGecko! Prices may be sligtly delayed.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            Link("visit coingecko", destination: coingeckoURL)
           
        }
      }
    
    private var developerSection: some View {
        Section(header: Text("Developer")) {
            VStack(alignment: .leading) {
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This app was developer by Teo")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            Link("visit Apple", destination: appleURL)
           
        }
        
    }
    
    private var applicationSection: some View {
        Section(header: Text("Application")) {
            Link("Tearms of Service", destination: defaultURL)
            Link("Privacy Policy", destination: defaultURL)
            Link("Company Website", destination: defaultURL)
            Link("Learn More", destination: defaultURL)
          }
      }
}












