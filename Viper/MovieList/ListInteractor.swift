//
//  ListInteractor.swift
//  Viper
//
//  Created by José Antônio Linch Burmann on 10/03/22.
//

import Foundation

class ListInteractor: PresenterToInteractorListProtocol {
    
    var presenter: InteractorToPresenterListProtocol?
    
    func loadMovies() {
        
        let data = Movie(title: "Titulo 01", score: 22, description: "Descricao 01")
        data.title = "Teste 01"
        data.description = "Descricao 01"
        data.score = 22
        
        let serverData = MovieList(someData: [Movie(title: "Titulo 01", score: 22, description: "Descricao 01"), Movie(title: "Titulo 02", score: 22, description: "Descricao 02"), Movie(title: "Titulo 03", score: 22, description: "Descricao 03"), Movie(title: "Titulo 04", score: 22, description: "Descricao 04")])
        
        self.presenter?.fetchQuotesSuccess(movie: serverData.someData)

    }
    
    
}
