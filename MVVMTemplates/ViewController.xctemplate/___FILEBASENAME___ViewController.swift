//___FILEHEADER___

import UIKit
import HDCommons

class ___FILEBASENAMEASIDENTIFIER___: ViewControllerWithCustomNavigation {
    
    let viewModel: ___VARIABLE_productName___ViewModel
    
    init() {
        self.viewModel = ___VARIABLE_productName___ViewModel()
        super.init(forClassType: ___VARIABLE_productName___ViewController.self, inBundle: Bundle(for: ___VARIABLE_productName___ViewController.self), havingDefaultBack: false)
        self.bindToViewModel()
    }
    
    private func bindToViewModel() {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
