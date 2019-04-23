//
//  ViewController.swift
//  Idade de cachorro
//
//  Created by Eddie Saboia on 27/11/18.
//  Copyright © 2018 Eddie Saboia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textFieldIdade: UITextField!
    @IBOutlet weak var btnCalcIdade: UIButton!
    @IBOutlet weak var textLabelIdadeCalc: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Adição de um gesto para baixar o Teclado quando clicar em outro canto da tela
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:)))
        tap.cancelsTouchesInView = false
        self.view.addGestureRecognizer(tap)
        
        //Colocando uma Borda branca ao redor do Botão
        btnCalcIdade.backgroundColor = .clear
        btnCalcIdade.layer.cornerRadius = 5
        btnCalcIdade.layer.borderWidth = 1
        btnCalcIdade.layer.borderColor = UIColor.white.cgColor
        
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    
    @IBAction func calcIdade(_ sender: Any) {
        //Verificação para ver se tem algo digitado no TextField
        if(textFieldIdade.text != "" ){
            let idade = Int(textFieldIdade.text!)! * 7
            textLabelIdadeCalc.text = "A idade do seu cachorro é : " + String(idade) + "!"
        }else{
            let alert = UIAlertController(title: "Atenção!!", message: "Para calcular a idade do seu cachorro, digite a idade dele abaixo!", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        
    }
    
}

