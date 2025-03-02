import Foundation

final class SettingsModulePresenter {
    
    // MARK: - Properties
    
    private weak var output: (any SettingsModuleOutput)?
    private let interactor: any SettingsModuleInteractorInput
    private weak var view: (any SettingsModuleViewInput)?
    
    // MARK: - Init
    
    init(
        output: (any SettingsModuleOutput)? = nil,
        interactor: any SettingsModuleInteractorInput,
        view: any SettingsModuleViewInput
    ) {
        self.output = output
        self.interactor = interactor
        self.view = view
    }
}

// MARK: - SettingsModuleInput

extension SettingsModulePresenter: SettingsModuleInput {
    
    func prepareTabBarItem() {
        Task { @MainActor [weak self] in
            self?.view?.setupTabBarItem()
        }
    }
}

// MARK: - SettingsModuleInteractorOutput

extension SettingsModulePresenter: SettingsModuleInteractorOutput {
    
}

// MARK: - SettingsModuleViewOutput

extension SettingsModulePresenter: SettingsModuleViewOutput {
    
    func viewDidLoad() {
        Task { @MainActor [weak self] in
            self?.view?.setupInitialState()
        }
    }
}
