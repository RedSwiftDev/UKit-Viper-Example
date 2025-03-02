import Foundation

extension ModuleViewOutput {
    
    fileprivate func fatalErrorOnDebug(functionName: String = #function) {
        // Что бы не допускать вызовов методов, которые не реализованы в презентере и получить ошибку при разработке (Debug)
#if DEBUG
        fatalError("Method \(functionName) not implemented in \(Self.self)")
#endif
    }
    
    func viewDidLoad() {
        fatalErrorOnDebug()
    }
    
    func viewIsAppearing() {
        fatalErrorOnDebug()
    }
    
    func viewWillAppear() {
        fatalErrorOnDebug()
    }
    
    func viewDidAppear() {
        fatalErrorOnDebug()
    }
    
    func viewWillDisappear() {
        fatalErrorOnDebug()
    }
    
    func viewDidDisappear() {
        fatalErrorOnDebug()
    }
}
