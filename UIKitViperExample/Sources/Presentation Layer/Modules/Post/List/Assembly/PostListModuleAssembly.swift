import UIKit

final class PostListModuleAssembly {
    
    @MainActor static func makeModule(output: (any PostListModuleOutput)? = nil) -> (UIViewController, PostListModuleInput) {
        let viewController = PostListModuleViewController(
            nibName: "PostListModuleViewController",
            bundle: .main
        )
        let interactor = PostListModuleInteractor()
        let presenter = PostListModulePresenter(
            output: output,
            interactor: interactor,
            view: viewController
        )
        
        interactor.output = presenter
        viewController.output = presenter
        
        return (viewController, presenter)
    }
}
