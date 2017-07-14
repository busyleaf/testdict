//
//  ViewController.swift
//  TestAstroDictionary
//
//  Created by Robert Snipes on 7/14/17.
//  Copyright © 2017 snyps. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var testAstroDictTableView: UITableView!
    
    var astro = ["Aries", "Taurus", "Gemini", "Cancer", "Leo", "Virgo", "Libra", "Scorpio", "Sagitarius", "Capricorn", "Aquarius", "Pisces"]

    override func viewDidLoad() {
        super.viewDidLoad()

        testAstroDictTableView.delegate = self
        testAstroDictTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return astro.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        cell.textLabel?.text = astro[indexPath.row]
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let sign = astro[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: sign)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! TestDefinitionViewController
        
        defVC.sign = sender as! String
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

