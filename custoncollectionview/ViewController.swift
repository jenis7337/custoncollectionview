import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
 var flag = ["🇮🇳","🇳🇿","🇸🇬","🇿🇦","🇬🇧","🇺🇸","🇹🇷","🇯🇵","🇱🇷","🇱🇰"]
    var name = ["India","Australlia","Chaina","Netherland","Uk","Usa","Japan","Findland","Dudai","Shree Lanka"]
    var selectcell = -1
   var arr = Array<String>()
    
    @IBOutlet weak var cv: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
  
 
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return flag.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell2
        cell.lb1.text = flag[indexPath.row]
        cell.lb2.text = name[indexPath.row]
        cell.circle.image = UIImage(systemName: "circle.fill")
        cell.layer.borderWidth = 5
        cell.layer.cornerRadius = 10
      
        if selectcell == indexPath.row{
            cell.circle.image = UIImage(systemName: "circle.fill")
        }
        else {
            cell.circle.image = UIImage(systemName: "circle")
        }
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        selectcell = indexPath.row
        cv.reloadData()
//        let n = storyboard?.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
//        navigationController?.pushViewController(n, animated: true)
    }
    


}

