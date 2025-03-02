import Foundation

final class InitialModulePresenter {
    
    // MARK: - Properties
    
    private let interactor: any InitialModuleInteractorInput
    private let router: any InitialModuleRouterInput
    private weak var view: (any InitialModuleViewInput)?
    
    // MARK: - Init
    
    init(
        interactor: any InitialModuleInteractorInput,
        router: any InitialModuleRouterInput,
        view: any InitialModuleViewInput
    ) {
        self.interactor = interactor
        self.router = router
        self.view = view
    }
}

// MARK: - InitialModuleInteractorOutput

extension InitialModulePresenter: InitialModuleInteractorOutput {
    
}

// MARK: - InitialModuleViewOutput

extension InitialModulePresenter: InitialModuleViewOutput {
    
    func viewDidLoad() {
        Task { @MainActor [weak self] in
            self?.view?.setupInitialState()
        }
    }
    
    func viewDidAppear() {
        Task { @MainActor [weak self] in
            self?.openMainScreen()
        }
    }
}

// MARK: - Private

private extension InitialModulePresenter {
    
    @MainActor func openMainScreen() {
        let mainVC = MainModuleAssembly.makeModule()
        self.router.open(viewController: mainVC, animated: true)
    }
}
