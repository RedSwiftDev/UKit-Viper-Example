import UIKit

protocol UserListModuleInput: ModuleInput {
    func prepareTabBarItem()
}

protocol UserListModuleOutput: ModuleOutput {
    
}

// MARK: - Interactor

protocol UserListModuleInteractorInput: ModuleInteractorInput {
    
}

protocol UserListModuleInteractorOutput: ModuleInteractorOutput {
    
}

// MARK: - Routing

protocol UserListModuleRouterInput: ModuleRouterInput {
    
}

// MARK: - View

protocol UserListModuleViewInput: ModuleViewInput {
    func setupTabBarItem()
}

protocol UserListModuleViewOutput: ModuleViewOutput {
    
}
