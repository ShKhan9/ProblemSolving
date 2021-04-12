//
//  ViewController.swift
//  ProblemSolving
//
//  Created by Shehata Gamal on 4/12/21.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(encode("abc",size:2))
    }
    func  encode(_ str:String,size:Int) -> String {
        // changed string
        var retStr = ""
        var length = size
        // iterate string characters
        str.forEach {
            // Convert char to ascii
            let charVal = String($0).unicodeScalars
            let  val = Int(charVal[charVal.startIndex].value)
            // save the duplicate
            let dup = length
            // if size-th ahead character exceed 'z'
            if (val + length > 122) {
                length -= (122 - val)
                length = length % 26
                retStr +=  String(UnicodeScalar(UInt8(96 + length)))
            } else {
                retStr +=  String(UnicodeScalar(UInt8(val + length)))
            }
            length = dup
        }
        return retStr
    }
}

