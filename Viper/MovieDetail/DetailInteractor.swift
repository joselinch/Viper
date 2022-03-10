//
//  DetailInteractor.swift
//  Viper
//
//  Created by José Antônio Linch Burmann on 10/03/22.
//

import Foundation

class DetailInteractor: PresenterToInteractorDetailProtcol {
    
    var presenter: InteractorToPresenterDetailProtocol?
    
    var movie: Movie?
    
    func getData() {
        self.presenter?.getDataSuccess(movie: movie!)
    }
    
    
}
