//
//  ViewModel.swift
//  GFG Task
//
//  Created by Anshika on 13/10/24.
//

import Foundation

// MARK: - Gryffindor ViewModel
class CharactersViewModel {
    
    private var characters: [WelcomeElement] = []
    
    // Fetch characters from the API
    func fetchCharacters(completion: @escaping () -> Void) {
        let urlString = "https://hp-api.herokuapp.com/api/characters/house/gryffindor"
        
        guard let url = URL(string: urlString) else { return }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                do {
                    self.characters = try JSONDecoder().decode([WelcomeElement].self, from: data)
                    completion()
                } catch {
                    print("Error decoding data: \(error)")
                }
            }
        }
        task.resume()
    }
    
    // Number of sections (each character is its own section)
    func numberOfSections() -> Int {
        return characters.count
    }
    
    // Character at specific index
    func character(at index: Int) -> WelcomeElement? {
            guard index >= 0 && index < characters.count else {
                print("Index \(index) is out of range for characters array")
                return nil
            }
            return characters[index]
        }
    
    // Key-value pairs for the 4 fields (species, gender, house, patronus)
    func keyValue(for row: Int, character: WelcomeElement) -> (key: String, value: String) {
        switch row {
        case 1:
            return ("Species", character.species.rawValue)
        case 2:
            return ("Gender", character.gender.rawValue)
        case 3:
            return ("House", character.house.rawValue)
        case 4:
            return ("Date Of birth", character.dateOfBirth ?? "")
        default:
            return ("", "")
        }
    }
}

// MARK: - Slytherin ViewModel
class CharactersViewModel2 {
    
    private var characters: [WelcomeElement2] = []
    
    // Fetch characters from the API
    func fetchCharacters(completion: @escaping () -> Void) {
        let urlString = "https://hp-api.herokuapp.com/api/characters/house/slytherin"
        
        guard let url = URL(string: urlString) else { return }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                do {
                    self.characters = try JSONDecoder().decode([WelcomeElement2].self, from: data)
                    completion()
                } catch {
                    print("Error decoding data: \(error)")
                }
            }
        }
        task.resume()
    }
    
    // Number of sections (each character is its own section)
    func numberOfSections() -> Int {
        return characters.count
    }
    
    // Character at specific index
    func character(at index: Int) -> WelcomeElement2? {
            guard index >= 0 && index < characters.count else {
                print("Index \(index) is out of range for characters array")
                return nil
            }
            return characters[index]
        }
    
    // Key-value pairs for the 4 fields (species, gender, house, patronus)
    func keyValue(for row: Int, character: WelcomeElement2) -> (key: String, value: String) {
        switch row {
        case 1:
            return ("Species", character.species.rawValue)
        case 2:
            return ("Gender", character.gender.rawValue)
        case 3:
            return ("House", character.house.rawValue)
        case 4:
            return ("Date Of birth", character.dateOfBirth ?? "")
        default:
            return ("", "")
        }
    }
}

// MARK: - Revenclaw ViewModel
class CharactersViewModel3 {
    
    private var characters: [WelcomeElement3] = []
    
    // Fetch characters from the API
    func fetchCharacters(completion: @escaping () -> Void) {
        let urlString = "https://hp-api.herokuapp.com/api/characters/house/ravenclaw"
        
        guard let url = URL(string: urlString) else { return }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                do {
                    self.characters = try JSONDecoder().decode([WelcomeElement3].self, from: data)
                    completion()
                } catch {
                    print("Error decoding data: \(error)")
                }
            }
        }
        task.resume()
    }
    
    // Number of sections (each character is its own section)
    func numberOfSections() -> Int {
        return characters.count
    }
    
    // Character at specific index
    func character(at index: Int) -> WelcomeElement3? {
            guard index >= 0 && index < characters.count else {
                print("Index \(index) is out of range for characters array")
                return nil
            }
            return characters[index]
        }
    
    // Key-value pairs for the 4 fields (species, gender, house, patronus)
    func keyValue(for row: Int, character: WelcomeElement3) -> (key: String, value: String) {
        switch row {
        case 1:
            return ("Species", character.species.rawValue)
        case 2:
            return ("Gender", character.gender.rawValue)
        case 3:
            return ("House", character.house.rawValue)
        case 4:
            return ("Date Of birth", character.dateOfBirth ?? "")
        default:
            return ("", "")
        }
    }
}


// MARK: - Hufflepuff ViewModel
class CharactersViewModel4 {
    
    private var characters: [WelcomeElement4] = []
    
    // Fetch characters from the API
    func fetchCharacters(completion: @escaping () -> Void) {
        let urlString = "https://hp-api.herokuapp.com/api/characters/house/hufflepuff"
        
        guard let url = URL(string: urlString) else { return }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                do {
                    self.characters = try JSONDecoder().decode([WelcomeElement4].self, from: data)
                    completion()
                } catch {
                    print("Error decoding data: \(error)")
                }
            }
        }
        task.resume()
    }
    
    // Number of sections (each character is its own section)
    func numberOfSections() -> Int {
        return characters.count
    }
    
    // Character at specific index
    func character(at index: Int) -> WelcomeElement4? {
            guard index >= 0 && index < characters.count else {
                print("Index \(index) is out of range for characters array")
                return nil
            }
            return characters[index]
        }
    
    // Key-value pairs for the 4 fields (species, gender, house, patronus)
    func keyValue(for row: Int, character: WelcomeElement4) -> (key: String, value: String) {
        switch row {
        case 1:
            return ("Species", character.species.rawValue)
        case 2:
            return ("Gender", character.gender.rawValue)
        case 3:
            return ("House", character.house.rawValue)
        case 4:
            return ("Date Of birth", character.dateOfBirth ?? "")
        default:
            return ("", "")
        }
    }
}
