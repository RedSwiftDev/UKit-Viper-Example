import Foundation

final class PostListModulePresenter {
    
    // MARK: - Properties
    
    private weak var output: (any PostListModuleOutput)?
    private let interactor: any PostListModuleInteractorInput
    private weak var view: (any PostListModuleViewInput)?
    
    // MARK: - Init
    
    init(
        output: (any PostListModuleOutput)? = nil,
        interactor: any PostListModuleInteractorInput,
        view: any PostListModuleViewInput
    ) {
        self.output = output
        self.interactor = interactor
        self.view = view
    }
}

// MARK: - PostListModuleInput

extension PostListModulePresenter: PostListModuleInput {
    
}

// MARK: - PostListModuleInteractorOutput

extension PostListModulePresenter: PostListModuleInteractorOutput {
    
}

// MARK: - PostListModuleViewOutput

extension PostListModulePresenter: PostListModuleViewOutput {
    
    func viewDidLoad() {
        Task { @MainActor [weak self] in
            self?.view?.setupInitialState()
        }
    }
}
