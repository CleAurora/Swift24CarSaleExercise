//
//  CarViewCell.swift
//  CarSale
//
//  Created by Cleís Aurora Pereira on 26/10/20.
//

import UIKit

class CarViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!

    func setup(car: Car){
        nameLabel.text = car.name
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
