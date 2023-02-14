//
//  ExampleModuleInteractor
//  GenesisCompositionalLayoutTemplate
//
//  Created by Akira Matsuda on 2023/02/11.
//

import CompositionalLayoutViewController
import CompositionalLayoutViewControllerExtension
import Foundation

protocol ExampleModuleInteractorInput: CollectionViewInteractorInput {
    // MARK: Methods for modifying repository
}

protocol ExampleModuleInteractorOutput: AnyObject {
    // MARK: Callback methods from repository
}

final class ExampleModuleInteractor {
    // MARK: VIPER property
    weak var presenter: ExampleModuleInteractorOutput!

    // MARK: Stored instance properties
    var sections: [CollectionViewSection] = []

    // MARK: Computed instance properties

    // MARK: Initializer
    
    init() {}

    // MARK: Other private methods
}

extension ExampleModuleInteractor: ExampleModuleInteractorInput {}