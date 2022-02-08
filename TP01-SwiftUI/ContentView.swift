//
//  ContentView.swift
//  TP01-SwiftUI
//
//  Created by m1 on 08/02/2022.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var rental: RentalViewModel
    
    let columns = [GridItem](repeating:.init(.flexible()), count: 2)
    
    let intFormatter: NumberFormatter = {   
        let formatter = NumberFormatter()
        return formatter
    }()
    
    var body: some View {
        VStack(spacing: 10) {
            Text("Location de Mac")     
                .padding()
            
            LazyVGrid(columns: columns, alignment: .leading){
                Group {
                    Text("Nom : ")
                    TextField("nom", text: $rental.firstname)
                    
                    Text("Prenom : ")
                    TextField("prenom", text: $rental.lastname)
                    
                    Text("Nombre de machine : ")
                    HStack {
                        Spacer()
                        Stepper("\(rental.number)", value: $rental.number)
                    }
                    
                    HStack {
                        Spacer()
                        Text("Type : ")
                    }
                    Button("MacModel") {
                        
                    }
                    
                }
                
                HStack {
                    Spacer()
                    Text("Mémoire : ")
                }
                HStack {
                    TextField("memoire", value: $rental.memory, formatter: intFormatter)
                        .frame(width: 30)
                    Text("Go")
                    Spacer()
                }
                
                HStack {
                    Spacer()
                    Text("Durée : ")
                }
                HStack {
                    TextField("duree", value: $rental.timelength, formatter: intFormatter )
                        .frame(width: 30)
                    Text("heures")
                }
                
                HStack {
                    Spacer()
                    Text("Prix unitaire : ")
                }.padding(.bottom, 3)
                Text("\(rental.unitPrice)")
                    .padding(.bottom, 3)
                
                HStack {
                    Spacer()
                    Text("Prix total : ")
                }
                Text("\(rental.rentablePrice)")
                
            }
            
            Divider()
            
            VStack(spacing: 10) {
                Text("Récapitulatif")
                    .padding(.top, 15)
                    .padding(.bottom, 15)
                
                HStack {
                    Text("\(rental.lastname)")
                        .padding(.trailing, 10)
                    Text("\(rental.firstname)")
                }
                
                HStack {
                    Text("\(rental.number)")
                    Text("\(rental.type.rawValue)")
                        .padding(.trailing, 10)
                    Text("\(rental.memory)")
                    Text("Go")
                }
                HStack {
                    Text("Prix total : ")
                    Text("\(rental.rentablePrice)")
                }
            }
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        var model = Rental(lastname: "Djian-Martin", firstname: "Nathan", number: 0, type: MacModel.M1, memory: 2, timelength: 24)
        ContentView(rental: RentalViewModel(model: model))
    }
}
