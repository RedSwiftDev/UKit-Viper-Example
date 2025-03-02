import Foundation

final class AlbumListModuleInteractor {
    
    // MARK: - Properties
    
    weak var output: (any AlbumListModuleInteractorOutput)?
}

// MARK: - AlbumListModuleInteractorInput

extension AlbumListModuleInteractor: AlbumListModuleInteractorInput {
    
}
