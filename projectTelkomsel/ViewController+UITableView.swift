//
//  ViewController+UITableView.swift
//  projectTelkomsel
//
//  Created by Phincon on 16/02/23.
//

import Foundation
import UIKit

extension ViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier, for: indexPath) as? TableViewCell else {return UITableViewCell() }
                
        cell.setupComponents()
        
        let parsePaket = paket[indexPath.row]
        
        cell.setText(harga:"Rp\(parsePaket.harga)", namaKuota: parsePaket.namaKuota , jumlahKuota:  "\(parsePaket.jumlahKuota) GB")
        cell.saveImage.image = UIImage(named: "save")
        cell.masaAktifImage.image = UIImage(named: "masaAktif")
        cell.selectionStyle = .none
        
        let attributeString: NSMutableAttributedString = NSMutableAttributedString(string: "Rp\(parsePaket.hargaSebelum)")
            attributeString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 2, range: NSRange(location: 0, length: attributeString.length))
        cell.hargaSebelumLabel.attributedText = attributeString
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return namaKuotaCount()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let parsePaket = paket[indexPath.row]
        let title = "\(parsePaket.namaKuota)"
        let message = "\(parsePaket.jumlahKuota) GB harganya Rp\(parsePaket.harga)"
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Beli", style: .default))
        present(alert, animated: true)
    }
}
