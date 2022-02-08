//
//  ContentView.swift
//  TP01-SwiftUI
//
//  Created by m1 on 08/02/2022.
//

import SwiftUI

struct ContentView: View {
    
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
                    TextField("nom", text: .constant("coucou"))
                    
                    Text("Prenom : ")
                    TextField("prenom", text: .constant("coucou"))
                    
                    Text("Nombre de machine : ")
                    Stepper("", value: .constant(1))
                    
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
                    TextField("memoire", value: .constant(2), formatter: intFormatter)
                        .frame(width: 15)
                    Text("Go")
                    Spacer()
                }
                
                HStack {
                    Spacer()
                    Text("Durée : ")
                }
                HStack {
                    TextField("duree", value: .constant(0), formatter: intFormatter )
                        .frame(width: 15)
                    Text("heures")
                }
                
                HStack {
                    Spacer()
                    Text("Prix unitaire : ")
                }.padding(.bottom, 3)
                Text("0.0")
                    .padding(.bottom, 3)
                
                HStack {
                    Spacer()
                    Text("Prix total : ")
                }
                Text("0.0")
                
            }
            
            Divider()
            
            VStack(spacing: 10) {
                Text("Récapitulatif")
                    .padding(.top, 15)
                    .padding(.bottom, 15)
                
                HStack {
                    Text("fistname")
                        .padding(.trailing, 10)
                    Text("lastname")
                }
                
                HStack {
                    Text("0")
                    Text("MacModel")
                        .padding(.trailing, 10)
                    Text("0")
                    Text("Go")
                }
                HStack {
                    Text("Prix total : ")
                    Text("0.0")
                }
            }
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
