import UIKit

protocol AlbumListModuleInput: ModuleInput {
    func prepareTabBarItem()
}

protocol AlbumListModuleOutput: ModuleOutput {
    
}

// MARK: - Interactor

protocol AlbumListModuleInteractorInput: ModuleInteractorInput {
    
}

protocol AlbumListModuleInteractorOutput: ModuleInteractorOutput {
    
}

// MARK: - Routing

protocol AlbumListModuleRouterInput: ModuleRouterInput {
    
}

// MARK: - View

protocol AlbumListModuleViewInput: ModuleViewInput {
    func setupTabBarItem()
}

protocol AlbumListModuleViewOutput: ModuleViewOutput {
    
}
