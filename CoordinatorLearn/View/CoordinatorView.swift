//
//  CoordinatorView.swift
//  CoordinatorLearn
//
//  Created by Qaim's Macbook  on 08/12/2025.
//

import SwiftUI

struct CoordinatorView: View {
    
    @StateObject private var coordinator: MyCoordinator = MyCoordinator()
    
    var body: some View {
        
        NavigationStack(path: $coordinator.path) {
            
            coordinator.build(path: .Apple)
                .navigationDestination(for: Path.self) { path in
                    coordinator.build(path: path)
                }
                .sheet(item: $coordinator.sheet) { sheet in
                    coordinator.build(sheet: sheet)
                }
                .fullScreenCover(item: $coordinator.fullScreenCover) { fullScreenCover in
                    coordinator.build(fullScreenCover: fullScreenCover)
                }
        }
        .environmentObject(coordinator)
        
    }
}

#Preview {
    CoordinatorView()
}
