//
//  ListRouter.swift
//  Viper
//
//  Created by José Antônio Linch Burmann on 10/03/22.
//

import UIKit

class ListRouter: PresenterToRouterListProtocol {
    
    static func createModule() -> UINavigationController {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "Main") as! MovieListViewController
        let presenter: ViewToPresenterListProtocol & InteractorToPresenterListProtocol = ListPresenter()
        let interactor = ListInteractor()
        let router = ListRouter()
        
        vc.presenter = presenter
        presenter.view = vc
        presenter.router = router
        presenter.interactor = interactor
        
        interactor.presenter = presenter
        
        let navigationController = UINavigationController(rootViewController: vc)
        
        return navigationController
        
    }
    
    func pushToMovieDetail(on view: PresenterToViewListProtocol, with movie: Movie) {
        let detailViewController = DetailRouter.createModule(with: movie)
        
        let viewController = view as! MovieListViewController
        
        viewController.navigationController?.pushViewController(detailViewController, animated: true)
    }
    
    
}
