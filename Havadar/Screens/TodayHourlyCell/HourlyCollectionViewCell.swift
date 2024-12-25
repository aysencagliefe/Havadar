//
//  HourlyCollectionViewCell.swift
//  Havadar
//
//  Created by Ayşen Çağlı Efe on 19.12.2024.
//

import UIKit

class HourlyCollectionViewCell: UICollectionViewCell {
    
    var hourlyGuess: Tahmin? {
        didSet {
            guard let hourlyGuess else { return }
            timeHourlyLabel.text = dateFormatter(dateString: hourlyGuess.tarih)
            skyHourlyimage.image = UIImage(named: hourlyGuess.hadise)
            temperatureHourlyLabel.text = String(hourlyGuess.sicaklik)
        }
    }

    @IBOutlet weak var hourlyView: UIView!
    @IBOutlet weak var timeHourlyLabel: UILabel!
    @IBOutlet weak var skyHourlyimage: UIImageView!
    @IBOutlet weak var temperatureHourlyLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        hourlyView.layer.cornerRadius = 10
        hourlyView.layer.borderWidth = 1
        hourlyView.layer.borderColor = UIColor.lightGray.cgColor
        hourlyView.backgroundColor = UIColor.clear
       
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

