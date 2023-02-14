//
//  ExampleModuleViewController
//  GenesisCompositionalLayoutTemplate
//
//  Created by Akira Matsuda on 2023/02/11.
//

import CompositionalLayoutViewController
import CompositionalLayoutViewControllerExtension
import UIKit

protocol ExampleModuleViewInput: CollectionViewInput {
    // MARK: Callback from presenter
}

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

    override func didSelectItem(at indexPath: IndexPath) {
        presenter.didItemSelect(indexPath: indexPath)
    }
    
    // MARK: Other private methods
}

extension ExampleModuleViewController: SectionProvider {
    var sections: [CollectionViewSection] {
        return presenter.sections
    }
}

extension ExampleModuleViewController: ExampleModuleViewInput {
    func update(sections: [CollectionViewSection]) {
        updateDataSource(sections)
    }
}
