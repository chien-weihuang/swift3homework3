//
//  TableViewController.swift
//  hw3
//
//  Created by 黃健維 on 5/12/17.
//  Copyright © 2017 ken. All rights reserved.
//

import UIKit
import Foundation



class AirportTableViewCell : UITableViewCell {
    
    @IBOutlet weak var airportFullName: UILabel!
    @IBOutlet weak var airportIATA: UILabel!

    
    @IBOutlet weak var airportCity: UILabel!
}

class TableViewController: UITableViewController {
    
    //var connectAirportFullName = ""
    var connectAirportFullName = [String]()
    var connectIATA = [String]()
    var connectServedCity = [String]()
    var connectCountry = [String]()
    var setCountry = Set<String>()
    var countryCatogory = ["United Kingdom", "France", "Netherlands", "South Korea", "Germany", "Russia", "China", "Australia", "Singapore", "Japan", "Thailand", "Malaysia", "Taiwan", "Philippines", "Canada", "Hong Kong", "United States"]
    var germany = [Any]()
    var germanyPass = ["Germany":Array<Any>()]
    var UK = [Any]()
    var UKPass = ["United Kingdom":Array<Any>()]
    var france = [Any]()
    var FrancePass = ["France":Array<Any>()]
    var Neitherland = [Any]()
    var NeitherlandPass = ["Netherlands":Array<Any>()]
    var SouthKorea = [Any]()
    var SouthKoreaPass = ["South Korea":Array<Any>()]
    var Russia = [Any]()
    var RussiaPass = ["Russia":Array<Any>()]
    var China = [Any]()
    var ChinaPass = ["China":Array<Any>()]
    var Australie = [Any]()
    var AustraliaPass = ["Australia":Array<Any>()]
    var singapore = [Any]()
    var singaporePass = ["Singapore":Array<Any>()]
    var Japan = [Any]()
    var JapanPass = ["Japan":Array<Any>()]
    var thailand = [Any]()
    var ThailandPass = ["Thailand":Array<Any>()]
    var Taiwan = [Any]()
    var TaiwanPass = ["Taiwan":Array<Any>()]
    var malaysia = [Any]()
    var malayPass = ["Malaysia":Array<Any>()]
    var philipine = [Any]()
    var philipass = ["Philippines":Array<Any>()]
    var canada = [Any]()
    var CanadaPass = ["Canada":Array<Any>()]
    var hongkong = [Any]()
    var Hongkongpass = ["Hong Kong":Array<Any>()]
    var unitedstate = [Any]()
    var unitedpass = ["United States":Array<Any>()]
    var all = [String: Array<AnyObject>]()
    
    
    func loadData() {
        do {
            if let file = Bundle.main.url(forResource: "airports", withExtension: "json") {
                let data = try Data(contentsOf: file)
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                //print(json)
                if let objects = json as? [[String:String?]] {
                    // json is a dictionary
                    
                    for anotherObject in 0...(objects.count-1){
                        if objects[anotherObject]["Country"]! == "Germany"{
                            germany.append(objects[anotherObject])
                        }
                        if objects[anotherObject]["Country"]! == "United Kingdom"{
                            UK.append(objects[anotherObject])
                        }
                        if objects[anotherObject]["Country"]! == "United States"{
                            unitedstate.append(objects[anotherObject])
                        }
                        if objects[anotherObject]["Country"]! == "France"{
                            france.append(objects[anotherObject])
                        }
                        if objects[anotherObject]["Country"]! == "Netherlands"{
                            Neitherland.append(objects[anotherObject])
                        }
                        if objects[anotherObject]["Country"]! == "South Korea"{
                            SouthKorea.append(objects[anotherObject])
                        }
                        if objects[anotherObject]["Country"]! == "Russia"{
                            Russia.append(objects[anotherObject])
                        }
                        if objects[anotherObject]["Country"]! == "China"{
                            China.append(objects[anotherObject])
                        }
                        if objects[anotherObject]["Country"]! == "Australia"{
                            Australie.append(objects[anotherObject])
                        }
                        if objects[anotherObject]["Country"]! == "Singapore"{
                            singapore.append(objects[anotherObject])
                        }
                        if objects[anotherObject]["Country"]! == "Japan"{
                            Japan.append(objects[anotherObject])
                        }
                        if objects[anotherObject]["Country"]! == "Thailand"{
                            thailand.append(objects[anotherObject])
                        }
                        if objects[anotherObject]["Country"]! == "Malaysia"{
                            malaysia.append(objects[anotherObject])
                        }
                        if objects[anotherObject]["Country"]! == "Taiwan"{
                            Taiwan.append(objects[anotherObject])
                        }
                        if objects[anotherObject]["Country"]! == "Philippines"{
                            philipine.append(objects[anotherObject])
                        }
                        if objects[anotherObject]["Country"]! == "Canada"{
                            canada.append(objects[anotherObject])
                        }
                        if objects[anotherObject]["Country"]! == "Hong Kong"{
                            hongkong.append(objects[anotherObject])
                        }
                    

                    }
                    //print(germany)
                    /*
                    germanyPass["Germany"] = germany
                    UKPass["United Kingdom"] = UK
                    unitedpass["United States"] = unitedstate
                    FrancePass["France"] = france
                    NeitherlandPass["Neitherland"] = Neitherland
                    SouthKoreaPass["South Korea"] = SouthKorea
                    RussiaPass["Russia"] = Russia
                    ChinaPass["China"] = China
                    AustraliaPass["Australia"] = Australie
                    singaporePass["Singapore"] = singapore
                    JapanPass["Japan"] = Japan
                    ThailandPass["Thailand"] = thailand
                    malayPass["Malaysia"] = malaysia
                    TaiwanPass["Taiwan"] = Taiwan
                    philipass["Philippines"] = philipine
                    CanadaPass["Canada"] = canada
                    Hongkongpass["Hong Kong"] = hongkong
 */
                    //germanyPass["Germany"] = germany
                    //print(germanyPass)
                    //print(UK)
                    all["Germany"] = (germany as [AnyObject])
                    all["United Kingdom"] = (UK as [AnyObject])
                    all["United States"] = (unitedstate  as [AnyObject])
                    all["France"] = (france  as [AnyObject])
                    all["Neitherland"] = (Neitherland  as [AnyObject])
                    all["South Korea"] = (SouthKorea  as [AnyObject])
                    all["Russia"] = (Russia  as [AnyObject])
                    all["China"] = (China  as [AnyObject])
                    all["Australia"] = (Australie  as [AnyObject])
                    all["Singapore"] = (singapore  as [AnyObject])
                    all["Japan"] = (Japan  as [AnyObject])
                    all["Thailand"] = (thailand  as [AnyObject])
                    all["Malaysia"] = (malaysia  as [AnyObject])
                    all["Taiwan"] = (Taiwan  as [AnyObject])
                    all["Philippines"] = (philipine  as [AnyObject])
                    all["Canada"] = (canada as [AnyObject])
                    all["Hong Kong"] = (hongkong  as [AnyObject])
                    
                   //print(all["Russia"])
                    for items in all.values {
                        for item in items{
                            //print((item))
                            for ite in (item as? [String: String])!{
                                //print(ite)
                                if ite.key == "Country"{
                                    connectCountry.append(ite.value)
                                
                                }
                                
                                if ite.key == "ServedCity"{
                                    connectServedCity.append(ite.value)
                                }
                                if ite.key == "IATA"{
                                    connectIATA.append(ite.value)
                                    
                                }
                                if ite.key == "Airport"{
                                    connectAirportFullName.append(ite.value)
                                    
                                }

                                
                               

                            }
                            //connectIATA = item[1]
                          //  connectServedCity = (item as! String)!["ServedCity"]
                            
                        }
                    }
                    print(connectAirportFullName)
                        /*
                    let test = connectCountry.filter({ (x) -> Bool in
                        if x == "United States"{
                            for (key, value) in objects[anotherObject] {
                                self.unitedstate[String(key)] = String(describing: value)
                            }
                        }
                        print(unitedstate)
                        return x == "United States"
                    })
                    print(test)
                    }
 */
                //print(connectAirportFullName)
                   // print(connectCountry)
                    /*
                    for countryData in connectCountry{
                        for object in objects{
                            
                            let temporaryCompare = object["Country"]!
                            // print(temporaryCompare!)
                            if countryData == temporaryCompare{
                                //   print(countryData)
                                return countryData
                                
                            }
                        }
                    }
                    */
                }
                else {
                    print("JSON is invalid")
                }
            } else {
                print("no file")
            }
        } catch {
            print(error.localizedDescription)
        }
    }
    func catogorizeCountry(){
        
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        loadData()
        
    }
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 17
    }
    
    //title for section
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        //setCountry = Set(connectCountry)
        //print(setCountry)
        /*
        if (all["Russia"] != nil) {
            return "Russia"
        }
        if (all["Germany"] != nil) {
            print("inside")
            return "Germany"
        }
        if (all["United Kingdom"] != nil) {
            return "United Kingdom"
        }
        if (all["United States"] != nil) {
            return "United States"
        }
        if (all["Canada"] != nil) {
            return "Canada"
        }
        if (all["Taiwan"] != nil) {
            return "Taiwan"
        }
        if (all["Malaysia"] != nil) {
            return "Malaysia"
        }
        if (all["Hong Kong"] != nil) {
            return "Hong Kong"
        }
        if (all["Philippines"] != nil) {
            return "Philippines"
        }
        if (all["France"] != nil) {
            return "France"
        }

        if (all["Thailand"] != nil) {
            return "Thailand"
        }

        if (all["Netherlands"] != nil) {
            return "Netherlands"
        }

        if (all["South Korea"] != nil) {
            return "South Korea"
        }

        if (all["China"] != nil) {
            return "China"
        }

        if (all["Australia"] != nil) {
            return "Australia"
        }

        if (all["Singapore"] != nil) {
            return "Singapore"
        }
        if (all["Japan"] != nil) {
            return "Japan"
        }
*/
        if section == 0 {
            
            return "Russia"
        }
        if section == 1 {
            return "Neitherland"
        }
        if section == 2 {
            return "China"
        }
        if section == 3 {
            return "Australia"
        }
        if section == 4 {
            return "Singapore"
        }
        if section == 5 {
            return "United Kingdom"
        }
        if section == 6 {
            return "France"
        }
        if section == 7 {
            return "Japan"
        }
        if section == 8 {
            return "Thailand"
        }
        if section == 9 {
            return "Malaysia"
        }
        if section == 10 {
            return "Taiwan"
        }
        if section == 11 {
            return "Philippines"
        }
        if section == 12 {
            return "South Korea"
        }
        if section == 13 {
            return "Canada"
        }
        if section == 14 {
            return "Germany"
        }
        if section == 15 {
            return "Hong Kong"
        }
        else {
            return "United States"
        }

        
    }
   

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        //print(connectAirportFullName.count)
        //print(connectIATA.count)
        /*
        if (all["Russia"] != nil) {
            return (all["Russia"]!.count)
        }
        if (all["Germany"] != nil) {
            return (all["Germany"]!.count)
        }
        if (all["United Kingdom"] != nil) {
            return (all["United Kingdom"]!.count)
        }
        if (all["United States"] != nil) {
            return (all["United States"]!.count)
        }
        if (all["Canada"] != nil) {
            return (all["Canada"]!.count)
        }
        if (all["Taiwan"] != nil) {
            return (all["Taiwan"]!.count)
        }
        if (all["Malaysia"] != nil) {
            return (all["Malaysia"]!.count)
        }
        if (all["Hong Kong"] != nil) {
            return (all["Hong Kong"]!.count)
        }
        if (all["Philippines"] != nil) {
            return (all["Philippines"]!.count)
        }
        if (all["France"] != nil) {
            return (all["France"]!.count)
        }
        
        if (all["Thailand"] != nil) {
            return (all["Thailand"]!.count)
        }
        
        if (all["Netherlands"] != nil) {
            return (all["Netherlands"]!.count)
        }
        
        if (all["South Korea"] != nil) {
            return (all["South Korea"]!.count)
        }
        
        if (all["China"] != nil) {
            return (all["China"]!.count)
        }
        
        if (all["Australia"] != nil) {
            return (all["Australia"]!.count)
        }
        
        if (all["Singapore"] != nil) {
            return (all["Singapore"]!.count)
        }
        if (all["Japan"] != nil) {
            return (all["Japan"]!.count)
        }
*/
        
        if section == 0 {
            return Russia.count
            
        }
        if section == 1 {
            return Neitherland.count

        }
        if section == 2 {
            return 4
        }
        if section == 3 {
            return 1
        }
        if section == 4 {
            return 1
        }
        if section == 5 {
            return 2
        }
        if section == 6 {
            return 1
        }
        if section == 7 {
            return 6
        }
        if section == 8 {
            return 1
        }
        if section == 9 {
            return 1
        }
        if section == 10 {
            return 3
        }
        if section == 11 {
            return 1
        }
        if section == 12 {
            return 2
        }
        if section == 13 {
            return 2
        }
        if section == 14 {
            return 2
        }
        if section == 15 {
            return 1
        }
        else {
            return 9
        }

        
       // return all[section].count3
    }
    var connectTest = ""
   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellList", for: indexPath) as! AirportTableViewCell

        
        //Mark -  get the country sections here
        let keys = all.flatMap(){ $0.0 as String }
        let datasection = keys[indexPath.section]
        var sectionArray = all[datasection]
        let itemArray = sectionArray![indexPath.row]
        print(itemArray)
      //  let array = connectAirportFullName[datasection]
        
       // print(keys)
        //let datasection = all.keys[0]
        //for detect in connectServedCity{
       let servecity = connectServedCity[indexPath.section]
        print(servecity)
        connectTest = (itemArray["Airport"] as! String)
        cell.airportFullName.text = (itemArray["Airport"] as! String)
        
        cell.airportIATA.text = (itemArray["IATA"] as! String)

        cell.airportCity.text = (itemArray["ServedCity"] as! String)

        //}
        //}
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let selectedIndex = self.tableView.indexPath(for: sender as! UITableViewCell)
        if  segue.identifier == "showAirport",
            let destination = segue.destination as? ViewController{
            let keys = all.flatMap(){ $0.0 as String }
            let datasection = keys[(selectedIndex?.section)!]
            var sectionArray = all[datasection]
            let itemArray = sectionArray![(selectedIndex?.row)!]
            destination.airport = (itemArray["Airport"] as! String)

            destination.city = (itemArray["ServedCity"] as! String)
            destination.country = (itemArray["Country"] as! String)
            destination.IATA = (itemArray["IATA"] as! String)
            
            
            
        }
    }
    

}
