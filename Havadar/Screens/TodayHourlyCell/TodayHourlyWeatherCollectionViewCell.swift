//
//  TodayHourlyWeatherCollectionViewCell.swift
//  Havadar
//
//  Created by Ayşen Çağlı Efe on 4.12.2024.
//

import UIKit

class TodayHourlyWeatherCollectionViewCell: UICollectionViewCell, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var todayHourlyCollectionView: UICollectionView!
    
    var todayHourlyResponse : TodayHourlyWeatherResponse? {
        didSet {
            if let todayHourlyResponse {
                todayHourlyCollectionView.reloadData()
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        todayHourlyCollectionView.delegate = self
        todayHourlyCollectionView.dataSource = self
        todayHourlyCollectionView.register(UINib(nibName: "HourlyCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "HourlyCollectionViewCell")

    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return todayHourlyResponse?.tahmin.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HourlyCollectionViewCell", for: indexPath) as! HourlyCollectionViewCell
        cell.hourlyGuess = todayHourlyResponse?.tahmin[indexPath.row]
        return cell
        
    }
    /*
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
           return 10 // Hücreler arasındaki dikey boşluk
       }
       
       func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
           return 10 // Hücreler arasındaki yatay boşluk
       }
       
       func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
           return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10) // Kenar boşlukları
       }
    
     */
    

   
}

