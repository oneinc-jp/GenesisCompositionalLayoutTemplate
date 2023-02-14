//
//  ExampleModuleRouter
//  GenesisCompositionalLayoutTemplate
//
//  Created by Akira Matsuda on 2023/02/11.
//

import UIKit

protocol ExampleModuleRouterInput: AnyObject {
    // MARK: View transitions
}

final class ExampleModuleRouter {
    private unowned let viewController: ExampleModuleViewController

    init(viewController: ExampleModuleViewController) {
        self.viewController = viewController
    }

    static func assembleModule() -> ExampleModuleViewController {
        let view = ExampleModuleViewController()
        let interactor = ExampleModuleInteractor()
        let router = ExampleModuleRouter(viewController: view)
        let presenter = ExampleModulePresenter(view: view, interactor: interactor, router: router)

        view.presenter = presenter
        interactor.presenter = presenter

        return view
    }
}

extension ExampleModuleRouter: ExampleModuleRouterInput {}
