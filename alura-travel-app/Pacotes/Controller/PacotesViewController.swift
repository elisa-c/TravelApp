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
        let celulaPacote = collectionView.dequeueReusableCell(withReuseIdentifier: "celulaPacote", for: indexPath) as! PacoteCollectionViewCell
        
        celulaPacote.backgroundColor = UIColor.blue
        
        return celulaPacote
    }
    
    // MARK: - Navigation


}
