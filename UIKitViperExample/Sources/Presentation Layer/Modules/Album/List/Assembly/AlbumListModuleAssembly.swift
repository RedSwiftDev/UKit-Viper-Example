import UIKit

final class AlbumListModuleAssembly {
    
    @MainActor static func makeModule(output: (any AlbumListModuleOutput)? = nil) -> (UIViewController, AlbumListModuleInput) {
        let viewController = AlbumListModuleViewController(
            nibName: "AlbumListModuleViewController",
            bundle: .main
        )
        let interactor = AlbumListModuleInteractor()
        let presenter = AlbumListModulePresenter(
            output: output,
            interactor: interactor,
            view: viewController
        )
        
        interactor.output = presenter
        viewController.output = presenter
        
        return (viewController, presenter)
    }
}
