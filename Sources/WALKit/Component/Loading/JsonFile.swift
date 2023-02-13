//
//  JsonFile.swift
//  
//
//  Created by heerucan on 2023/02/14.
//

import Foundation

public class JsonFile {
    static func read() -> Any? {
        if let path = Bundle.module.path(forResource: "loading", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: [])
                let jsonResult = try JSONSerialization.jsonObject(with: data, options: [])
                return jsonResult
            } catch {
                return nil
            }
        } else {
            return nil
        }
    }
}
