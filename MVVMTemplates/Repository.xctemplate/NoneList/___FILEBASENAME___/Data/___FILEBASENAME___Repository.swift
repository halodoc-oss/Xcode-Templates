//___FILEHEADER___

import Foundation
import PromiseKit

class ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_productName___RepositoryProtocol {
    
    let remoteDatasource: ___VARIABLE_productName___RemoteDataSource
    
    init(_ remoteDatasource: ___VARIABLE_productName___RemoteDataSource) {
        self.remoteDatasource = remoteDatasource
    }
    
    func fetch___VARIABLE_productName___() -> Promise<___VARIABLE_productName___ModelList> {
        self.remoteDatasource.fetch___VARIABLE_productName___()
    }
}
