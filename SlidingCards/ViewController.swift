//
//  ViewController.swift
//  SlidingCards
//
//  Created by Nodirbek on 08/06/22.
//

import UIKit
import CardSlider

struct Item: CardSliderItem {
    
    var image: UIImage
    
    var rating: Int?
    
    var title: String
    
    var subtitle: String?
    
    var description: String?
    
    
}

class ViewController: UIViewController, CardSliderDataSource {
    
    @IBOutlet weak var myButton: UIButton!
    
    var data: [Item] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        data.append(Item(image: UIImage(named: "image1")!,
                         rating: nil,
                         title: "Goood image",
                         subtitle: "Look to this image so good",
                         description: """
В Узбекистане сейчас в интернете распространяется информация о введение штрафа за третьего ребенка с 2023 года. Не верьте, это фейк
"""))
        
        data.append(Item(image: UIImage(named: "image2")!,
                         rating: nil,
                         title: "Weather",
                         subtitle: "Weather going to be hot",
                         description: """
В Узбекистане сегодня в некоторых городах ожидается жара до +42 градусов
"""))
        
        data.append(Item(image: UIImage(named: "image3")!,
                         rating: nil,
                         title: "EYUF",
                         subtitle: "Natijalar",
                         description: """
Эл-юрт умиди” жамғармаси 2-стипендия танловининг 2-босқичига тавсия этилган номзодлар билан 2022 йил 7 июнь куни ўтказилган суҳбат натижаларини эълон қилади!

"""))
        
        data.append(Item(image: UIImage(named: "image4")!,
                         rating: nil,
                         title: "Bookmarks",
                         subtitle: "Get excited about bookmarks",
                         description: "You can add bookmarks in the app"))
        myButton.backgroundColor = .link
        myButton.tintColor = .white
    }

    @IBAction func didTapButton(){
        // Present the card slider
        let vc = CardSliderViewController.with(dataSource: self)
        vc.title = "Welcome"
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .flipHorizontal
        present(vc, animated: true)
    }
    
    func item(for index: Int) -> CardSliderItem {
        return data[index]
    }
    
    func numberOfItems() -> Int {
        data.count
    }

}



