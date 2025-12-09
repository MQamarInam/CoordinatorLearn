//
//  Lemon.swift
//  CoordinatorLearn
//
//  Created by Qaim's Macbook  on 08/12/2025.
//

import SwiftUI

struct Lemon: View {
    
    @EnvironmentObject private var coordinator: MyCoordinator
    
    var body: some View {
        VStack {
            
            Button("Dismiss") {
                coordinator.dismissSheet()
            }
            .padding()
            .bold()
            .foregroundStyle(Color.white)
            .background(Color.purple)
            .cornerRadius(10)
        }
        .navigationTitle("Lemon View")
    }
}

#Preview {
    Lemon()
}
