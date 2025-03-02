import Foundation

protocol ModuleViewOutput: AnyObject {
    func viewDidLoad()
    
    func viewIsAppearing()
    func viewWillAppear()
    func viewDidAppear()
    
    func viewWillDisappear()
    func viewDidDisappear()
}
