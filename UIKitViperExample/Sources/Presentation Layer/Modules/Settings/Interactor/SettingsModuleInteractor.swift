import Foundation

final class SettingsModuleInteractor {
    
    // MARK: - Properties
    
    weak var output: (any SettingsModuleInteractorOutput)?
}

// MARK: - SettingsModuleInteractorInput

extension SettingsModuleInteractor: SettingsModuleInteractorInput {
    
}
