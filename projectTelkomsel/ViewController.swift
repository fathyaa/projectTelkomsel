//
//  ViewController.swift
//  projectTelkomsel
//
//  Created by Phincon on 16/02/23.
//

import UIKit

protocol VCProtocol{
    func registerTableView()
    func appendPaketData()
}

class ViewController: UIViewController {
    var tableView : UITableView!
    var paket : [StructPaket] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerTableView()
        appendPaketData()
    }

    func namaKuotaCount() -> Int {
        return paket.count
    }
}

extension ViewController: VCProtocol{
    func registerTableView() {
        tableView = UITableView(frame: CGRect(x: 0, y: 0, width: self.view.bounds.size.width, height: self.view.bounds.size.height))
        tableView.register(TableViewCell.self, forCellReuseIdentifier: TableViewCell.identifier)
        tableView.dataSource = self
        tableView.delegate = self
        self.view.addSubview(tableView)
        self.tableView.separatorColor = .white;
    }
    
    func appendPaketData() {
        let paket1 = StructPaket(jumlahKuota: "14", namaKuota: "Internet OMG!", hargaSebelum: "30.000", harga: "20.000")
        let paket2 = StructPaket(jumlahKuota: "27", namaKuota: "Combo OMG!", hargaSebelum: "47.000", harga: "30.000")
        let paket3 = StructPaket(jumlahKuota: "45", namaKuota: "Internet Sakti", hargaSebelum: "90.000", harga: "60.000")
        let paket4 = StructPaket(jumlahKuota: "50", namaKuota: "Internet OMG!", hargaSebelum: "110.000", harga: "90.000")
        let paket5 = StructPaket(jumlahKuota: "75", namaKuota: "Kuota ketengan", hargaSebelum: "140.000", harga: "120.000")
        let paket6 = StructPaket(jumlahKuota: "95", namaKuota: "Internet OMG!", hargaSebelum: "170.000", harga: "150.000")
        let paket7 = StructPaket(jumlahKuota: "100", namaKuota: "Kuota ketengan", hargaSebelum: "220.000", harga: "200.000")
        
        paket.append(paket1)
        paket.append(paket2)
        paket.append(paket3)
        paket.append(paket4)
        paket.append(paket5)
        paket.append(paket6)
        paket.append(paket7)
    }
}
