//
//  DetailProtocols.swift
//  Viper
//
//  Created by José Antônio Linch Burmann on 10/03/22.
//

import UIKit

protocol PresenterToViewDetailProtocol: class {
    
    func retrieveMovie(movie: Movie)
}

protocol ViewToPresenterDetailProtocol: class {
    
    var view: PresenterToViewDetailProtocol? { get set }
    var interactor: PresenterToInteractorDetailProtcol? { get set }
    var router: PresenterToRouterDetailProtocol? { get set }

    func viewDidLoad()
    
}

protocol PresenterToInteractorDetailProtcol: class {
    
    var presenter: InteractorToPresenterDetailProtocol? { get set }
    
    var movie: Movie? { get set }
    
    func getData()
    
}

protocol InteractorToPresenterDetailProtocol: class {
    
    func getDataSuccess(movie: Movie)
    
}

protocol PresenterToRouterDetailProtocol: class {
    
    static func createModule(with movie: Movie) -> UIViewController
    
}
