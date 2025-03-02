import UIKit

final class MainModuleViewController: UITabBarController {
    
    // MARK: - Properties
    
    var output: (any MainModuleViewOutput)?
    
    // MARK: - Methods
    
    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        self.output?.viewDidLoad()
    }

}

// MARK: - MainModuleViewInput

extension MainModuleViewController: MainModuleViewInput {
    
    func setupInitialState() {
        
    }
}
