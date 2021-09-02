//___FILEHEADER___

import UIKit
import HDCommons

class ___FILEBASENAMEASIDENTIFIER___: ViewControllerWithCustomNavigation {
    
    let viewModel: ___VARIABLE_productName___ViewModel
    
    init() {
        let dataSource = ___VARIABLE_productName___RemoteDataSource()
        let repository = ___VARIABLE_productName___Repository(dataSource)
        self.viewModel = ___VARIABLE_productName___ViewModel(repository)
        super.init(forClassType: ___VARIABLE_productName___ViewController.self, inBundle: Bundle(for: ___VARIABLE_productName___ViewController.self), havingDefaultBack: false)
        self.bindToViewModel()
    }
    
    private func bindToViewModel() {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
