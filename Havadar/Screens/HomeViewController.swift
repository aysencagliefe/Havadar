//
//  HomeViewController.swift
//  Havadar
//
//  Created by Ayşen Çağlı Efe on 5.12.2024.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
   
    
    
    @IBOutlet weak var homeCollectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //homeCollectionView.applyGradient()
        homeCollectionView.delegate = self
        homeCollectionView.dataSource = self
        homeCollectionView.register(UINib(nibName: "NowWeatherCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "NowWeatherCell")
        homeCollectionView.register(UINib(nibName: "TodayHourlyWeatherCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "TodayHourlyWeatherCell")
        homeCollectionView.register(UINib(nibName: "FiveDaysWeatherCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "FiveDaysWeatherCell")        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexPath.row {
        case 0:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "NowWeatherCell", for: indexPath) as! NowWeatherCollectionViewCell
            return cell
        case 1:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TodayHourlyWeatherCell", for: indexPath) as! TodayHourlyWeatherCollectionViewCell
            return cell
        case 2:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FiveDaysWeatherCell", for: indexPath) as! FiveDaysWeatherCollectionViewCell
            return cell
        default:
            fatalError()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            // Her hücreye özel boyut ayarı (örnek)
            switch indexPath.row {
            case 0:
                return CGSize(width: collectionView.frame.width, height: 200)
            case 1:
                return CGSize(width: collectionView.frame.width, height: 150)
            case 2:
                return CGSize(width: collectionView.frame.width, height: 300)
            default:
                return CGSize.zero
            }
        }
        
        
    
   
}
