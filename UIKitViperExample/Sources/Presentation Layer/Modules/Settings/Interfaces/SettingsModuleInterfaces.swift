import UIKit

protocol SettingsModuleInput: ModuleInput {
    func prepareTabBarItem()
}

protocol SettingsModuleOutput: ModuleOutput {
    
}

// MARK: - Interactor

protocol SettingsModuleInteractorInput: ModuleInteractorInput {
    
}

protocol SettingsModuleInteractorOutput: ModuleInteractorOutput {
    
}

// MARK: - Routing

protocol SettingsModuleRouterInput: ModuleRouterInput {
    
}

// MARK: - View

protocol SettingsModuleViewInput: ModuleViewInput {
    func setupTabBarItem()
}

protocol SettingsModuleViewOutput: ModuleViewOutput {
    
}
