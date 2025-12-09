//
//  Banana.swift
//  CoordinatorLearn
//
//  Created by Qaim's Macbook  on 08/12/2025.
//

import SwiftUI

struct Banana: View {
    
    @EnvironmentObject private var coordinator: MyCoordinator
    
    var body: some View {
        VStack {
            Button("Back to Apple") {
                coordinator.pop()
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
        .navigationTitle("Banana View")
    }
}

#Preview {
    Banana()
}
