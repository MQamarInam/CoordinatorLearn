//
//  Olive.swift
//  CoordinatorLearn
//
//  Created by Qaim's Macbook  on 08/12/2025.
//

import SwiftUI

struct Olive: View {
    
    @EnvironmentObject private var coordinator: MyCoordinator
    
    var body: some View {
        VStack {
            Button("Show Full Lemon") {
                coordinator.present(sheet: .Lemon)
            }
            .padding()
            .bold()
            .foregroundStyle(Color.white)
            .background(Color.purple)
            .cornerRadius(10)
            
            Button("Dismiss") {
                coordinator.dismissFullScreenCover()
            }
            .padding()
            .bold()
            .foregroundStyle(Color.white)
            .background(Color.purple)
            .cornerRadius(10)
        }
    }
}

#Preview {
    Olive()
}
