//
//  TodayHourlyWeatherCollectionViewCell.swift
//  Havadar
//
//  Created by Ayşen Çağlı Efe on 4.12.2024.
//

import UIKit

class TodayHourlyWeatherCollectionViewCell: UICollectionViewCell {
   
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var skyImage: UIImageView!
    @IBOutlet weak var backgraundContainer: UIView!
    @IBOutlet weak var todayCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        /*
        backgraundContainer.layer.cornerRadius = 10
        backgraundContainer.layer.borderWidth = 1
        backgraundContainer.layer.borderColor = UIColor.lightGray.cgColor
        backgraundContainer.backgroundColor = UIColor.clear
        */
    }

   
}
