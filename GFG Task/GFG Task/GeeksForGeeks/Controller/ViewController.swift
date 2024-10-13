//
//  ViewController.swift
//  GFG Task
//
//  Created by Anshika on 13/10/24.
//

import UIKit

var cellCount = 0
class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var houseName: UILabel!
    
    // ViewModel instances
    var viewModel = CharactersViewModel()
    var viewModel2 = CharactersViewModel2()
    var viewModel3 = CharactersViewModel3()
    var viewModel4 = CharactersViewModel4()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        tableView.layer.borderColor = UIColor.systemYellow.cgColor
        tableView.layer.borderWidth = 2
        
        // Fetch characters from API
        if cellCount == 0 {
            houseName.text = "Gryffindor"
            viewModel.fetchCharacters {
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
        }
        else if cellCount == 1 {
            houseName.text = "Slytherin"
            viewModel2.fetchCharacters {
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
        }
        else if cellCount == 2 {
            houseName.text = "Revenclaw"
            viewModel3.fetchCharacters {
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
        }
        else if cellCount == 3 {
            houseName.text = "Hufflepuff"
            viewModel4.fetchCharacters {
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
        }
        
    }
    
    @IBAction func backttonAction(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    private func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
    }
}
//MARK: - TableView Extension

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        // Each character will have its own section
        if cellCount == 0 {
            return viewModel.numberOfSections()
        }
        else if cellCount == 1 {
            return viewModel2.numberOfSections()
        }
        else if cellCount == 2 {
            return viewModel3.numberOfSections()
        }
        else if cellCount == 3 {
            return viewModel4.numberOfSections()
        }
        return 3
    }
 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            
            // First cell (image and name)
            let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
            if cellCount == 0 {
                if let character = viewModel.character(at: indexPath.section) {
                    cell.configure(with: character)
                }
            } else if cellCount == 1 {
                if let character2 = viewModel2.character(at: indexPath.section) {
                    cell.configure2(with: character2)
                }
            }
            else if cellCount == 2 {
                if let character3 = viewModel3.character(at: indexPath.section) {
                    cell.configure3(with: character3)
                }
            }
            else if cellCount == 3 {
                if let character4 = viewModel4.character(at: indexPath.section) {
                    cell.configure4(with: character4)
                }
            }
            return cell
        } else {
            // Other cells (key-value pairs)
            let cell = tableView.dequeueReusableCell(withIdentifier: "DataTableViewCell", for: indexPath) as! DataTableViewCell
          

            if cellCount == 0 {
                if let character = viewModel.character(at: indexPath.section) {
                    let keyValue = viewModel.keyValue(for: indexPath.row, character: character)
                    cell.configure(with: keyValue.key, value: keyValue.value)
                    if indexPath.row == 3 {
                        cell.houseColorView.backgroundColor = UIColor.red
                    }
                    else {
                        cell.houseColorView.backgroundColor = UIColor.white
                    }
                    
                }
            } else if cellCount == 1{
                if let character2 = viewModel2.character(at: indexPath.section) {
                    let keyValue2 = viewModel2.keyValue(for: indexPath.row, character: character2)
                    cell.configure(with: keyValue2.key, value: keyValue2.value)
                    if indexPath.row == 3 {
                        cell.houseColorView.backgroundColor = UIColor.systemGreen
                    }
                    else {
                        cell.houseColorView.backgroundColor = UIColor.white
                    }
                }
            }
            else if cellCount == 2{
                if let character3 = viewModel3.character(at: indexPath.section) {
                    let keyValue3 = viewModel3.keyValue(for: indexPath.row, character: character3)
                    cell.configure(with: keyValue3.key, value: keyValue3.value)
                    if indexPath.row == 3 {
                        cell.houseColorView.backgroundColor = UIColor.systemBlue
                    }
                    else {
                        cell.houseColorView.backgroundColor = UIColor.white
                    }
                }
            }
            else if cellCount == 3{
                if let character4 = viewModel4.character(at: indexPath.section) {
                    let keyValue4 = viewModel4.keyValue(for: indexPath.row, character: character4)
                    cell.configure(with: keyValue4.key, value: keyValue4.value)
                    if indexPath.row == 3 {
                        cell.houseColorView.backgroundColor = UIColor.systemYellow
                    }
                    else {
                        cell.houseColorView.backgroundColor = UIColor.white
                    }
                }
            }
            return cell
        }
    }


    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return indexPath.row == 0 ? 246 : UITableView.automaticDimension
    }
    
}
