//
//  NpcsTableViewController.swift
//  D&D Tavern Aid
//
//  Created by Rafael on 03/06/19.
//  Copyright © 2019 Rafael Plinio. All rights reserved.
//

import UIKit

class NpcsTableViewController: UITableViewController {

    var npcs: [Npc] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadNpcs()
        
    }
    
    func loadNpcs() {
        let fileNpcsURL = Bundle.main.url(forResource: "100npc", withExtension: "json")!
        let jsonNpcsData = try! Data(contentsOf: fileNpcsURL)
        do {
            npcs = try JSONDecoder().decode([Npc].self, from: jsonNpcsData)
        } catch {
            print("JSON error. \(error.localizedDescription)")
        }
        
        //only if all values are STRING
        let json = [[String:String]]()
        
        //then sort the array with (by roll):
        _ = json.sorted { $0["roll"]! < $1["roll"]! }
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return npcs.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "npcCell", for: indexPath)

        let npc = npcs[indexPath.row]
        cell.textLabel?.text = npc.name
        cell.detailTextLabel?.text = "Roll: \(npc.roll)"

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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
