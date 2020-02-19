//
//  main.swift
//  ReadTextAndJSONFile
//
//  Created by MacStudent on 2020-02-19.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

func readTextFile(fileName:String)
{
    let path=Bundle.main.path(forResource: fileName, ofType: "txt")
    print(path)
    
}

readTextFile(fileName: "data")

