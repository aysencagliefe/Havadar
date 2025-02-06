//
//  SavedCitiesTableViewCell.swift
//  Havadar
//
//  Created by Ayşen Çağlı Efe on 21.01.2025.
//

import UIKit

class SavedCitiesTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var savedCitiesView: UIView!
    @IBOutlet weak var cityLabel: UILabel!
    var city : SearchCitiesResponse? {
        didSet {
            cityLabel.text = (city?.il ?? "") + " / " + (city?.ilce ?? "")
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        savedCitiesView.setupCardView()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
  
}
