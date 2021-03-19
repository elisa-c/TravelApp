//
//  PacotesViewController.swift
//  alura-travel-app
//
//  Created by Elisa Camillo on 19/03/21.
//

import UIKit

class PacotesViewController: UIViewController, UICollectionViewDataSource {
    
    // MARK: - IBOutlet
    
    @IBOutlet weak var colecaoPacotesViagem: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colecaoPacotesViagem.dataSource = self

    }
    
    //

    let listaViagens:Array<Viagem> = ViagemDAO().retornaTodasAsViagens()
    
    //
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.listaViagens.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let celulaPacote = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! PacoteCollectionViewCell
        
        let viagemAtual = listaViagens[indexPath.item]
        
        celulaPacote.labelTitulo.text = viagemAtual.titulo
        celulaPacote.labelQuantidadeDias.text = "\(viagemAtual.quantidadeDeDias) dias"
        celulaPacote.labelPreco.text = "R$ \(viagemAtual.preco)"
        celulaPacote.imagemViagem.image = UIImage(named: viagemAtual.caminhoDaImagem)
        
        celulaPacote.layer.borderWidth = 0.5
        celulaPacote.layer.borderColor = UIColor(red: 85.0/255.0, green: 85.0/255.0, blue: 85.0/255.0, alpha: 85.0/255.0).cgColor
        celulaPacote.layer.cornerRadius = 8
        
        return celulaPacote
    }
    
    // MARK: - Navigation


}
