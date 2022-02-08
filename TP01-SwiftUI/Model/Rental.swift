//
//  Rental.swift
//  TP01-SwiftUI
//
//  Created by m1 on 08/02/2022.
//

import Foundation

class Rental {
    var delegate: RentalDelegate?
    
    var lastname: String {
        didSet {
            lastname = lastname.count < 1 ? oldValue : lastname
            self.delegate?.lastnameChanged(lastname)
        }
    }
    var firstname: String {
        didSet {
            firstname = firstname.count < 1 ? oldValue : firstname
            self.delegate?.firstnameChanged(firstname)
        }
    }
    var number: Int {
        didSet {
            number = number < 1 || number > 100 ? oldValue : number
            self.delegate?.numberChanged(number)
            self.delegate?.totalPriceChanged(self.rentablePrice)
        }
    }
    //TODO
    var type: MacModel
    
    var memory: Int {
        didSet {
            memory = memory < 2 || (memory & (memory - 1)) != 0 ? oldValue : memory
            self.delegate?.memoryChanged(memory)
        }
    }
    var timelength: Int {
        didSet {
            timelength = timelength < 24 ? oldValue : timelength
            self.delegate?.timelengthChanged(timelength)
            self.delegate?.unitaryPriceChanged(self.unitPrice)
            self.delegate?.totalPriceChanged(self.rentablePrice)
        }
    }
    var unitPrice: Double {
        var result: Double = 0
        switch self.type {
        case .M1:
             result = 0.1 * Double(timelength)
        case .mini:
            result = 0.2 * Double(timelength)
        case .pro:
            result = 0.5 * Double(timelength)
        }
        return result + (Double(memory)/2 - 1.0) * 0.02
    }
    var rentablePrice: Double {
        unitPrice * Double(number)
    }
    
    init(lastname: String, firstname: String, number: Int, type: MacModel, memory: Int, timelength: Int) {
        self.lastname = lastname
        self.firstname = firstname
        self.number = number
        self.type = type
        self.memory = memory
        self.timelength = timelength
    }
}

enum MacModel: String {
    case M1 = "Mac mini M1"
    case mini = "Mac mini"
    case pro = "Mac pro"
}
