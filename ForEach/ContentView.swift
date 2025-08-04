//
//  ContentView.swift
//  ForEach
//
//  Created by Benjamin Rojo on 04/08/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
           mostar()
         
        }
   
    }
}

struct Personaje: Identifiable{
    let id = UUID()
    let nombre: String
    let emoji: String
}

struct mostar: View{
    let personajes = [
        Personaje(nombre: "Pikachu", emoji: "⚡️"),
        Personaje(nombre: "Goku", emoji: "🟠"),
        Personaje(nombre: "Sailor Moon", emoji: "🌙"),
        Personaje(nombre: "Doraemon", emoji: "🐱‍🚀"),
        Personaje(nombre: "Ash", emoji: "🎒")
    ]
    var body: some View{
        VStack{
            ScrollView{
                ForEach(personajes) { personaje in
                    Text("Hola soy \(personaje.nombre) \(personaje.emoji)")
                }
            }
        }
    }
}


#Preview {
    ContentView()
}
