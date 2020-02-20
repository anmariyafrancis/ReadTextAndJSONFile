//
//  main.swift
//  ReadTextAndJSONFile
//
//  Created by MacStudent on 2020-02-19.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

/*func readTextFile(fileName:String)
{
    print(Bundle.main.bundlePath)
    if let path=Bundle.main.path(forResource: fileName, ofType: "txt")
    {
        print(path)
        let str=try!String(contentsOfFile: path) //can't return nil 
        print(str)
    }
    
    
}

readTextFile(fileName: "data")*/

func readJSONFile(jsonFileName:String)
{
    let filePath=Bundle.main.url(forResource: jsonFileName, withExtension: "json")
    guard let path=filePath else {
        print("Inavalid file path found")
        return
    }
    guard let data=try? Data(contentsOf: path) else {
        print("Error while data read from URL")
        return
    }
    guard let json = try? JSONSerialization.jsonObject(with: data, options: []) else {
        print("Error while data read from file")
               return
    }
    //print(json)
    
   if let userDictionary=json as? [String:Any]
   {
        print(userDictionary)
        let id=userDictionary["id"] ?? "No ID Found"
                     print(id)
        
       
    }
}

readJSONFile(jsonFileName: "user")

