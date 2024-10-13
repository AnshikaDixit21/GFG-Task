//
//  TableViewCell.swift
//  GFG Task
//
//  Created by Anshika on 13/10/24.
//
import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var characterImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    func configure(with character: WelcomeElement) {
        nameLabel.text = character.name

        // Load image asynchronously
        if let url = URL(string: character.image) {
            URLSession.shared.dataTask(with: url) { data, _, _ in
                if let data = data {
                    DispatchQueue.main.async {
                        self.characterImageView.image = UIImage(data: data)
                    }
                }
            }.resume()
        }
    }
    func configure2(with character: WelcomeElement2) {
        nameLabel.text = character.name
        
        // Load image asynchronously
        if let url = URL(string: character.image) {
            URLSession.shared.dataTask(with: url) { data, _, _ in
                if let data = data {
                    DispatchQueue.main.async {
                        self.characterImageView.image = UIImage(data: data)
                    }
                }
            }.resume()
        }
    }
    func configure3(with character: WelcomeElement3) {
        nameLabel.text = character.name
        
        // Load image asynchronously
        if let url = URL(string: character.image) {
            URLSession.shared.dataTask(with: url) { data, _, _ in
                if let data = data {
                    DispatchQueue.main.async {
                        self.characterImageView.image = UIImage(data: data)
                    }
                }
            }.resume()
        }
    }
    func configure4(with character: WelcomeElement4) {
        nameLabel.text = character.name
        
        // Load image asynchronously
        if let url = URL(string: character.image) {
            URLSession.shared.dataTask(with: url) { data, _, _ in
                if let data = data {
                    DispatchQueue.main.async {
                        self.characterImageView.image = UIImage(data: data)
                    }
                }
            }.resume()
        }
    }
}
