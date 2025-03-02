import Foundation

final class TodoListModulePresenter {
    
    // MARK: - Properties
    
    private weak var output: (any TodoListModuleOutput)?
    private let interactor: any TodoListModuleInteractorInput
    private weak var view: (any TodoListModuleViewInput)?
    
    // MARK: - Init
    
    init(
        output: (any TodoListModuleOutput)? = nil,
        interactor: any TodoListModuleInteractorInput,
        view: any TodoListModuleViewInput
    ) {
        self.output = output
        self.interactor = interactor
        self.view = view
    }
}

// MARK: - TodoListModuleInput

extension TodoListModulePresenter: TodoListModuleInput {
    
    func prepareTabBarItem() {
        Task { @MainActor [weak self] in
            self?.view?.setupTabBarItem()
        }
    }
}

// MARK: - TodoListModuleInteractorOutput

extension TodoListModulePresenter: TodoListModuleInteractorOutput {
    
}

// MARK: - TodoListModuleViewOutput

extension TodoListModulePresenter: TodoListModuleViewOutput {
    
    func viewDidLoad() {
        Task { @MainActor [weak self] in
            self?.view?.setupInitialState()
        }
    }
}
