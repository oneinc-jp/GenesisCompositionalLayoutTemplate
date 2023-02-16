//
//  ExampleModuleViewController
//  GenesisCompositionalLayoutTemplate
//
//  Created by Akira Matsuda on 2023/02/11.
//

import CompositionalLayoutViewController
import CompositionalLayoutViewControllerExtension
import UIKit

// MARK: - ExampleModuleViewInput

protocol ExampleModuleViewInput: CollectionViewInput {
    // MARK: Callback from presenter
}

// MARK: - ExampleModuleViewController

final class ExampleModuleViewController: CompositionalLayoutViewController {
    // MARK: Stored instance properties

    var presenter: ExampleModulePresenterInput!

    // MARK: Computed instance properties

    // MARK: IBOutlets

    // MARK: View Life-Cycle methods

    override func viewDidLoad() {
        super.viewDidLoad()
        provider = self
        presenter.viewDidLoad()
    }

    // MARK: Other private methods
}

// MARK: SectionProvider

extension ExampleModuleViewController: SectionProvider {
    var sections: [CollectionViewSection] {
        return presenter.sections
    }
}

// MARK: ExampleModuleViewInput

extension ExampleModuleViewController: ExampleModuleViewInput {
    func update(sections: [CollectionViewSection]) {
        // TODO:
        updateDataSource(sections)
    }
}
