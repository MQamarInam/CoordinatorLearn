//
//  MyCoordinator.swift
//  CoordinatorLearn
//
//  Created by Qaim's Macbook  on 08/12/2025.
//

import Foundation
import SwiftUI

enum Path: String, Identifiable {
    case Apple, Banana, Orange
    var id: String {
        self.rawValue
    }
}

enum Sheet: String, Identifiable {
    case Lemon
    var id: String {
        self.rawValue
    }
}

enum FullScreenCover: String, Identifiable {
    case Olive
    var id: String {
        self.rawValue
    }
}

class MyCoordinator: ObservableObject {
    
    @Published var path = NavigationPath()
    @Published var sheet: Sheet?
    @Published var fullScreenCover: FullScreenCover?
    
    func push(_ p: Path) {
        path.append(p)
    }
    
    func present(sheet: Sheet) {
        self.sheet = sheet
    }
    
    func present(fullScreenCover: FullScreenCover) {
        self.fullScreenCover = fullScreenCover
    }
    
    func pop() {
        path.removeLast()
    }
    
    func popToRoot()  {
        path.removeLast(path.count)
    }
    
    func dismissSheet() {
        self.sheet = nil
    }
    
    func dismissFullScreenCover() {
        self.fullScreenCover = nil
    }
    
    @ViewBuilder
    func build(path: Path) -> some View {
        switch path {
        case .Apple:
            Apple()
        case .Banana:
            Banana()
        case .Orange:
            Orange()
        }
    }
    
    @ViewBuilder
    func build(sheet: Sheet) -> some View {
        switch sheet {
        case .Lemon:
            Lemon()
        }
    }
    
    @ViewBuilder
    func build(fullScreenCover: FullScreenCover) -> some View {
        switch fullScreenCover {
        case .Olive:
            Olive()
        }
    }
    
}
