import Foundation

final class TodoListModuleInteractor {
    
    // MARK: - Properties
    
    weak var output: (any TodoListModuleInteractorOutput)?
}

// MARK: - TodoListModuleInteractorInput

extension TodoListModuleInteractor: TodoListModuleInteractorInput {
    
}
