//
//  ViewController.swift
//  Pr3 (CollectionView)
//
//  Created by Choudhary Dipika on 14/03/23.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{
    
    @IBOutlet weak var cv1: UICollectionView!
    @IBOutlet weak var cv2: UICollectionView!
    @IBOutlet weak var cv3: UICollectionView!
    
    var cv1Array = [UIImage(named: "Veer"),UIImage(named: "Wakanda"),UIImage(named: "RK"),UIImage(named: "Mahabharat")]
    
    var cv2Array = [UIImage(named: "alone"),UIImage(named: "run"),UIImage(named: "Gulmohar"),UIImage(named: "mandalorian"),UIImage(named: "alone"),UIImage(named: "run"),UIImage(named: "Gulmohar"),UIImage(named: "mandalorian"),UIImage(named: "alone"),UIImage(named: "run"),UIImage(named: "Gulmohar"),UIImage(named: "mandalorian")]
    
    var cv3Array = [UIImage(named: "anu"),UIImage(named: "aashikana"),UIImage(named: "teri"),UIImage(named: "pandya"),UIImage(named: "anu"),UIImage(named: "aashikana"),UIImage(named: "teri"),UIImage(named: "pandya")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.cv1
        {
            return cv1Array.count
        }
        else if collectionView == self.cv2
        {
            return cv2Array.count

        }
        else
        {
            return cv3Array.count
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.cv1
        {
            let cell1 = cv1.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell1
            cell1.cv1Img.image = cv1Array[indexPath.row]
            return cell1
        }
        else if collectionView == self.cv2
        {
             let cell2 = cv2.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell2
             cell2.cv2Img.image = cv2Array[indexPath.row]
            return cell2
        }
        else
        {
            let cell3 = cv3.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell3
            cell3.cv3Img.image = cv3Array[indexPath.row]
            return cell3
        }
        
    }
    
    
    

}

extension ViewController: UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == self.cv1
        {
            return CGSize(width: 396, height: 208)
        }
        else if collectionView == self.cv2
        {
            return CGSize(width: 130, height: 150)
        }
        else
        {
            return CGSize(width: 130, height: 150)
        }
    }
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
//        if collectionView == self.cv1
//        {
//            return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
//        }
//        else
//        {
//            return UIEdgeInsets(top: 0, left: 3, bottom: 0, right: 3)
//        }
////        return UIEdgeInsets(top: 0, left: 3, bottom: 0, right: 3)
//    }
//
}
