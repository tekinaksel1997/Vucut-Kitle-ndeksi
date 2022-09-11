//
//  ViewController.swift
//  Vücut Kitle Endeksi
//
//  Created by Tekin Aksel Demir on 25.08.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Kilo: UITextField!
    @IBOutlet weak var Boy: UITextField!
    @IBOutlet weak var İndex: UILabel!
    @IBOutlet weak var Sonuc: UILabel!
    @IBOutlet weak var Endeks: UILabel!
    override func viewDidLoad()
    
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func hesapla(_ sender: Any) {
        
        if let weight = Float(Kilo.text!) {
            if let size = Float(Boy.text!) {
                let indexkilo = size * size
                let indexsonuc = weight / indexkilo
                İndex.text = String(indexsonuc)
                Endeks.text = "Vücut Kitle Endeksiniz"
                
                if Float(İndex.text!)! < 18.5 {
                    Sonuc.text = "İdeal Kilonun Altındasınız Kilo Almanız Gerek !!!"
                } else if Float(İndex.text!)! >= 18.5 && Float(İndex.text!)! < 25 {
                    Sonuc.text = "Tebrikler İdeal Kilonuzdasınız."
                } else if Float(İndex.text!)! >= 25 && Float(İndex.text!)! < 30 {
                    Sonuc.text = "Normalin üstünde kilon var vermen gerek"
                } else if Float(İndex.text!)! >= 30 && Float(İndex.text!)! < 35 {
                    Sonuc.text = "Obez kategorisinin en altındasın kilo vermen gerek biraz daha zayıflarsan sağlığına kavuşabilirsin"
                } else {
                    Sonuc.text = "Obezsin ve riskli bir durumdasın acilen kilo vermen gerekiyor sağlığına kavuşabilmen için spor yap"
                }
            }
        }
    }
    
}

