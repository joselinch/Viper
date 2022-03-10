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
        
        let _ = Movie(id: 1, title: "Titulo 01", overview: "mt bom", rating: 0.0)
        
        let movies = [Movie(id: 1, title: "Titulo 01", overview: "mt bom", rating: 0.4), Movie(id: 2, title: "Titulo 02", overview: "horrivel", rating: 9.4), Movie(id: 3, title: "Titulo 03", overview: "Fala galera bruninho s07 de volta", rating: 10.0), Movie(id: 4, title: "Titulo 04", overview: "UAIDUHAIDUAIDUAIDAUDHIAUDHAIDUHAIDUAHIDUAHIDAUHDIAUDHAIUDHAIUDHAIDUHAIDUHAIDUAHIDASUHDIASUDHASIDUAHSDISDHAIDHDIUHAIDSHDIASUDAHSIDHAIUAHDIUDHASIUDASHIDAUSDHAIUDHAIDHAIDUHASIDASHUDUIASDHAISDFUHAISHSAIUASHIUDAUHDSIUASDUIASHASHUDAHUIDIAHIASUDHASIUDASHUIDHSAUIDUIHASDUSAHISUDHASIDUASHDIASUDHASISDUHSAISUDHASIUDHASIUSHDIAUDHAIUDSHAIDUSHAISUDHAIDSAHISUHDUSAIDUHAIDUSAIUHDIHUAIUDHUASIUDHUASIDUASUHDIUASIHDASIUDUHSAIUDASDHUAIUSDHASIUDHAS", rating: 4.0)]
        
//        let serverData = MovieList(someData: [Movie(id: 1, title: "Titulo 01", overview: "mt bom", rating: 0.4), Movie(id: 2, title: "Titulo 02", overview: "horrivel", rating: 9.4), Movie(id: 3, title: "Titulo 03", overview: "Fala galera bruninho s07 de volta", rating: 10.0), Movie(id: 4, title: "Titulo 04", overview: "UAIDUHAIDUAIDUAIDAUDHIAUDHAIDUHAIDUAHIDUAHIDAUHDIAUDHAIUDHAIUDHAIDUHAIDUHAIDUAHIDASUHDIASUDHASIDUAHSDISDHAIDHDIUHAIDSHDIASUDAHSIDHAIUAHDIUDHASIUDASHIDAUSDHAIUDHAIDHAIDUHASIDASHUDUIASDHAISDFUHAISHSAIUASHIUDAUHDSIUASDUIASHASHUDAHUIDIAHIASUDHASIUDASHUIDHSAUIDUIHASDUSAHISUDHASIDUASHDIASUDHASISDUHSAISUDHASIUDHASIUSHDIAUDHAIUDSHAIDUSHAISUDHAIDSAHISUHDUSAIDUHAIDUSAIUHDIHUAIUDHUASIUDHUASIDUASUHDIUASIHDASIUDUHSAIUDASDHUAIUSDHASIUDHAS", rating: 4.0)])
        
        self.presenter?.fetchQuotesSuccess(movie: movies)

    }
    
    
}
