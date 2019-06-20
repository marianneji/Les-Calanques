//
//  CalanqueTableViewCell.swift
//  Les Calanques
//
//  Created by Graphic Influence on 20/06/2019.
//  Copyright © 2019 marianne massé. All rights reserved.
//

import UIKit

class CalanqueTableViewCell: UITableViewCell {
    
    @IBOutlet weak var containerView: UIView!
    
    @IBOutlet weak var calanqueIV: ImageRonde!
    
    @IBOutlet weak var nomLabel: UILabel!
    
    var calanque: Calanque!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupCell(_ calanque: Calanque) {
        self.calanque = calanque
        containerView.layer.cornerRadius = 20
        containerView.backgroundColor = .lightGray
        nomLabel.text = self.calanque.nom
        calanqueIV.image = self.calanque.image
    }
}
