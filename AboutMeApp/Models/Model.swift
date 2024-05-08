//
//  Model.swift
//  AboutMeApp
//
//  Created by Giovanni on 03.05.2024.
//

import UIKit

struct User {
    let login: String
    let password: String
    let email: String
    var person: Person
    
    static func getUserData() -> User {
        let person = Person(
            name: "Nikolay",
            familyName: "Drozdov",
            foto: UIImage.init(named: "ndrozdov"),
            age: "86",
            residence: "Russia",
            profession: "Naturalist",
            organiation: "Moscow State University",
            bio: "Soviet and Russian zoologist and biogeographer, Professor at the Geographical Faculty of Lomonosov Moscow State University (since 2000), Doctor of Biological Sciences. Presenter of the TV show \"In the World of animals\" (1977-2018), traveler and popularizer of science.")
        
        return User(
            login: "user",
            password: "password",
            email: "drozdov@msu.ru",
            person: person)
    }
}

struct Person {
    let name: String?
    let familyName: String?
    var foto: UIImage?
    var age: String?
    var residence: String?
    var profession: String?
    var organiation: String?
    var bio: String?
}
