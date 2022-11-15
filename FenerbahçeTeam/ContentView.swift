//
//  ContentView.swift
//  FenerbahçeTeam
//
//  Created by Adnan Cobanoglu on 15.11.2022.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel=TeamViewModel()
    var body: some View {
        VStack {
            Text("Fenerbahçe Players").fontWeight(.bold).padding()
            HStack{
                Group{
                    Spacer()
                    Text("")
                    Spacer()
                    Text("Player Name")
                    Spacer()
                    Text("Player Age")
                    Spacer()
                    Text("Player Score")
                    Spacer()
                    Text("Player Vale")
                    Spacer()
                }
            }
            List (viewModel.team){ player in
                HStack{
                    Image("fener").clipShape(Circle())
                    Spacer()
                    Text(player.playerName)
                    Spacer()
                    Text(player.playerAge)
                    Spacer()
                    Text(player.playerScore)
                    Spacer()
                    Text(player.playerValue)
                    Spacer()
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
