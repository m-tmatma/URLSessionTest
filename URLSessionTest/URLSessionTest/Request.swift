//
//  Request.swift
//  URLSessionTest
//
//  Created by tsuchiyamamasaru on 2016/12/11.
//  Copyright © 2016年 tsuchiyamamasaru. All rights reserved.
//
//  http://qiita.com/Shirade/items/086be09376b9cbbe7bc8

import Foundation

class Request {
    let session: URLSession = URLSession.shared
    
    // GET METHOD
    func get(url: URL, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) {
        var request: URLRequest = URLRequest(url: url)
        
        request.httpMethod = "GET"
        session.dataTask(with: request, completionHandler: completionHandler).resume()
    }
}

