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
    
    @IBOutlet weak var HourlyWeatherCollectionCell: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        //HourlyWeatherCollectionCell.delegate = self
        //HourlyWeatherCollectionCell.dataSource = self
        HourlyWeatherCollectionCell.register(UINib(nibName: "TodayHourlyWeatherCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "TodayHourlyWeatherCell")
        backgraundContainer.layer.cornerRadius = 10
        backgraundContainer.layer.borderWidth = 1
        backgraundContainer.layer.borderColor = UIColor.lightGray.cgColor
        backgraundContainer.backgroundColor = UIColor.clear
        
    }

    /*
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 7
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TodayHourlyWeatherCell", for: indexPath) as! TodayHourlyWeatherCollectionViewCell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: 65, height: 150) // Hücre boyutu
        }
     
     */
}
