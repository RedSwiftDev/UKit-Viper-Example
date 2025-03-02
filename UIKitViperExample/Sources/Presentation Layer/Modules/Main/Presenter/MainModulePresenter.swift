import Foundation

final class MainModulePresenter {
    
    // MARK: - Properties
    
    private let interactor: any MainModuleInteractorInput
    private let router: any MainModuleRouterInput
    private weak var view: (any MainModuleViewInput)?
    
    // MARK: Inputs
    
    private weak var postList: (any PostListModuleInput)?
    private weak var albumList: (any AlbumListModuleInput)?
    
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
    
    func viewDidAppear() {
        Task { @MainActor [weak self] in
            self?.setupTabs()
        }
    }
}

// MARK: - PostListModuleOutput

extension MainModulePresenter: PostListModuleOutput {
    
}

// MARK: - AlbumListModuleOutput

extension MainModulePresenter: AlbumListModuleOutput {
    
}

// MARK: - Private

private extension MainModulePresenter {
    
    @MainActor func setupTabs() {
        self.setupPostListTabIfNeeded()
        self.setupAlbumListTabIfNeeded()
    }
    
    @MainActor func setupPostListTabIfNeeded() {
        guard self.postList == nil else { return }
        let (postListVC, postListInput) = PostListModuleAssembly.makeModule(output: self)
        self.postList = postListInput
        self.router.insertTab(viewController: postListVC, at: 0, animated: false)
        postListInput.prepareTabBarItem()
    }
    
    @MainActor func setupAlbumListTabIfNeeded() {
        guard self.albumList == nil else { return }
        let (albumListVC, albumListInput) = AlbumListModuleAssembly.makeModule(output: self)
        self.albumList = albumListInput
        self.router.insertTab(viewController: albumListVC, at: 1, animated: false)
        albumListInput.prepareTabBarItem()
    }
}
