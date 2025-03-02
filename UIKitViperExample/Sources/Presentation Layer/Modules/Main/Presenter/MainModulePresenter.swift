import Foundation

final class MainModulePresenter {
    
    // MARK: - Properties
    
    private let interactor: any MainModuleInteractorInput
    private let router: any MainModuleRouterInput
    private weak var view: (any MainModuleViewInput)?
    
    // MARK: - Init
    
    init(
        interactor: any MainModuleInteractorInput,
        router: any MainModuleRouterInput,
        view: any MainModuleViewInput
    ) {
        self.interactor = interactor
        self.router = router
        self.view = view
    }
}

// MARK: - MainModuleInteractorOutput

extension MainModulePresenter: MainModuleInteractorOutput {
    
}

// MARK: - MainModuleViewOutput

extension MainModulePresenter: MainModuleViewOutput {
    
    func viewDidLoad() {
        Task { @MainActor [weak self] in
            self?.view?.setupInitialState()
        }
    }
}
