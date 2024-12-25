//
//  NowWeatherCollectionViewCell.swift
//  Havadar
//
//  Created by Ayşen Çağlı Efe on 4.12.2024.
//

import UIKit

class NowWeatherCollectionViewCell: UICollectionViewCell {

    weak var delegate: NowWeatherCollectionViewCellDelegate?
    
    @IBOutlet weak var nowWeatherView: UIView!
    @IBOutlet weak var cityNameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var visualSkyLabel: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var humidityLabel: UILabel!
    @IBOutlet weak var windyLabel: UILabel!
    @IBOutlet weak var pressureAirLabel: UILabel!
    
    
    var nowWeatherResponse : NowWeatherResponseElement? {
        didSet {
            if let nowWeatherResponse {
                cityNameLabel.text = "\(nowWeatherResponse.istNo)"
                dateLabel.text = dateFormatter(dateString: nowWeatherResponse.veriZamani)
                visualSkyLabel.image = UIImage(named: nowWeatherResponse.hadiseKodu)
                temperatureLabel.text = String(nowWeatherResponse.sicaklik )
                humidityLabel.text =    String("Nem    \(nowWeatherResponse.nem)")
                windyLabel.text =       String("Rüzgar    \(nowWeatherResponse.ruzgarHiz)")
                pressureAirLabel.text = String("Basınç \(nowWeatherResponse.aktuelBasinc)")
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    @IBAction func addSelectCenterButton(_ sender: UIButton) {
        delegate?.didTapAddButton(in: self)

    }
    

    func dateFormatter(dateString: String) -> String {
        let inputFormatter = DateFormatter()
        inputFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'" // Gelen API formatı

        if let date = inputFormatter.date(from: dateString) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd MMMM HH:mm"
        dateFormatter.locale = Locale(identifier: "tr_TR")
        let formattedDate = dateFormatter.string(from: date)
            return formattedDate
        } else {
            return ""
        }
    }
}

protocol NowWeatherCollectionViewCellDelegate: AnyObject {
    func didTapAddButton(in cell: NowWeatherCollectionViewCell)
}
