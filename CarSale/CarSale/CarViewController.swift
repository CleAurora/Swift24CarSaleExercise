//
//  CarViewController.swift
//  CarSale
//
//  Created by Cleís Aurora Pereira on 26/10/20.
//

import UIKit

class CarViewController: ViewController {

    @IBOutlet weak var tableView: UITableView!

    var carArray = [Car]()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self

        carArray.append(Car(name: "Celta", image: "Celta.png", ano: "2020"))
        carArray.append(Car(name: "Gol", image: "Gol.png", ano: "2019"))
        carArray.append(Car(name: "Polo", image: "polo.png", ano: "2020"))
        carArray.append(Car(name: "Celta", image: "Celta.png", ano: "2020"))
        carArray.append(Car(name: "Gol", image: "Gol.png", ano: "2019"))
        carArray.append(Car(name: "Polo", image: "polo.png", ano: "2020"))
        }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension CarViewController: UITableViewDelegate{

}

extension CarViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        carArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CarViewCell", for: indexPath) as! CarViewCell
        cell.setup(car: carArray[indexPath.row])

        return cell

    }


}
