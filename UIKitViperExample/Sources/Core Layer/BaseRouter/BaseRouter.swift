import UIKit

@MainActor open class BaseRouter {
    
    // MARK: - Properties
    
    weak var viewController: UIViewController?
    
    var navigationController: UINavigationController? {
        guard let navigationController = self.viewController as? UINavigationController else {
            return self.viewController?.navigationController
        }
        return navigationController
    }
    
    var tabBarController: UITabBarController? {
        guard let tabBarController = self.viewController as? UITabBarController else {
            return self.viewController?.tabBarController
        }
        return tabBarController
    }
}

// MARK: - ModuleRouterInput

extension BaseRouter: ModuleRouterInput {
    
    // MARK: UIViewController
    
    func present(viewController: UIViewController, animated: Bool) {
        self.viewController?.present(viewController, animated: animated)
    }
    
    func present(viewController: UIViewController, animated: Bool, completion: @escaping () -> Void) {
        self.viewController?.present(viewController, animated: animated, completion: completion)
    }
    
    func dismiss(animated: Bool) {
        self.viewController?.dismiss(animated: animated)
    }
    
    func dismiss(animated: Bool, completion: @escaping () -> Void) {
        self.viewController?.dismiss(animated: animated, completion: completion)
    }
    
    // MARK: UINavigationController
    
    func open(viewController: UIViewController, animated: Bool) {
        self.navigationController?.setViewControllers(
            [viewController],
            animated: animated
        )
    }
    
    func open(viewControllers: UIViewController..., animated: Bool) {
        self.navigationController?.setViewControllers(viewControllers, animated: animated)
    }
    
    func open(viewControllers: [UIViewController], animated: Bool) {
        self.navigationController?.setViewControllers(viewControllers, animated: animated)
    }
    
    func push(viewController: UIViewController, animated: Bool) {
        self.navigationController?.pushViewController(viewController, animated: animated)
    }
    
    func push(viewControllers: UIViewController..., animated: Bool) {
        self.push(viewControllers: viewControllers, animated: animated)
    }
    
    func push(viewControllers: [UIViewController], animated: Bool) {
        guard var stack = self.navigationController?.viewControllers else { return }
        stack.append(contentsOf: viewControllers)
        self.open(viewControllers: stack, animated: animated)
    }
    
    func pop(animated: Bool) {
        self.navigationController?.popViewController(animated: animated)
    }
    
    func pop(to viewController: UIViewController, animated: Bool) {
        self.navigationController?.popToViewController(viewController, animated: animated)
    }
    
    func popToRoot(animated: Bool) {
        self.navigationController?.popToRootViewController(animated: animated)
    }
    
    // MARK: UITabBarController
    
    func appendTab(viewController: UIViewController, animated: Bool) {
        guard let tbc = self.tabBarController else { return }
        var tabs = tbc.viewControllers ?? []
        tabs.append(viewController)
        tbc.setViewControllers(tabs, animated: animated)
    }
    
    func insertTab(viewController: UIViewController, at index: Int, animated: Bool) {
        guard let tbc = self.tabBarController else { return }
        var tabs = tbc.viewControllers ?? []
        if tabs.count > index {
            tabs.insert(viewController, at: index)
        } else {
            tabs.append(viewController)
        }
        tbc.setViewControllers(tabs, animated: animated)
    }
    
    func removeTab(viewController: UIViewController, animated: Bool) {
        guard let tbc = self.tabBarController, var tabs = tbc.viewControllers else { return }
        let countOfTabs = tabs.count
        tabs.removeAll { $0 === viewController }
        guard countOfTabs != tabs.count else { return }
        tbc.setViewControllers(tabs, animated: animated)
    }
}
