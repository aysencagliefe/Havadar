//
//  FiveDaysResponse.swift
//  Havadar
//
//  Created by Ayşen Çağlı Efe on 5.12.2024.
//

import Foundation

struct FiveDaysResponse: Codable {
    let enDusukGun1, enDusukGun2, enDusukGun3, enDusukGun4: Int
    let enDusukGun5, enDusukNemGun1, enDusukNemGun2, enDusukNemGun3: Int
    let enDusukNemGun4, enDusukNemGun5, enYuksekGun1, enYuksekGun2: Int
    let enYuksekGun3, enYuksekGun4, enYuksekGun5, enYuksekNemGun1: Int
    let enYuksekNemGun2, enYuksekNemGun3, enYuksekNemGun4, enYuksekNemGun5: Int
    let hadiseGun1, hadiseGun2, hadiseGun3, hadiseGun4: String
    let hadiseGun5: String
    let istNo, ruzgarHizGun1, ruzgarHizGun2, ruzgarHizGun3: Int
    let ruzgarHizGun4, ruzgarHizGun5, ruzgarYonGun1, ruzgarYonGun2: Int
    let ruzgarYonGun3, ruzgarYonGun4, ruzgarYonGun5: Int
    let tarihGun1, tarihGun2, tarihGun3, tarihGun4: String
    let tarihGun5: String
}
