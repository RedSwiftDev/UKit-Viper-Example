import UIKit

protocol PostListModuleInput: ModuleInput {
    func prepareTabBarItem()
}

protocol PostListModuleOutput: ModuleOutput {
    
}

// MARK: - Interactor

protocol PostListModuleInteractorInput: ModuleInteractorInput {
    
}

protocol PostListModuleInteractorOutput: ModuleInteractorOutput {
    
}

// MARK: - Routing

protocol PostListModuleRouterInput: ModuleRouterInput {
    
}

// MARK: - View

protocol PostListModuleViewInput: ModuleViewInput {
    func setupTabBarItem()
}

protocol PostListModuleViewOutput: ModuleViewOutput {
    
}
