//
//  ViewController.swift
//  TableView_Custom
//
//  Created by HSIN-HUNG WU on 2018/3/20.
//  Copyright © 2018年 HSIN-HUNG WU. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    
    @IBOutlet var labelBall: UILabel!
    var arrBalls:Array<Ball> = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrBalls.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:CustomCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! CustomCell
        if indexPath.row % 2 == 0 {
            cell.backgroundColor = UIColor.yellow
        } else {
            cell.backgroundColor = UIColor.orange
        }
        
        let ball = arrBalls[indexPath.row]
        cell.setCell(labelName: ball.name, labelValue: ball.value, imageName: ball.imageName)
        
        return cell
    }
    
    func setupBalls(){
        let ball1 = Ball(name:"籃球", value: 600, imageName: "1.jpg")
        let ball2 = Ball(name:"足球", value: 500, imageName: "2.jpg")
        let ball3 = Ball(name:"棒球", value: 250, imageName: "3.jpg")
        let ball4 = Ball(name:"其他", value: 350, imageName: "1.jpg")
        arrBalls.append(ball1)
        arrBalls.append(ball2)
        arrBalls.append(ball3)
        arrBalls.append(ball4)
        
        
    }


    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.setupBalls()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

