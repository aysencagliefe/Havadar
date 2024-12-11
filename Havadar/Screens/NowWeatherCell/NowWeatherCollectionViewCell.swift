//
//  NowWeatherCollectionViewCell.swift
//  Havadar
//
//  Created by Ayşen Çağlı Efe on 4.12.2024.
//

import UIKit

class NowWeatherCollectionViewCell: UICollectionViewCell {

    
    @IBOutlet weak var nowWeatherView: UIView!
    @IBOutlet weak var cityNameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var visualSkyLabel: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var humidityLabel: UILabel!
    @IBOutlet weak var windyLabel: UILabel!
    @IBOutlet weak var pressureAirLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

}
