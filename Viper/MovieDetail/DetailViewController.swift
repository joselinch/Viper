//
//  DetailViewController.swift
//  Viper
//
//  Created by José Antônio Linch Burmann on 10/03/22.
//

import UIKit

class MovieDetailViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    private let moviePresentationCellID: String = "moviePresentationCell"
    private let movieOverviewCellID: String = "movieOverviewCell"
    
    var presenter: ViewToPresenterDetailProtocol?
    
    var movie: Movie?

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        presenter?.viewDidLoad()
    }
}

extension MovieDetailViewController: PresenterToViewDetailProtocol {
    
    func retrieveMovie(movie: Movie) {
        self.movie = movie
    }
    
}

extension MovieDetailViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movie == nil ? 0 : 2
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let unwrappedMovie = movie else { fatalError("No movie was received to diplay") }
        
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: moviePresentationCellID, for: indexPath) as! MoviePresentationCell
            
            cell.imagePoster.image = unwrappedMovie.imageCover
            cell.titleLabel.text = unwrappedMovie.title
            cell.secondaryLabel.text = unwrappedMovie.overview
            cell.ratingLabel.text = String(unwrappedMovie.rating)
            
            return cell
        }
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: movieOverviewCellID, for: indexPath) as! MovieOverviewCell
            
            cell.titleLabel.text = "Overview"
            cell.descriptionLabel.text = unwrappedMovie.overview
            
            return cell
        }
    }
    
}

