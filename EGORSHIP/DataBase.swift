//
//  DataBase.swift
//  EGORSHIP
//
//  Created by Admin on 13.02.2022.
//

import Foundation
import CoreData

class DataBase: ObservableObject{
    let container = NSPersistentContainer(name: "User_EGORSHIP")
    init(){
        container.loadPersistentStores{description, error in
            if let error = error{
            print("Failed to load: \(error.localizedDescription)")
                
            }
        }
    }
}
