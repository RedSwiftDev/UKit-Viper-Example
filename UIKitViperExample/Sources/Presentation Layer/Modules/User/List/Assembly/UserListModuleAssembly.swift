import UIKit

final class UserListModuleAssembly {
    
    @MainActor static func makeModule(output: (any UserListModuleOutput)? = nil) -> (UIViewController, UserListModuleInput) {
        let viewController = UserListModuleViewController(
            nibName: "UserListModuleViewController",
            bundle: .main
        )
        let interactor = UserListModuleInteractor()
        let presenter = UserListModulePresenter(
            output: output,
            interactor: interactor,
            view: viewController
        )
        
        interactor.output = presenter
        viewController.output = presenter
        
        return (viewController, presenter)
    }
}
