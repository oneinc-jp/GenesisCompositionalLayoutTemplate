//
//  ExampleModulePresenter
//  GenesisCompositionalLayoutTemplate
//
//  Created by Akira Matsuda on 2023/02/11.
//

import CompositionalLayoutViewController
import CompositionalLayoutViewControllerExtension
import Foundation

protocol ExampleModulePresenterInput: CollectionViewPresenterInput {
    // MARK: View Life-Cycle methods

    func viewDidLoad()

    // MARK: Other methods called from View
}

final class ExampleModulePresenter {
    // MARK: VIPER properties

    weak var view: ExampleModuleViewInput!
    var interactor: ExampleModuleInteractorInput!
    var router: ExampleModuleRouterInput!

    // MARK: Stored instance properties

    // MARK: Computed instance properties

    init(view: ExampleModuleViewInput, interactor: ExampleModuleInteractorInput, router: ExampleModuleRouterInput) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
}

extension ExampleModulePresenter: ExampleModulePresenterInput {
    var sections: [CollectionViewSection] {
        return interactor.sections
    }

    func viewDidLoad() {
        // TODO: Implement if needed
    }

    func section(for sectionIndex: Int) -> CollectionViewSection {
        return interactor.section(for: sectionIndex)
    }

    func didItemSelect(indexPath: IndexPath) {
        // TODO:
    }
}

extension ExampleModulePresenter: ExampleModuleInteractorOutput {}