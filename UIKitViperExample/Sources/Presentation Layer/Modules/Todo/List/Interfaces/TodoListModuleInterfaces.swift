import UIKit

protocol TodoListModuleInput: ModuleInput {
    func prepareTabBarItem()
}

protocol TodoListModuleOutput: ModuleOutput {
    
}

// MARK: - Interactor

protocol TodoListModuleInteractorInput: ModuleInteractorInput {
    
}

protocol TodoListModuleInteractorOutput: ModuleInteractorOutput {
    
}

// MARK: - Routing

protocol TodoListModuleRouterInput: ModuleRouterInput {
    
}

// MARK: - View

protocol TodoListModuleViewInput: ModuleViewInput {
    func setupTabBarItem()
}

protocol TodoListModuleViewOutput: ModuleViewOutput {
    
}
