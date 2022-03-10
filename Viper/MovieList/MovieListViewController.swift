//
//  ListViewController.swift
//  Viper
//
//  Created by José Antônio Linch Burmann on 10/03/22.
//

import UIKit

class MovieListViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var presenter: ViewToPresenterListProtocol?
    var movies: [Movie] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        presenter?.refresh()
    }
    
}

extension MovieListViewController: PresenterToViewListProtocol {
    
    func onFetchQuotesSuccess(movie: [Movie]) {
        self.movies = movie
    }
    
    func onFetchQuotesFailure(error: String) {
        print("Erro")
    }
    
}

extension MovieListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath) as! MovieListCell
        
        let currentMovie = movies[indexPath.row]
        
        cell.titleLabel.text = currentMovie.title
        cell.descriptionLabel.text = currentMovie.description
        cell.ratingLabel.text = String(currentMovie.rating)
        cell.imagePoster.image = currentMovie.imageCover
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter?.didTap(movie: movies[indexPath.row])
    }
    
}



