import UIKit

final class MainModuleAssembly {
    
    @MainActor static func makeModule() -> UIViewController {
        let viewController = MainModuleViewController(
            nibName: "MainModuleViewController",
            bundle: .main
        )
        let interactor = MainModuleInteractor()
        let router = MainModuleRouter()
        let presenter = MainModulePresenter(
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
