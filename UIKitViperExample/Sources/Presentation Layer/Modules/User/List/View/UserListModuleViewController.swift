import UIKit

final class UserListModuleViewController: UIViewController {

    // MARK: - Properties
    
    var output: (any UserListModuleViewOutput)?
    
    // MARK: - Methods
    
    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        self.output?.viewDidLoad()
    }

}

// MARK: - UserListModuleViewInput

extension UserListModuleViewController: UserListModuleViewInput {
    
    func setupInitialState() {
        
    }
    
    func setupTabBarItem() {
        self.title = "User List"
        self.tabBarItem.image = UIImage(systemName: "person.3")
        self.tabBarItem.selectedImage = UIImage(systemName: "person.3.fill")
    }
}
