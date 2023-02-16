//
//  ExampleModuleInteractor
//  GenesisCompositionalLayoutTemplate
//
//  Created by Akira Matsuda on 2023/02/11.
//

import CompositionalLayoutViewController
import CompositionalLayoutViewControllerExtension
import Foundation

// MARK: - ExampleModuleInteractorInput

protocol ExampleModuleInteractorInput: CollectionViewInteractorInput {
    // MARK: Methods for modifying repository
}

// MARK: - ExampleModuleInteractorOutput

protocol ExampleModuleInteractorOutput: AnyObject {
    // MARK: Callback methods from repository
}

// MARK: - ExampleModuleInteractor

final class ExampleModuleInteractor {
    // MARK: Lifecycle

    // MARK: Computed instance properties

    // MARK: Initializer

    init() {}

    // MARK: Other private methods

    // MARK: Internal

    // MARK: VIPER property

    weak var presenter: ExampleModuleInteractorOutput!

    // MARK: Stored instance properties

    var sections: [CollectionViewSection] = []
}

// MARK: ExampleModuleInteractorInput

extension ExampleModuleInteractor: ExampleModuleInteractorInput {}
