//
//  ViewController.swift
//  360Example
//
//  Created by Belal medhat on 6/29/20.
//  Copyright © 2020 Belal medhat. All rights reserved.
//

import UIKit
import Alamofire
import SDWebImage
class ViewController: UIViewController {
    
    var ActivityIndicator = UIActivityIndicatorView()
    var currentIndex: Int = 0 {
      didSet{
         Viewer360.image = images[currentIndex]
      }
    }
    var images: [UIImage] = [UIImage]()
    var lastPoint: CGPoint = CGPoint.zero
    let sensitivity: CGFloat = 5.0
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(self.ActivityIndicator)
        ActivityIndicator.translatesAutoresizingMaskIntoConstraints = false
        ActivityIndicator.widthAnchor.constraint(equalToConstant: 50).isActive = true
        ActivityIndicator.heightAnchor.constraint(equalToConstant: 50).isActive = true
        ActivityIndicator.centerXAnchor.constraint(equalTo: Viewer360.centerXAnchor).isActive = true
        ActivityIndicator.centerYAnchor.constraint(equalTo: Viewer360.centerYAnchor).isActive = true

        // Do any additional setup after loading the view.
        ActivityIndicator.color = .black
        ActivityIndicator.style = .medium
        Viewer360.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        Viewer360.layer.borderWidth = 1
        Viewer360.layer.cornerRadius = 10
        Viewer360.clipsToBounds = true
    }
    @IBOutlet weak var Viewer360: UIImageView!
    @IBAction func SwapGesture(_ sender: UIPanGestureRecognizer) {
        let currentPoint = sender.location(in: Viewer360)
        if sender.state == .began{
           lastPoint = currentPoint
        }else if sender.state == .changed {
           let velocity = sender.velocity(in: Viewer360)
           if velocity.x > 0 && currentPoint.x > lastPoint.x + sensitivity{
              currentIndex = currentIndex > 0 ? currentIndex - 1 : images.count - 1
              lastPoint = currentPoint
           }else{
              if currentPoint.x < lastPoint.x - sensitivity {
                 currentIndex = currentIndex < images.count - 1 ? currentIndex + 1 : 0
                 lastPoint = currentPoint
              }
           }
        }
    }
    
    func NetworkCall(){
        ActivityIndicator.startAnimating() 
        let url = URL(string: "https://run.mocky.io/v3/9e857634-f4e3-4474-8e6a-75bef1bf1ac3")! // using https://designer.mocky.io/ // to create api
        var urlreqest = URLRequest(url: url)
        urlreqest.httpMethod = "GET"
        Alamofire.request(urlreqest).responseJSON { response in
            do{
            

                let pars = try JSONDecoder().decode(Imgresponse.self, from:response.data!)
                for i in 0...(pars.data?.count ?? 0) - 1 {
                    
                    guard let imgUrl = URL(string: pars.data?[i] ?? "") else {return}
                    let data = try? Data(contentsOf: imgUrl)
                    let image: UIImage = UIImage(data: data!)!
                    self.images.append(image)
                }
                self.ActivityIndicator.stopAnimating()
                self.ActivityIndicator.removeFromSuperview()
                self.currentIndex = 0
                    print(pars.data!)
            }catch{
                print("error")
            }
        }
    }
    @IBAction func CallNetwork(_ sender: UIButton) {
        NetworkCall()
    }
}

