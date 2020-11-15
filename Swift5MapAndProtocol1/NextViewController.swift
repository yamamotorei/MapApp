

import UIKit

protocol SearchLocatiionDelegate {
    func searchLocation(idoValue:String,keidoValue:String)
}

class NextViewController: UIViewController {
    
    @IBOutlet weak var idoTextField: UITextField!
    
    @IBOutlet weak var kedoTextField: UITextField!
    
    var delegate:SearchLocatiionDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func okAction(_ sender: Any) {
        
        //入力された値を取得
        
        let idoValue = idoTextField.text!
        let keidoValue = kedoTextField.text!
    
        //両方のTFが空でなければ戻る
        
        if idoTextField.text != nil && kedoTextField.text != nil{
            
            //デリゲートメソッドの引数に入れる
            delegate?.searchLocation(idoValue: idoValue, keidoValue: keidoValue)

            dismiss(animated: true, completion: nil)
        }
        
    }
    
    
    

}
