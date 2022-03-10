//
//  DetailViewController.swift
//  Viper
//
//  Created by José Antônio Linch Burmann on 10/03/22.
//

import UIKit

class MovieDetailViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    
    var presenter: ViewToPresenterDetailProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
    }
}

extension MovieDetailViewController: PresenterToViewDetailProtocol {
    
    func retrieveMovie(movie: Movie) {
        textLabel.text = movie.title
    }
    
    
}
