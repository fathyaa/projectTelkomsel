//
//  TableViewCell.swift
//  projectTelkomsel
//
//  Created by Phincon on 16/02/23.
//

import UIKit

class TableViewCell: UITableViewCell {
    static let identifier = "TableViewCell"
    
    var namaKuotaLabel : UILabel = {
        var nkl = UILabel()
        return nkl
    }()
    
    var hargaLabel : UILabel = {
        var hl = UILabel()
        return hl
    }()
    
    var jumlahKuotaLabel : UILabel = {
        var jkl = UILabel()
        return jkl
    }()
    
    var saveImage : UIImageView = {
        var si = UIImageView()
        return si
    }()
    
    var masaAktifImage : UIImageView = {
        var di = UIImageView()
        return di
    }()
    
    var hargaSebelumLabel : UILabel = {
        var hsl = UILabel()
        return hsl
    }()
    
    let bgView : UIView = {
        let v = UIView()
        return v
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupComponents(){
        self.addSubview(bgView)
        self.bgView.addSubview(namaKuotaLabel)
        self.bgView.addSubview(hargaLabel)
        self.bgView.addSubview(jumlahKuotaLabel)
        self.bgView.addSubview(saveImage)
        self.bgView.addSubview(masaAktifImage)
        self.bgView.addSubview(hargaSebelumLabel)
        
        setupHargaLabel()
        setupNamaKuotaLabel()
        setupJumlahKuotaLabel()
        setupSaveImage()
        setupMasaAktifImage()
        setupBgView()
        setupHargaSebelumLabel()

    }
    
    func setupBgView(){
        self.bgView.translatesAutoresizingMaskIntoConstraints = false
        self.bgView.topAnchor.constraint(equalTo: self.topAnchor, constant: 18).isActive = true
        self.bgView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        self.bgView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20).isActive = true
        self.bgView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -18).isActive = true
        self.bgView.layer.borderWidth = 2
        self.bgView.layer.borderColor = UIColor(named: "AbuAbu")?.cgColor
        self.bgView.layer.cornerRadius = 6
    }
    
    func setupNamaKuotaLabel(){
        self.namaKuotaLabel.translatesAutoresizingMaskIntoConstraints = false
        self.namaKuotaLabel.rightAnchor.constraint(equalTo: self.bgView.rightAnchor, constant: -12).isActive = true
        self.namaKuotaLabel.bottomAnchor.constraint(equalTo: self.bgView.bottomAnchor, constant: -12).isActive = true
        self.namaKuotaLabel.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
    }
    
    func setupHargaLabel(){
        self.hargaLabel.translatesAutoresizingMaskIntoConstraints = false
        self.hargaLabel.leftAnchor.constraint(equalTo: self.bgView.leftAnchor, constant: 12).isActive = true
        self.hargaLabel.bottomAnchor.constraint(equalTo: self.bgView.bottomAnchor, constant: -28).isActive = true
        self.hargaLabel.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        self.hargaLabel.textColor = .red
    }
    
    func setupJumlahKuotaLabel(){
        self.jumlahKuotaLabel.translatesAutoresizingMaskIntoConstraints = false
        self.jumlahKuotaLabel.topAnchor.constraint(equalTo: self.bgView.topAnchor, constant: 12).isActive = true
        self.jumlahKuotaLabel.leftAnchor.constraint(equalTo: self.bgView.leftAnchor, constant: 12).isActive = true
        self.jumlahKuotaLabel.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        
    }
    
    func setupSaveImage(){
        self.saveImage.translatesAutoresizingMaskIntoConstraints = false
        self.saveImage.topAnchor.constraint(equalTo: self.bgView.topAnchor, constant: 15).isActive = true
        self.saveImage.rightAnchor.constraint(equalTo: self.bgView.rightAnchor, constant: -17).isActive = true
        
    }
    
    func setupMasaAktifImage(){
        self.masaAktifImage.translatesAutoresizingMaskIntoConstraints = false
        self.masaAktifImage.topAnchor.constraint(equalTo: self.bgView.topAnchor, constant: 14).isActive = true
        self.masaAktifImage.leftAnchor.constraint(equalTo: self.jumlahKuotaLabel.rightAnchor, constant: 20).isActive = true
    }
    
    func setupHargaSebelumLabel(){
        self.hargaSebelumLabel.translatesAutoresizingMaskIntoConstraints = false
        self.hargaSebelumLabel.bottomAnchor.constraint(equalTo: self.hargaLabel.topAnchor).isActive = true
        self.hargaSebelumLabel.leftAnchor.constraint(equalTo: self.bgView.leftAnchor, constant: 12).isActive = true
        self.hargaSebelumLabel.topAnchor.constraint(equalTo: self.jumlahKuotaLabel.bottomAnchor, constant: 20).isActive = true
        self.hargaSebelumLabel.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        self.hargaSebelumLabel.textColor = .lightGray
    }
    
    func setText(harga : String, namaKuota : String, jumlahKuota : String){
        self.hargaLabel.text = harga
        self.namaKuotaLabel.text = namaKuota
        self.jumlahKuotaLabel.text = jumlahKuota
    }
    
}
