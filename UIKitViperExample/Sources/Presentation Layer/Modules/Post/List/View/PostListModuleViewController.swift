import UIKit

final class PostListModuleViewController: UIViewController {

    // MARK: - Properties
    
    var output: (any PostListModuleViewOutput)?
    
    // MARK: - Methods
    
    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        self.output?.viewDidLoad()
    }

}

// MARK: - PostListModuleViewInput

extension PostListModuleViewController: PostListModuleViewInput {
    
    func setupInitialState() {
        
    }
    
    func setupTabBarItem() {
        self.title = "Post List"
        self.tabBarItem.image = UIImage(systemName: "rectangle.stack")
        self.tabBarItem.selectedImage = UIImage(systemName: "rectangle.stack.fill")
    }
}
