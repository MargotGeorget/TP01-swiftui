//
//  TP01_SwiftUIApp.swift
//  TP01-SwiftUI
//
//  Created by m1 on 08/02/2022.
//

import SwiftUI

@main
struct TP01_SwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(rental: RentalViewModel(model: Rental(lastname: "Djian-Martin", firstname: "Nathan", number: 0, type: MacModel.M1, memory: 2, timelength: 24)))
        }
    }
}
