//
//  REST.swift
//  D&D Tavern Aid
//
//  Created by Rafael on 11/05/19.
//  Copyright © 2019 Rafael Plinio. All rights reserved.
//

import Foundation

enum ApiError {
    case url
    case taskError(error: Error)
    case noResponse
    case noData
    case responseStatusCode(code: Int)
    case invalidJSON
}

enum RESTOperation {
    case save
    case update
    case delete
}

class REST {
    
    private static let configuration: URLSessionConfiguration = {
        let config = URLSessionConfiguration.default
        config.allowsCellularAccess = false
        config.httpAdditionalHeaders = ["Content-Type": "application/json"]
        config.timeoutIntervalForRequest = 30.0
        config.httpMaximumConnectionsPerHost = 5
        return config
    }()
    
    private static let session = URLSession(configuration: configuration)        //URLSession.shared
    
    
    class func loadRumorData(url: String, onComplete: @escaping ([Rumor]) -> Void, onError: @escaping (ApiError) -> Void) {
        
        guard let url = URL(string: url) else {
            onError(.url)
            return
        }
        
        let dataTask = session.dataTask(with: url) { (data: Data?, response: URLResponse?, error: Error?) in
            if error == nil {
                guard let response = response as? HTTPURLResponse else {
                    onError(.noResponse)
                    return
                }
                if response.statusCode == 200 {
                    guard let data = data else {return}
                    do {
                        let result = try JSONDecoder().decode([Rumor].self, from: data)
                        onComplete(result)
                        
                    } catch {
                        print(error.localizedDescription)
                        onError(.invalidJSON)
                    }
                    
                } else {
                    print("Algum status invalido pelo servidor!!")
                    onError(.responseStatusCode(code: response.statusCode))
                }
            } else {
                print(error!)
                onError(.taskError(error: error!))
            }
        }
        dataTask.resume()
    }
    
    //-------
    
    class func loadBartenderData(url: String, onComplete: @escaping ([Bartender]) -> Void, onError: @escaping (ApiError) -> Void) {
        
        guard let url = URL(string: url) else {
            onError(.url)
            return
        }
        
        let dataTask = session.dataTask(with: url) { (data: Data?, response: URLResponse?, error: Error?) in
            if error == nil {
                guard let response = response as? HTTPURLResponse else {
                    onError(.noResponse)
                    return
                }
                if response.statusCode == 200 {
                    guard let data = data else {return}
                    do {
                        let result = try JSONDecoder().decode([Bartender].self, from: data)
                        onComplete(result)
                        
                    } catch {
                        print(error.localizedDescription)
                        onError(.invalidJSON)
                    }
                    
                } else {
                    print("Algum status invalido pelo servidor!!")
                    onError(.responseStatusCode(code: response.statusCode))
                }
            } else {
                print(error!)
                onError(.taskError(error: error!))
            }
        }
        dataTask.resume()
    }
    
    //-------
    
    class func loadNameData(url: String, onComplete: @escaping ([Name]) -> Void, onError: @escaping (ApiError) -> Void) {
        
        guard let url = URL(string: url) else {
            onError(.url)
            return
        }
        
        let dataTask = session.dataTask(with: url) { (data: Data?, response: URLResponse?, error: Error?) in
            if error == nil {
                guard let response = response as? HTTPURLResponse else {
                    onError(.noResponse)
                    return
                }
                if response.statusCode == 200 {
                    guard let data = data else {return}
                    do {
                        let result = try JSONDecoder().decode([Name].self, from: data)
                        onComplete(result)
                        
                    } catch {
                        print(error.localizedDescription)
                        onError(.invalidJSON)
                    }
                    
                } else {
                    print("Algum status invalido pelo servidor!!")
                    onError(.responseStatusCode(code: response.statusCode))
                }
            } else {
                print(error!)
                onError(.taskError(error: error!))
            }
        }
        dataTask.resume()
    }
   
    //-------
    
    class func loadRaceData(url: String, onComplete: @escaping ([Race]) -> Void, onError: @escaping (ApiError) -> Void) {
        
        guard let url = URL(string: url) else {
            onError(.url)
            return
        }
        
        let dataTask = session.dataTask(with: url) { (data: Data?, response: URLResponse?, error: Error?) in
            if error == nil {
                guard let response = response as? HTTPURLResponse else {
                    onError(.noResponse)
                    return
                }
                if response.statusCode == 200 {
                    guard let data = data else {return}
                    do {
                        let result = try JSONDecoder().decode([Race].self, from: data)
                        onComplete(result)
                        
                    } catch {
                        print(error.localizedDescription)
                        onError(.invalidJSON)
                    }
                    
                } else {
                    print("Algum status invalido pelo servidor!!")
                    onError(.responseStatusCode(code: response.statusCode))
                }
            } else {
                print(error!)
                onError(.taskError(error: error!))
            }
        }
        dataTask.resume()
    }
    
    //------
    
    class func loadDrinkData(url: String, onComplete: @escaping ([Drink]) -> Void, onError: @escaping (ApiError) -> Void) {
        
        guard let url = URL(string: url) else {
            onError(.url)
            return
        }
        
        let dataTask = session.dataTask(with: url) { (data: Data?, response: URLResponse?, error: Error?) in
            if error == nil {
                guard let response = response as? HTTPURLResponse else {
                    onError(.noResponse)
                    return
                }
                if response.statusCode == 200 {
                    guard let data = data else {return}
                    do {
                        let result = try JSONDecoder().decode([Drink].self, from: data)
                        onComplete(result)
                        
                    } catch {
                        print(error.localizedDescription)
                        onError(.invalidJSON)
                    }
                    
                } else {
                    print("Algum status invalido pelo servidor!!")
                    onError(.responseStatusCode(code: response.statusCode))
                }
            } else {
                print(error!)
                onError(.taskError(error: error!))
            }
        }
        dataTask.resume()
    }
    
    //===========
    
    class func loadTavernNameData(url: String, onComplete: @escaping ([TavernName]) -> Void, onError: @escaping (ApiError) -> Void) {
        
        guard let url = URL(string: url) else {
            onError(.url)
            return
        }
        
        let dataTask = session.dataTask(with: url) { (data: Data?, response: URLResponse?, error: Error?) in
            if error == nil {
                guard let response = response as? HTTPURLResponse else {
                    onError(.noResponse)
                    return
                }
                if response.statusCode == 200 {
                    guard let data = data else {return}
                    do {
                        let result = try JSONDecoder().decode([TavernName].self, from: data)
                        onComplete(result)
                        
                    } catch {
                        print(error.localizedDescription)
                        onError(.invalidJSON)
                    }
                    
                } else {
                    print("Algum status invalido pelo servidor!!")
                    onError(.responseStatusCode(code: response.statusCode))
                }
            } else {
                print(error!)
                onError(.taskError(error: error!))
            }
        }
        dataTask.resume()
    }
    
    //=============
    
    class func loadClienteleData(url: String, onComplete: @escaping ([Clientele]) -> Void, onError: @escaping (ApiError) -> Void) {
        
        guard let url = URL(string: url) else {
            onError(.url)
            return
        }
        
        let dataTask = session.dataTask(with: url) { (data: Data?, response: URLResponse?, error: Error?) in
            if error == nil {
                guard let response = response as? HTTPURLResponse else {
                    onError(.noResponse)
                    return
                }
                if response.statusCode == 200 {
                    guard let data = data else {return}
                    do {
                        let result = try JSONDecoder().decode([Clientele].self, from: data)
                        onComplete(result)
                        
                    } catch {
                        print(error.localizedDescription)
                        onError(.invalidJSON)
                    }
                    
                } else {
                    print("Algum status invalido pelo servidor!!")
                    onError(.responseStatusCode(code: response.statusCode))
                }
            } else {
                print(error!)
                onError(.taskError(error: error!))
            }
        }
        dataTask.resume()
    }
    
    //=========
    
    class func loadAccommodationData(url: String, onComplete: @escaping ([Accommodations]) -> Void, onError: @escaping (ApiError) -> Void) {
        
        guard let url = URL(string: url) else {
            onError(.url)
            return
        }
        
        let dataTask = session.dataTask(with: url) { (data: Data?, response: URLResponse?, error: Error?) in
            if error == nil {
                guard let response = response as? HTTPURLResponse else {
                    onError(.noResponse)
                    return
                }
                if response.statusCode == 200 {
                    guard let data = data else {return}
                    do {
                        let result = try JSONDecoder().decode([Accommodations].self, from: data)
                        onComplete(result)
                        
                    } catch {
                        print(error.localizedDescription)
                        onError(.invalidJSON)
                    }
                    
                } else {
                    print("Algum status invalido pelo servidor!!")
                    onError(.responseStatusCode(code: response.statusCode))
                }
            } else {
                print(error!)
                onError(.taskError(error: error!))
            }
        }
        dataTask.resume()
    }
    
    //==========
    
    class func loadGenderData(url: String, onComplete: @escaping ([Gender]) -> Void, onError: @escaping (ApiError) -> Void) {
        
        guard let url = URL(string: url) else {
            onError(.url)
            return
        }
        
        let dataTask = session.dataTask(with: url) { (data: Data?, response: URLResponse?, error: Error?) in
            if error == nil {
                guard let response = response as? HTTPURLResponse else {
                    onError(.noResponse)
                    return
                }
                if response.statusCode == 200 {
                    guard let data = data else {return}
                    do {
                        let result = try JSONDecoder().decode([Gender].self, from: data)
                        onComplete(result)
                        
                    } catch {
                        print(error.localizedDescription)
                        onError(.invalidJSON)
                    }
                    
                } else {
                    print("Algum status invalido pelo servidor!!")
                    onError(.responseStatusCode(code: response.statusCode))
                }
            } else {
                print(error!)
                onError(.taskError(error: error!))
            }
        }
        dataTask.resume()
    }
    
    
    
}
