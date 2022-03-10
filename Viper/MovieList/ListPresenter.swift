//
//  ListPresenter.swift
//  Viper
//
//  Created by José Antônio Linch Burmann on 10/03/22.
//

import Foundation

class ListPresenter: ViewToPresenterListProtocol {
    
    
    weak var view: PresenterToViewListProtocol?
    var interactor: PresenterToInteractorListProtocol?
    var router: PresenterToRouterListProtocol?
    
   
    func didTap(movie: Movie) {
        print(movie.title)
        router?.pushToMovieDetail(on: view!, with: movie)
    }
    
    func refresh() {
        interactor?.loadMovies()
    }
}

extension ListPresenter: InteractorToPresenterListProtocol {
    func fetchQuotesSuccess(movie: [Movie]) {
        view?.onFetchQuotesSuccess(movie: movie)
    }
    
    func fetchQuotesFailure(errorCode: Int) {
        print(errorCode)
    }
}

