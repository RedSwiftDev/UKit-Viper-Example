import Foundation

final class PostListModuleInteractor {
    
    // MARK: - Properties
    
    weak var output: (any PostListModuleInteractorOutput)?
}

// MARK: - PostListModuleInteractorInput

extension PostListModuleInteractor: PostListModuleInteractorInput {
    
}
