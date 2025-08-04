//
//  ContentView.swift
//  ForEach
//
//  Created by Benjamin Rojo on 04/08/25.
//

import SwiftUI

struct ContentView: View {
    let dias = ["lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sabado", "Domingo"]
    var body: some View {
        VStack {
            ScrollView{
                ForEach(dias, id:\.self){ dia in
                    Text(dia)
                        .font(.headline)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue.opacity(0.7))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                                  
                }
            }
            .padding(30)
         
        }
   
    }
}

#Preview {
    ContentView()
}
