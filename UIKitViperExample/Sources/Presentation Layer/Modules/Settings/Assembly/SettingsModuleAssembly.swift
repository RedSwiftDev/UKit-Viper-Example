import UIKit

final class SettingsModuleAssembly {
    
    @MainActor static func makeModule(output: (any SettingsModuleOutput)? = nil) -> (UIViewController, SettingsModuleInput) {
        let viewController = SettingsModuleViewController(
            nibName: "SettingsModuleViewController",
            bundle: .main
        )
        let interactor = SettingsModuleInteractor()
        let presenter = SettingsModulePresenter(
            output: output,
            interactor: interactor,
            view: viewController
        )
        
        interactor.output = presenter
        viewController.output = presenter
        
        return (viewController, presenter)
    }
}
