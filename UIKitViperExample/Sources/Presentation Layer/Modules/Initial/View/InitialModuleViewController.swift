import UIKit

final class InitialModuleViewController: UIViewController {
    
    // MARK: - Properties
    
    var output: (any InitialModuleViewOutput)?
    
    // MARK: - Methods
    
    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        self.output?.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.output?.viewDidAppear()
    }

}

// MARK: - InitialModuleViewInput

extension InitialModuleViewController: InitialModuleViewInput {
    
    func setupInitialState() {
        self.view.backgroundColor = .systemBackground
    }
}
