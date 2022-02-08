//
//  RentalDelegate.swift
//  TP01-SwiftUI
//
//  Created by m1 on 08/02/2022.
//

import Foundation

protocol RentalDelegate {
    func numberChanged(_ stepperValue: Int)
    func macModelChanged(_ macModel: MacModel)
    func unitaryPriceChanged(_ unitaryPrice: Double)
    func totalPriceChanged(_ totalPrice: Double)
    func lastnameChanged(_ lastname: String)
    func firstnameChanged(_ firstname: String)
    func memoryChanged(_ memory: Int)
    func timelengthChanged(_ timelength: Int)
    
}
