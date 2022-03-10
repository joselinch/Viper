//
//  DetailPresenter.swift
//  Viper
//
//  Created by José Antônio Linch Burmann on 10/03/22.
//

import Foundation

class DetailPresenter: ViewToPresenterDetailProtocol {
    var view: PresenterToViewDetailProtocol?
    
    var interactor: PresenterToInteractorDetailProtcol?
    
    var router: PresenterToRouterDetailProtocol?
    
    func viewDidLoad() {
        interactor?.getData()
    }
    
    
}

extension DetailPresenter: InteractorToPresenterDetailProtocol {
    
    func getDataSuccess(movie: Movie) {
        view?.retrieveMovie(movie: movie)
    }
    
}
