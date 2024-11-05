//
//  PokemonView.swift
//  Pokedex
//
//  Created by Ibrahim Mohsin on 11/4/24.
//

import SwiftUI

struct PokemonView: View {
    var pokemon: Pokemon
    
    var body: some View {
        VStack {
            Text(pokemon.name + " #" + pokemon.num)
                .font(.title)
            HStack {
                AsyncImage(url: pokemon.imageURL) { image in image
                    .resizable()
                    .scaledToFit()
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 200)
                VStack {
                    Text("Height: \(pokemon.height)")
                    Text("Weight: \(pokemon.weight)")
                }
            }
        }
    }
}

#Preview {
    PokemonView(pokemon: .example)
}
