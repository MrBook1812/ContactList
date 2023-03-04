//
//  Person.swift
//  ContactList
//
//  Created by Kirill Kniga on 03.03.2023.
//

struct Person {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullname: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> [Person] {
        let fullNames = zip(
            contactNames.shuffled(),
            contactSurnames.shuffled()
        )
        
        let contactData = zip(
            contactPhoneNumber.shuffled(),
            contactEmail.shuffled()
        )
        
        var personsList: [Person] = []
        
        for (fullName, contact) in zip(fullNames, contactData) {
            let (name, surname) = fullName
            let (phone, email) = contact
            
            personsList.append(Person(
                name: name,
                surname: surname,
                phoneNumber: phone,
                email: email
            ))
        }
        return personsList
    }
}


