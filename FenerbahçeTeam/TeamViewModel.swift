//
//  TeamViewModel.swift
//  FenerbahçeTeam
//
//  Created by Adnan Cobanoglu on 15.11.2022.
//

import Foundation
import SwiftUI

class TeamViewModel:ObservableObject{
    @Published var team=[Team]()
    
    init(){
        addPlayer()
    }
    
    func addPlayer(){
        team=playerData
    }
    
    func shuffleOrder(){
        team.shuffle()
    }
    
    func reverseOrder(){
        team.reverse()
        
    }
    let playerData=[
        Team(playerName: "Arda Güleer", playerScore: "81", playerValue: "10.000" , playerAge: "17"),
        Team(playerName: "Enner Valencia", playerScore: "87", playerValue: "7.000", playerAge: "32"),
        Team(playerName: "Atilla Szalai", playerScore: "86", playerValue: "23.000", playerAge: "24"),
        Team(playerName: "Altay Kök", playerScore: "90",playerValue: "30.000", playerAge: "23")
    ]
    
    
}
