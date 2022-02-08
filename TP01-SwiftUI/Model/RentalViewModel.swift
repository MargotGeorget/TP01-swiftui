//
//  RentalViewModel.swift
//  TP01-SwiftUI
//
//  Created by m1 on 08/02/2022.
//

import Foundation

class RentalViewModel : RentalDelegate, ObservableObject {
    
    private var model : Rental
    
    @Published var lastname: String {
        didSet {
            if self.lastname != self.model.lastname {
                self.model.lastname = self.lastname
                if self.lastname != self.model.lastname {
                    self.lastname = self.model.lastname
                }
            }
        }
    }
    @Published var firstname: String {
        didSet {
            if self.firstname != self.model.firstname {
                self.model.firstname = self.firstname
                if self.firstname != self.model.firstname {
                    self.firstname = self.model.firstname
                }
            }
        }
    }
    @Published var number: Int {
        didSet {
            if self.number != self.model.number {
                self.model.number = self.number
                if self.number != self.model.number {
                    self.number = self.model.number
                }
            }
        }
    }
    //TODO
    var type: MacModel
    
    @Published var memory: Int {
        didSet {
            if self.memory != self.model.memory {
                self.model.memory = self.memory
                if self.memory != self.model.memory {
                    self.memory = self.model.memory
                }
            }
        }
    }
    @Published var timelength: Int {
        didSet {
            if self.timelength != self.model.timelength {
                self.model.timelength = self.timelength
                if self.timelength != self.model.timelength {
                    self.timelength = self.model.timelength
                }
            }
        }
    }
    
    init(model: Rental, lastname: String, firstname: String, number: Int, type: MacModel, memory: Int, timelength: Int) {
        self.model = model
        self.lastname = lastname
        self.firstname = firstname
        self.number = number
        self.type = type
        self.memory = memory
        self.timelength = timelength
    }
    
    func numberChanged(_ stepperValue: Int) {
        
    }
    
    func macModelChanged(_ macModel: MacModel) {
        
    }
    
    func unitaryPriceChanged(_ unitaryPrice: Double) {
        
    }
    
    func totalPriceChanged(_ totalPrice: Double) {
        
    }
    
    func lastnameChanged(_ lastname: String) {
        
    }
    
    func firstnameChanged(_ firstname: String) {
        
    }
    
    func memoryChanged(_ memory: Int) {
        
    }
    
    func timelengthChanged(_ timelength: Int) {
        
    }
    
}

