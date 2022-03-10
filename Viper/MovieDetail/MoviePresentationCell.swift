//
//  MoviePresentationCell.swift
//  Viper
//
//  Created by Marina De Pazzi on 10/03/22.
//

import UIKit

class MoviePresentationCell: UITableViewCell {

    @IBOutlet weak var imagePoster: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var secondaryLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
