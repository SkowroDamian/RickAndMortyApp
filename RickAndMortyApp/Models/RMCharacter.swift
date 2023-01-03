//
//  RMCharacter.swift
//  RickAndMortyApp
//
//  Created by Damian Skowroński on 31/12/2022.
//

import Foundation

struct RMSingleLocation: Codable {
    let name: String
    let url: String
}

struct RMOrigin: Codable {
    let name: String
    let url: String
}

struct RMCharacter: Codable {
    let id: Int
    let name: String
    let status: String
    let species: String
    let type: String
    let gender: RMCharacterGender
    let origin: RMOrigin
    let location: RMSingleLocation
    let image: String
    let episode: [String]
    let url: String
    let created: String
}

enum RMCharacterStatus: String, Codable {
    case alive = "Alive"
    case dead = "Dead"
    case `unknown` = "unknowk"
}

enum RMCharacterGender: String, Codable {
    case male = "Male"
    case female = "Female"
    case genderless = "Genderless"
    case `unknown` = "unknown"
}

//
//{
//      "id": 1,
//      "name": "Rick Sanchez",
//      "status": "Alive",
//      "species": "Human",
//      "type": "",
//      "gender": "Male",
//      "origin": {
//        "name": "Earth",
//        "url": "https://rickandmortyapi.com/api/location/1"
//      },
//      "location": {
//        "name": "Earth",
//        "url": "https://rickandmortyapi.com/api/location/20"
//      },
//      "image": "https://rickandmortyapi.com/api/character/avatar/1.jpeg",
//      "episode": [
//        "https://rickandmortyapi.com/api/episode/1",
//        "https://rickandmortyapi.com/api/episode/2",
//        // ...
//      ],
//      "url": "https://rickandmortyapi.com/api/character/1",
//      "created": "2017-11-04T18:48:46.250Z"
//    }
//}
