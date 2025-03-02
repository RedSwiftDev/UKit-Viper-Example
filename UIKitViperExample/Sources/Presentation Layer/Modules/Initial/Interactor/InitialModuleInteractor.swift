import Foundation

final class InitialModuleInteractor {
    
    // MARK: - Properties
    
    weak var output: (any InitialModuleInteractorOutput)?
}

// MARK: - InitialModuleInteractorInput

extension InitialModuleInteractor: InitialModuleInteractorInput {
    
}
