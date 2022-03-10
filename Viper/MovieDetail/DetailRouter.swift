//
//  DetailRouter.swift
//  Viper
//
//  Created by José Antônio Linch Burmann on 10/03/22.
//

import Foundation
import UIKit

class DetailRouter: PresenterToRouterDetailProtocol {
    
    static func createModule(with movie: Movie) -> UIViewController {
        let storyboard = UIStoryboard(name: "Detail", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "Detail") as! MovieDetailViewController
        let presenter: ViewToPresenterDetailProtocol & InteractorToPresenterDetailProtocol = DetailPresenter()
        
        vc.presenter = presenter
        vc.presenter?.router = DetailRouter()
        vc.presenter?.view = vc
        vc.presenter?.interactor = DetailInteractor()
        vc.presenter?.interactor?.movie = movie
        vc.presenter?.interactor?.presenter = presenter
        
        return vc
    }
    
    
}
