//
//  CellData.swift
//  FanApp
//
//  Created by Sahadev Tandur on 22/08/17.
//  Copyright © 2017 Sahadev Tandur. All rights reserved.
//

import Foundation

class Cell {
    private var _ImageURL : String!
    private var _TitleURL : String!
    private var _VideoURL : String!
    
    var ImageURL : String {
        return _ImageURL
    }
    
    var TitleURL : String {
        return _TitleURL
    }
    
    var VideoURL : String {
        return _VideoURL
    }
    
    init(ImgURL : String, TitURL : String, VidURL : String) {
        if ImgURL == ""
        {
            _ImageURL = "https://seeklogo.com/images/M/Metallica-logo-876C0080E1-seeklogo.com.png"
        }
        else
        {
        _ImageURL = ImgURL
        }
        _TitleURL = TitURL
        _VideoURL = VidURL
        print ( _ImageURL + "   " + _TitleURL + "   " + _VideoURL )
    }
}
