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
    
    
    var nowWeatherResponse : NowWeatherResponse?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        if let nowWeatherResponse {
            cityNameLabel.text = "\(nowWeatherResponse.istNo)"
            dateLabel.text = nowWeatherResponse.veriZamani
            visualSkyLabel.image = UIImage(named: nowWeatherResponse.hadiseKodu)
            temperatureLabel.text = String(nowWeatherResponse.sicaklik)
            humidityLabel.text = String(nowWeatherResponse.nem)
            windyLabel.text = String(nowWeatherResponse.ruzgarHiz)
            pressureAirLabel.text = String(nowWeatherResponse .aktuelBasinc)
        }
        
    }
    
}
