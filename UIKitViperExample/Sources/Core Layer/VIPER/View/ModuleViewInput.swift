import Foundation

@MainActor protocol ModuleViewInput: AnyObject {
    @MainActor func setupInitialState()
}
