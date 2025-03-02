import UIKit

final class InitialModuleAssembly {
    
    @MainActor static func makeModule() -> UIViewController {
        let viewController = InitialModuleViewController(
            nibName: "InitialModuleViewController",
            bundle: .main
        )
        let interactor = InitialModuleInteractor()
        let router = InitialModuleRouter()
        let presenter = InitialModulePresenter(
            interactor: interactor,
            router: router,
            view: viewController
        )
        
        interactor.output = presenter
        router.viewController = viewController
        viewController.output = presenter
        
        return viewController
    }
}
