import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    // MARK: - Properties
    
    var window: UIWindow?
    
    // MARK: - Methods

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        self.setupWindow()
        return true
    }
    
    // MARK: Private
    
    private func setupWindow() {
        let bounds = UIScreen.main.bounds
        self.window = UIWindow(frame: bounds)
        self.setupInitialViewController()
        self.window?.makeKeyAndVisible()
    }

    private func setupInitialViewController() {
        let nc = UINavigationController()
        nc.navigationBar.isHidden = true
        self.window?.rootViewController = nc
    }
}
