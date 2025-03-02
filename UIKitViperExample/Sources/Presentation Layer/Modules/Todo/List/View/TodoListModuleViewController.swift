import UIKit

final class TodoListModuleViewController: UIViewController {

    // MARK: - Properties
    
    var output: (any TodoListModuleViewOutput)?
    
    // MARK: - Methods
    
    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        self.output?.viewDidLoad()
    }

}

// MARK: - TodoListModuleViewInput

extension TodoListModuleViewController: TodoListModuleViewInput {
    
    func setupInitialState() {
        
    }
    
    func setupTabBarItem() {
        self.title = "Todo List"
        self.tabBarItem.image = UIImage(systemName: "checkmark.rectangle.stack")
        self.tabBarItem.selectedImage = UIImage(systemName: "checkmark.rectangle.stack.fill")
    }
}
