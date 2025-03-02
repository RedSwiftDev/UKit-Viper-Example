import UIKit

final class AlbumListModuleViewController: UIViewController {

    // MARK: - Properties
    
    var output: (any AlbumListModuleViewOutput)?
    
    // MARK: - Methods
    
    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        self.output?.viewDidLoad()
    }

}

// MARK: - AlbumListModuleViewInput

extension AlbumListModuleViewController: AlbumListModuleViewInput {
    
    func setupInitialState() {
        
    }
    
    func setupTabBarItem() {
        self.title = "Album List"
        self.tabBarItem.image = UIImage(systemName: "photo.on.rectangle.angled")
        self.tabBarItem.selectedImage = UIImage(systemName: "photo.on.rectangle.angled.fill")
    }
}
