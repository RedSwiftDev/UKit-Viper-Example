import UIKit

@MainActor protocol ModuleRouterInput: AnyObject {
    
    // MARK: UIViewController
    
    @MainActor func present(viewController: UIViewController, animated: Bool)
    @MainActor func present(
        viewController: UIViewController,
        animated: Bool,
        completion: @escaping () -> Void
    )
    
    @MainActor func dismiss(animated: Bool)
    @MainActor func dismiss(animated: Bool, completion: @escaping () -> Void)
    
    // MARK: UINavigationController
    
    @MainActor func open(viewController: UIViewController, animated: Bool)
    @MainActor func open(viewControllers: UIViewController..., animated: Bool)
    @MainActor func open(viewControllers: [UIViewController], animated: Bool)
    
    @MainActor func push(viewController: UIViewController, animated: Bool)
    @MainActor func push(viewControllers: UIViewController..., animated: Bool)
    @MainActor func push(viewControllers: [UIViewController], animated: Bool)
    
    @MainActor func pop(animated: Bool)
    @MainActor func pop(to viewController: UIViewController, animated: Bool)
    @MainActor func popToRoot(animated: Bool)
    
    // MARK: UITabBarController
    
    @MainActor func appendTab(viewController: UIViewController, animated: Bool)
    @MainActor func insertTab(
        viewController: UIViewController,
        at index: Int,
        animated: Bool
    )
    @MainActor func removeTab(viewController: UIViewController, animated: Bool)
}
