//
//  Model.swift
//  GFG Task
//
//  Created by Anshika on 13/10/24.
//

import Foundation

// MARK: - Gryffindor Model
struct WelcomeElement: Codable {
    let id, name: String
    let alternateNames: [String]
    let species: Species
    let gender: Gender
    let house: House
    let dateOfBirth: String?
    let yearOfBirth: Int?
    let wizard: Bool
    let ancestry: Ancestry
    let eyeColour, hairColour: String
    let wand: Wand
    let patronus: String
    let hogwartsStudent, hogwartsStaff: Bool
    let actor: String
    let alternateActors: [String]
    let alive: Bool
    let image: String

    enum CodingKeys: String, CodingKey {
        case id, name
        case alternateNames = "alternate_names"
        case species, gender, house, dateOfBirth, yearOfBirth, wizard, ancestry, eyeColour, hairColour, wand, patronus, hogwartsStudent, hogwartsStaff, actor
        case alternateActors = "alternate_actors"
        case alive, image
    }
}

enum Ancestry: String, Codable {
    case empty = ""
    case halfBlood = "half-blood"
    case muggleborn = "muggleborn"
    case pureBlood = "pure-blood"
}

enum Gender: String, Codable {
    case female = "female"
    case male = "male"
}

enum House: String, Codable {
    case gryffindor = "Gryffindor"
}

enum Species: String, Codable {
    case ghost = "ghost"
    case halfGiant = "half-giant"
    case human = "human"
    case werewolf = "werewolf"
}

// MARK: - Wand
struct Wand: Codable {
    let wood: String
    let core: Core
    let length: Double?
}

enum Core: String, Codable {
    case dragonHeartstring = "dragon heartstring"
    case empty = ""
    case phoenixFeather = "phoenix feather"
    case phoenixTailFeather = "phoenix tail feather"
    case unicornTailHair = "unicorn tail hair"
}

typealias Welcome = [WelcomeElement]



// MARK: - Slytherin Model
struct WelcomeElement2: Codable {
    let id, name: String
    let alternateNames: [String]
    let species: Species2
    let gender: Gender2
    let house: House2
    let dateOfBirth: String?
    let yearOfBirth: Int?
    let wizard: Bool
    let ancestry: Ancestry
    let eyeColour: EyeColour
    let hairColour: String
    let wand: Wand
    let patronus: String
    let hogwartsStudent, hogwartsStaff: Bool
    let actor: String
    let alternateActors: [String]
    let alive: Bool
    let image: String

    enum CodingKeys: String, CodingKey {
        case id, name
        case alternateNames = "alternate_names"
        case species, gender, house, dateOfBirth, yearOfBirth, wizard, ancestry, eyeColour, hairColour, wand, patronus, hogwartsStudent, hogwartsStaff, actor
        case alternateActors = "alternate_actors"
        case alive, image
    }
}

enum Ancestry2: String, Codable {
    case empty = ""
    case halfBlood = "half-blood"
    case pureBlood = "pure-blood"
}

enum EyeColour: String, Codable {
    case black = "black"
    case brown = "brown"
    case empty = ""
    case green = "green"
    case grey = "grey"
    case scarlet = "Scarlet"
}

enum Gender2: String, Codable {
    case female = "female"
    case male = "male"
}

enum House2: String, Codable {
    case slytherin = "Slytherin"
}

enum Patronus: String, Codable {
    case doe = "doe"
    case empty = ""
    case persianCat = "persian cat"
}

enum Species2: String, Codable {
    case ghost = "ghost"
    case human = "human"
}

// MARK: - Wand
struct Wand2: Codable {
    let wood: String
    let core: Core
    let length: Double?
}

enum Core2: String, Codable {
    case dragonHeartstring = "dragon heartstring"
    case empty = ""
    case phoenixTailFeather = "phoenix tail feather"
    case unicornTailHair = "unicorn tail hair"
}

typealias Welcome2 = [WelcomeElement2]


// MARK: - Ravenclaw Model
struct WelcomeElement3: Codable {
    let id, name: String
    let alternateNames: [String]
    let species: Species3
    let gender: Gender3
    let house: House3
    let dateOfBirth: String?
    let yearOfBirth: Int?
    let wizard: Bool
    let ancestry: Ancestry3
    let eyeColour: EyeColour3
    let hairColour: String
    let wand: Wand3
    let patronus: String
    let hogwartsStudent, hogwartsStaff: Bool
    let actor: String
    let alternateActors: [String]
    let alive: Bool
    let image: String

    enum CodingKeys: String, CodingKey {
        case id, name
        case alternateNames = "alternate_names"
        case species, gender, house, dateOfBirth, yearOfBirth, wizard, ancestry, eyeColour, hairColour, wand, patronus, hogwartsStudent, hogwartsStaff, actor
        case alternateActors = "alternate_actors"
        case alive, image
    }
}

enum Ancestry3: String, Codable {
    case empty = ""
    case muggleborn = "muggleborn"
}

enum EyeColour3: String, Codable {
    case brown = "brown"
    case empty = ""
    case silver = "silver"
}

enum Gender3: String, Codable {
    case female = "female"
    case male = "male"
}

enum House3: String, Codable {
    case ravenclaw = "Ravenclaw"
}

enum Patronus3: String, Codable {
    case empty = ""
    case hare = "hare"
    case swan = "swan"
}

enum Species3: String, Codable {
    case ghost = "ghost"
    case human = "human"
}

// MARK: - Wand
struct Wand3: Codable {
    let wood, core: String
    let length: JSONNull?
}

typealias Welcome3 = [WelcomeElement3]

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
            return true
    }

    public var hashValue: Int {
            return 0
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            if !container.decodeNil() {
                    throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
            }
    }

    public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            try container.encodeNil()
    }
}


// MARK: - Hufflepuff Model
struct WelcomeElement4: Codable {
    let id, name: String
    let alternateNames: [String]
    let species: Species4
    let gender: Gender4
    let house: House4
    let dateOfBirth: String?
    let yearOfBirth: Int?
    let wizard: Bool
    let ancestry: Ancestry4
    let eyeColour: EyeColour4
    let hairColour: HairColour4
    let wand: Wand4
    let patronus: String
    let hogwartsStudent, hogwartsStaff: Bool
    let actor: String
    let alternateActors: [String]
    let alive: Bool
    let image: String

    enum CodingKeys: String, CodingKey {
        case id, name
        case alternateNames = "alternate_names"
        case species, gender, house, dateOfBirth, yearOfBirth, wizard, ancestry, eyeColour, hairColour, wand, patronus, hogwartsStudent, hogwartsStaff, actor
        case alternateActors = "alternate_actors"
        case alive, image
    }
}

enum Ancestry4: String, Codable {
    case empty = ""
    case halfBlood = "half-blood"
    case muggleborn = "muggleborn"
}

enum EyeColour4: String, Codable {
    case empty = ""
    case grey = "grey"
    case hazel = "hazel"
}

enum Gender4: String, Codable {
    case female = "female"
    case male = "male"
}

enum HairColour4: String, Codable {
    case blond = "blond"
    case blonde = "blonde"
    case brown = "brown"
    case empty = ""
}

enum House4: String, Codable {
    case hufflepuff = "Hufflepuff"
}

enum Patronus4: String, Codable {
    case boar = "boar"
    case empty = ""
}

enum Species4: String, Codable {
    case ghost = "ghost"
    case human = "human"
}

// MARK: - Wand
struct Wand4: Codable {
    let wood: Wood4
    let core: Core4
    let length: Double?
}

enum Core4: String, Codable {
    case empty = ""
    case unicornHair = "unicorn hair"
}

enum Wood4: String, Codable {
    case ash = "ash"
    case empty = ""
}

typealias Welcome4 = [WelcomeElement4]
