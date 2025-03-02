import Foundation

final class MainModuleInteractor {
    
    // MARK: - Properties
    
    weak var output: (any MainModuleInteractorOutput)?
}

// MARK: - MainModuleInteractorInput

extension MainModuleInteractor: MainModuleInteractorInput {
    
}
