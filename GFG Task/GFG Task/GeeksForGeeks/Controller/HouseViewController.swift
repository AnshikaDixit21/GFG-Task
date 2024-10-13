//
//  HouseViewController.swift
//  GFG Task
//
//  Created by Anshika on 13/10/24.
//

import UIKit

class HouseViewController: UIViewController {
var ImageArr = ["Gryffindor", "Slytherin", "Revenclaw", "Hufflepuff"]
    
    
    @IBOutlet var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
     // Do any additional setup after loading the view.
    }
    

}
extension HouseViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HouseCollectionViewCell", for: indexPath) as! HouseCollectionViewCell
        cell.layer.cornerRadius = 8
        cell.layer.borderWidth = 0.3
        cell.layer.borderColor = UIColor.systemGray.cgColor
        cell.houseName.text = ImageArr[indexPath.row]
        cell.houseImage.image = UIImage(named: ImageArr[indexPath.row])
        
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        // The total spacing between cells (includes both sides' spacing)
        let totalSpacing: CGFloat = 16
        // The width of the collection view
        let collectionViewWidth = collectionView.bounds.width
        // The width for each cell (2 cells per row)
        let cellWidth = (collectionViewWidth - totalSpacing) / 2

        // A fixed height or adjust it as needed
        return CGSize(width: cellWidth, height: 228)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 6
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            // Initialize the new view controller (ViewController)
            let viewController = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
       
        if indexPath.row == 0 { // Gryffindor
                cellCount = 0
            
            } else if indexPath.row == 1 { // Slytherin
                cellCount = 1
               
            } else if indexPath.row == 2 { // Revenclaw
                cellCount = 2
            
            }
            else if indexPath.row == 3 { // Hufflepuff
            cellCount = 3
                
           }
           
            self.navigationController?.pushViewController(viewController, animated: true)
        }

}
