//
//  Orange.swift
//  CoordinatorLearn
//
//  Created by Qaim's Macbook  on 08/12/2025.
//

import SwiftUI

struct Orange: View {
    
    @EnvironmentObject private var coordinator: MyCoordinator
    
    var body: some View {
        VStack {
            Button("Back to Apple") {
                coordinator.popToRoot()
            }
            .padding()
            .bold()
            .foregroundStyle(Color.white)
            .background(Color.purple)
            .cornerRadius(10)
            
            Button("Back to Banana") {
                coordinator.pop()
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
    Orange()
}
