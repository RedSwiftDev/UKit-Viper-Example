import Foundation

final class UserListModuleInteractor {
    
    // MARK: - Properties
    
    weak var output: (any UserListModuleInteractorOutput)?
}

// MARK: - UserListModuleInteractorInput

extension UserListModuleInteractor: UserListModuleInteractorInput {
    
}
