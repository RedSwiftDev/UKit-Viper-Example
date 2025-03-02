import Foundation

final class MainModulePresenter {
    
    // MARK: - Properties
    
    private let interactor: any MainModuleInteractorInput
    private let router: any MainModuleRouterInput
    private weak var view: (any MainModuleViewInput)?
    
    // MARK: Inputs
    
    private weak var postList: (any PostListModuleInput)?
    private weak var albumList: (any AlbumListModuleInput)?
    private weak var todoList: (any TodoListModuleInput)?
    private weak var userList: (any UserListModuleInput)?
    private weak var settings: (any SettingsModuleInput)?
    
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

// MARK: - TodoListModuleOutput

extension MainModulePresenter: TodoListModuleOutput {
    
}

// MARK: - UserListModuleOutput

extension MainModulePresenter: UserListModuleOutput {
    
}

// MARK: - SettingsModuleOutput

extension MainModulePresenter: SettingsModuleOutput {
    
}

// MARK: - Private

private extension MainModulePresenter {
    
    @MainActor func setupTabs() {
        self.setupPostListTabIfNeeded()
        self.setupAlbumListTabIfNeeded()
        self.setupTodoListTabIfNeeded()
        self.setupUserListTabIfNeeded()
        self.setupSettingsTabIfNeeded()
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
    
    @MainActor func setupTodoListTabIfNeeded() {
        guard self.todoList == nil else { return }
        let (todoListVC, todoListInput) = TodoListModuleAssembly.makeModule(output: self)
        self.todoList = todoListInput
        self.router.insertTab(viewController: todoListVC, at: 2, animated: false)
        todoListInput.prepareTabBarItem()
    }
    
    @MainActor func setupUserListTabIfNeeded() {
        guard self.userList == nil else { return }
        let (userListVC, userListInput) = UserListModuleAssembly.makeModule(output: self)
        self.userList = userListInput
        self.router.insertTab(viewController: userListVC, at: 3, animated: false)
        userListInput.prepareTabBarItem()
    }
    
    @MainActor func setupSettingsTabIfNeeded() {
        guard self.settings == nil else { return }
        let (settingsVC, settingsInput) = SettingsModuleAssembly.makeModule(output: self)
        self.settings = settingsInput
        self.router.insertTab(viewController: settingsVC, at: 4, animated: false)
        settingsInput.prepareTabBarItem()
    }
}
