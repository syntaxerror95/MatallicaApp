//
//  ViewController.swift
//  FanApp
//
//  Created by Sahadev Tandur on 22/08/17.
//  Copyright © 2017 Sahadev Tandur. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView : UITableView!
    var cells = [Cell]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        let c1 = Cell(ImgURL: "https://img.discogs.com/kQ4yRVXpS1etQEUutJj9LgKO-y4=/fit-in/300x300/filters:strip_icc():format(jpeg):mode_rgb():quality(40)/discogs-images/R-780059-1359382083-8204.jpeg.jpg", TitURL: "Master Of Puppets", VidURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/xnKhsTXoKCI\" frameborder=\"0\" allowfullscreen></iframe>")
        cells.append(c1)
        
        let c2 = Cell(ImgURL: "", TitURL: "Fade To Black", VidURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/WEQnzs8wl6E\" frameborder=\"0\" allowfullscreen></iframe> ")
        cells.append(c2)
        
        let c3 = Cell(ImgURL: "", TitURL: "One", VidURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/aSNJ00iAZ7I\" frameborder=\"0\" allowfullscreen></iframe>")
        cells.append(c3)
        
        let c4 = Cell(ImgURL: "https://i.ytimg.com/vi/WyDMnY6upYc/maxresdefault.jpg", TitURL: "Unforgiven", VidURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Ckom3gf57Yw\" frameborder=\"0\" allowfullscreen></iframe>")
        cells.append(c4)
        
        let c5 = Cell(ImgURL: "https://upload.wikimedia.org/wikipedia/en/thumb/8/82/Metallica_-_Ride_the_Lightning_cover.jpg/220px-Metallica_-_Ride_the_Lightning_cover.jpg", TitURL: "Ride The Lightning", VidURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/uebInqG1pJI\" frameborder=\"0\" allowfullscreen></iframe>")
        cells.append(c5)


        
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CellID", for: indexPath) as? VideoTableViewCell
        {
            let cellrow = cells[indexPath.row]
            cell.UpdateUI(ce: cellrow)
            return cell
        }
        else{
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cells.count
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cellsend : Cell = cells[indexPath.row]
        
        performSegue(withIdentifier: "ConnectToVideoVC", sender: cellsend)
        
       
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? VideoVC
        {
            if let csend = sender as? Cell
            {
                destination.cell = csend
            }
        }
    }

}

