import Foundation

final class AlbumListModulePresenter {
    
    // MARK: - Properties
    
    private weak var output: (any AlbumListModuleOutput)?
    private let interactor: any AlbumListModuleInteractorInput
    private weak var view: (any AlbumListModuleViewInput)?
    
    // MARK: - Init
    
    init(
        output: (any AlbumListModuleOutput)? = nil,
        interactor: any AlbumListModuleInteractorInput,
        view: any AlbumListModuleViewInput
    ) {
        self.output = output
        self.interactor = interactor
        self.view = view
    }
}

// MARK: - AlbumListModuleInput

extension AlbumListModulePresenter: AlbumListModuleInput {
    
    func prepareTabBarItem() {
        Task { @MainActor [weak self] in
            self?.view?.setupTabBarItem()
        }
    }
}

// MARK: - AlbumListModuleInteractorOutput

extension AlbumListModulePresenter: AlbumListModuleInteractorOutput {
    
}

// MARK: - AlbumListModuleViewOutput

extension AlbumListModulePresenter: AlbumListModuleViewOutput {
    
    func viewDidLoad() {
        Task { @MainActor [weak self] in
            self?.view?.setupInitialState()
        }
    }
}
