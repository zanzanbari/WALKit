//
//  JSONFile.swift
//  
//
//  Created by heerucan on 2023/02/14.
//

import Foundation

public class JSONFile {
    static public func read(resource: String) -> Any? {
        if let path = Bundle.module.path(forResource: resource, ofType: "json") {
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

extension JSONFile {
    public func registerJSONFile() {
        _ = JSONFile.read(resource: "loading")
    }
}
