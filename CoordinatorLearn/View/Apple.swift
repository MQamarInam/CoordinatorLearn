//
//  Apple.swift
//  CoordinatorLearn
//
//  Created by Qaim's Macbook  on 08/12/2025.
//

import SwiftUI

struct Apple: View {
    
    @EnvironmentObject private var coordinator: MyCoordinator
    
    var body: some View {
        VStack {
            Button("Go to Banana") {
                coordinator.push(.Banana)
            }
            .padding()
            .bold()
            .foregroundStyle(Color.white)
            .background(Color.purple)
            .cornerRadius(10)
            
            Button("Go to Orange") {
                coordinator.push(.Orange)
            }
            .padding()
            .bold()
            .foregroundStyle(Color.white)
            .background(Color.purple)
            .cornerRadius(10)
        }
        .navigationTitle("Apple View")
    }
}

#Preview {
    Apple()
}
