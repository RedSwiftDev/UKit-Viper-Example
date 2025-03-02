import UIKit

final class TodoListModuleAssembly {
    
    @MainActor static func makeModule(output: (any TodoListModuleOutput)? = nil) -> (UIViewController, TodoListModuleInput) {
        let viewController = TodoListModuleViewController(
            nibName: "TodoListModuleViewController",
            bundle: .main
        )
        let interactor = TodoListModuleInteractor()
        let presenter = TodoListModulePresenter(
            output: output,
            interactor: interactor,
            view: viewController
        )
        
        interactor.output = presenter
        viewController.output = presenter
        
        return (viewController, presenter)
    }
}
