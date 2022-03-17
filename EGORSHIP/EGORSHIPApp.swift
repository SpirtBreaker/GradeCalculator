//
//  EGORSHIPApp.swift
//  EGORSHIP
//
//  Created by Admin on 06.02.2022.
//

import SwiftUI

@main
struct EGORSHIPApp: App {
    @StateObject private var dataBaseController = DataBase()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataBaseController.container.viewContext)
        }
    }
}
