import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tabelview: UITableView!
    var fgcolor = ["deep","monil","jenis","keval","yagnik","vicky","niraj","harsh","harshid"]
    var number = [1,2,3,4,5,6,7,8,9]
    var photo = [UIImage(named: "deep"),UIImage(named: "monil"),UIImage(named: "jenis"),UIImage(named: "keval"),UIImage(named: "yagnik"),UIImage(named: "vicky"),UIImage(named: "niraj"),UIImage(named: "harsh"),UIImage(named: "harshid")]
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fgcolor.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell2
        cell.lb1.text = "\(number[indexPath.row])"
        cell.lb2.text = fgcolor[indexPath.row]
        cell.img.image = photo[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        navigation(number: number[indexPath.row], name: fgcolor[indexPath.row], photo: photo[indexPath.row]!)
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    func navigation(number:Int,name:String,photo:UIImage){
        let navigate = storyboard?.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
        navigate.number = number
        navigate.name = name
        navigate.photo = photo
        navigationController?.pushViewController(navigate, animated: true)
        
    }
    
    
}

