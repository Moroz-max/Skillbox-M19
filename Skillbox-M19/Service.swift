//
//  Service.swift
//  Skillbox-M19
//
//  Created by Максим Морозов on 23.12.2023.
//

import Foundation
import Alamofire

struct Service {
    func loadFilmsByKeyword(requestText: String, completion: @escaping (_ result: [Films]) -> ()) {
        let link = "https://kinopoiskapiunofficial.tech/api/v2.1/films/search-by-keyword?keyword=\(requestText)"
        
        guard let url = URL(string: link) else { return }
        
        var request = URLRequest(url: url)
        request.allHTTPHeaderFields = ["X-API-KEY":"5322aeb4-16a0-4aea-8856-a46b71258e52"]
        request.httpMethod = "GET"
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            guard
                error == nil
            else {
                return
            }
            if let data = data, let jsonObject = try? JSONSerialization.jsonObject(with: data, options: [])  {
                let jsonDict = jsonObject as? [String: Any]
                let arr = jsonDict?["films"] as? [[String: Any]]
                var model = [Films]()
                arr?.forEach { arrInfo in
                    let film = Films(filmId: arrInfo["filmId"] as? Int ?? 0, nameRu: arrInfo["nameRu"] as? String ?? "" , posterUrl: arrInfo["posterUrl"] as? String ?? "")
                    model.append(film)
                }
                completion(model)
            }
        }
        task.resume()
    }
}
