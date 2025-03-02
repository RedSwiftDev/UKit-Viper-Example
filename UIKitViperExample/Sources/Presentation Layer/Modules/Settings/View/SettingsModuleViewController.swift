import UIKit

final class SettingsModuleViewController: UIViewController {

    // MARK: - Properties
    
    var output: (any SettingsModuleViewOutput)?
    
    // MARK: - Methods
    
    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        self.output?.viewDidLoad()
    }

}

// MARK: - SettingsModuleViewInput

extension SettingsModuleViewController: SettingsModuleViewInput {
    
    func setupInitialState() {
        
    }
    
    func setupTabBarItem() {
        self.title = "Settings"
        self.tabBarItem.image = UIImage(systemName: "gearshape")
        self.tabBarItem.selectedImage = UIImage(systemName: "gearshape.fill")
    }
}
