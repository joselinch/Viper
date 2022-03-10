//
//  ListProtocols.swift
//  Viper
//
//  Created by José Antônio Linch Burmann on 10/03/22.
//

import UIKit

protocol PresenterToViewListProtocol: class {
    
    func onFetchQuotesSuccess(movie: [Movie])
    func onFetchQuotesFailure(error: String)
    
}

protocol ViewToPresenterListProtocol: class {
    
    var view: PresenterToViewListProtocol? {get set}
    var interactor: PresenterToInteractorListProtocol? {get set}
    var router: PresenterToRouterListProtocol? {get set}
    func refresh()
    func didTap(movie: Movie)
    
}

protocol PresenterToInteractorListProtocol: class {
    
    var presenter: InteractorToPresenterListProtocol? {get set}
    func loadMovies()
    
}

protocol InteractorToPresenterListProtocol: class {
    
    func fetchQuotesSuccess(movie: [Movie])
    func fetchQuotesFailure(errorCode: Int)
    
}

protocol PresenterToRouterListProtocol: class {
    
    static func createModule() -> UINavigationController
    
    func pushToMovieDetail(on view: PresenterToViewListProtocol, with movie: Movie)
    
}
