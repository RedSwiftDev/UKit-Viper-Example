import Foundation

final class UserListModulePresenter {
    
    // MARK: - Properties
    
    private weak var output: (any UserListModuleOutput)?
    private let interactor: any UserListModuleInteractorInput
    private weak var view: (any UserListModuleViewInput)?
    
    // MARK: - Init
    
    init(
        output: (any UserListModuleOutput)? = nil,
        interactor: any UserListModuleInteractorInput,
        view: any UserListModuleViewInput
    ) {
        self.output = output
        self.interactor = interactor
        self.view = view
    }
}

// MARK: - UserListModuleInput

extension UserListModulePresenter: UserListModuleInput {
    
    func prepareTabBarItem() {
        Task { @MainActor [weak self] in
            self?.view?.setupTabBarItem()
        }
    }
}

// MARK: - UserListModuleInteractorOutput

extension UserListModulePresenter: UserListModuleInteractorOutput {
    
}

// MARK: - UserListModuleViewOutput

extension UserListModulePresenter: UserListModuleViewOutput {
    
    func viewDidLoad() {
        Task { @MainActor [weak self] in
            self?.view?.setupInitialState()
        }
    }
}
