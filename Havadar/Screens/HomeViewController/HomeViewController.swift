//
//  HomeViewController.swift
//  Havadar
//
//  Created by Ayşen Çağlı Efe on 5.12.2024.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, HomeViewControllerDelegate, NowWeatherCollectionViewCellDelegate {
    
    var viewModel: HomeViewControllerViewModel = {
        HomeViewControllerViewModel(
            dataProvider: HomeViewControllerDataProvider())
    }()
    
    var merkezlerWeatherResponse: MerkezlerWeatherResponse?
    var nowWeatherResponse: NowWeatherResponseElement?
    var todayHourlyResponse: TodayHourlyWeatherResponse?
    var fiveDaysResponse: FiveDaysWeatherResponse?
    
    @IBOutlet weak var homeCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //homeCollectionView.applyGradient()
        viewModel.delegate = self
        homeCollectionView.delegate = self
        homeCollectionView.dataSource = self
        homeCollectionView.register(UINib(nibName: "NowWeatherCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "NowWeatherCell")
        homeCollectionView.register(UINib(nibName: "TodayHourlyWeatherCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "TodayHourlyWeatherCell")
        homeCollectionView.register(UINib(nibName: "FiveDaysWeatherCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "FiveDaysWeatherCell")
        viewModel.nowWeather(merkezid: "93401")
        viewModel.todayHourlyWeather(istno: "17130")
        viewModel.fiveDaysWeather(istno: "90401")
    }
   
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexPath.row {
        case 0:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "NowWeatherCell", for: indexPath) as! NowWeatherCollectionViewCell
            cell.nowWeatherResponse = nowWeatherResponse
            cell.delegate = self 

            return cell
        case 1:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TodayHourlyWeatherCell", for: indexPath) as! TodayHourlyWeatherCollectionViewCell
            cell.todayHourlyResponse = todayHourlyResponse
            return cell
        case 2:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FiveDaysWeatherCell", for: indexPath) as! FiveDaysWeatherCollectionViewCell
            cell.fiveDaysResponse = fiveDaysResponse
            return cell
        default:
            fatalError()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            // Her hücreye özel boyut ayarı (örnek)
            switch indexPath.row {
            case 0:
                return CGSize(width: collectionView.frame.width, height: 325)
            case 1:
                return CGSize(width: collectionView.frame.width, height: 150)
            case 2:
                return CGSize(width: collectionView.frame.width, height: 385)
            default:
                return CGSize.zero
            }
        }
        
    func nowReceiveData(_data: NowWeatherResponseElement?) {
        nowWeatherResponse = _data
        homeCollectionView.reloadData()
    }
    
    func todayHourlyReceiveData(_data: TodayHourlyWeatherResponse?) {
        todayHourlyResponse = _data
        homeCollectionView.reloadData()
        
    }
    func fiveDaysReceiveData(_data: FiveDaysWeatherResponse?) {
        fiveDaysResponse = _data
        homeCollectionView.reloadData()
    }
    
    
    func merkezlerReceiveData(_data: MerkezlerWeatherResponse?) {
        merkezlerWeatherResponse = _data
        homeCollectionView.reloadData()
    }
    
    func didTapAddButton(in cell: NowWeatherCollectionViewCell) {
        let selectCenterVC = SelectCenterViewController(nibName: "SelectCenterViewController", bundle: nil)
             present(selectCenterVC, animated: true, completion: nil)
    }
     
    
   
}
