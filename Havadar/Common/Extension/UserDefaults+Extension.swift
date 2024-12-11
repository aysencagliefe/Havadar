//
//  UserDefaults+Extension.swift
//  Havadar
//
//  Created by Ayşen Çağlı Efe on 3.12.2024.
//

import Foundation

extension UserDefaults {
    
    private enum Keys {
        static let authToken = "tokenKey"
        static let userName = "userName"
        static let name = "name"
        static let surname = "surname"
        static let ppUrl = "ppUrl"
        static let isLogin = "isLogin"
        static let appleAccount = "appleAccount"
        
    }
    
    var authToken: String? {
        get {
            string(forKey: Keys.authToken)
        }
        set {
            if let newValue {
                self.set(newValue, forKey: Keys.authToken)
            } else {
                self.removeObject(forKey: Keys.authToken)
            }
            self.synchronize()
        }
    }
    var userName: String? {
        get {
            string(forKey: Keys.userName)
        }
        set {
            DispatchQueue.main.async { [weak self] in
                guard let self else { return }
                if let newValue {
                    self.set(newValue, forKey: Keys.userName)
                } else {
                    self.removeObject(forKey: Keys.userName)
                }
                self.synchronize()
            }
        }
    }
    
    var name: String? {
        get {
            string(forKey: Keys.name)
        }
        set {
            DispatchQueue.main.async { [weak self] in
                guard let self else { return }
                if let newValue {
                    self.set(newValue, forKey: Keys.name)
                } else {
                    self.removeObject(forKey: Keys.name)
                }
                self.synchronize()
            }
        }
    }
    
    var surname: String? {
        get {
            string(forKey: Keys.surname)
        }
        set {
            DispatchQueue.main.async { [weak self] in
                guard let self else { return }
                if let newValue {
                    self.set(newValue, forKey: Keys.surname)
                } else {
                    self.removeObject(forKey: Keys.surname)
                }
                self.synchronize()
            }
        }
    }
    var ppUrl: String? {
        get {
            string(forKey: Keys.ppUrl)
        }
        set {
            DispatchQueue.main.async { [weak self] in
                guard let self else { return }
                if let newValue {
                    self.set(newValue, forKey: Keys.ppUrl)
                } else {
                    self.removeObject(forKey: Keys.ppUrl)
                }
                self.synchronize()
            }
        }
    }
    var isLogin: Bool? {
        get {
            bool(forKey: Keys.isLogin)
        }
        set {
            DispatchQueue.main.async { [weak self] in
                guard let self else { return }
                if let newValue {
                    self.set(newValue, forKey: Keys.isLogin)
                } else {
                    self.removeObject(forKey: Keys.isLogin)
                }
                self.synchronize()
            }
        }
    }
    /*
    var appleAccount: AppleAccount? {
        get {
            if let data = data(forKey: Keys.appleAccount) {
                let decoder = JSONDecoder()
                do {
                    let account = try decoder.decode(AppleAccount.self, from: data)
                    return account
                } catch {
                    print("Kullanıcıyı yüklerken hata oluştu: \(error)")
                }
            }
            return nil
        }
        set {
            DispatchQueue.main.async { [weak self] in
                guard let self else { return }
                if let newValue {
                    do {
                        let encoder = JSONEncoder()
                        let data = try encoder.encode(newValue)
                        self.set(data, forKey: Keys.appleAccount)
                    } catch {
                        print("Kullanıcıyı kaydederken hata oluştu: \(error)")
                    }
                } else {
                    self.removeObject(forKey: Keys.appleAccount)
                }
                self.synchronize()
            }
        }
    }*/
}
