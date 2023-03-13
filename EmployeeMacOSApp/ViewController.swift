//
//  ViewController.swift
//  EmployeeMacOSApp
//
//  Created by Rushikesh Potdar on 09/03/23.
//

import Cocoa

class ViewController: NSViewController, NSTableViewDelegate, NSTableViewDataSource {

    @IBOutlet weak var nameTF: NSTextField!
    @IBOutlet weak var idTF: NSTextField!
    @IBOutlet weak var salaryTF: NSTextField!
    @IBOutlet weak var designationTF: NSTextField!
    @IBOutlet weak var tableView: NSTableView!
    
    var sample = Employee.getDummyEmployees()
    
    @IBAction func addButtonTap(_ sender: NSButton) {
        if !nameTF.stringValue.isEmpty &&
            !salaryTF.stringValue.isEmpty &&
            !idTF.stringValue.isEmpty &&
            !designationTF.stringValue.isEmpty{
            let emp = Employee(name: nameTF.stringValue, empId: Int(idTF.stringValue) ?? 111111, salary: Double(salaryTF.stringValue) ?? 00, designation: designationTF.stringValue)
            sample.append(emp)
            nameTF.stringValue = ""
            idTF.stringValue = ""
            salaryTF.stringValue = ""
            designationTF.stringValue = ""
            
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    func numberOfRows(in tableView: NSTableView) -> Int {
        return sample.count
    }
    func tableView(_ tableView: NSTableView, viewFor tableColumn: NSTableColumn?, row: Int) -> NSView? {
        if tableColumn?.identifier == NSUserInterfaceItemIdentifier.init(rawValue: "Name"){
            let cellId = NSUserInterfaceItemIdentifier.init(rawValue: "nameCell")
            guard let cellView = tableView.makeView(withIdentifier: cellId, owner: self) as? NSTableCellView else {return nil}
            cellView.textField?.stringValue = sample[row].name
            return cellView
        }else{
            let cellId = NSUserInterfaceItemIdentifier.init(rawValue: "empIdCell")
            guard let cellView = tableView.makeView(withIdentifier: cellId, owner: self) as? NSTableCellView else {return nil}
            cellView.textField?.stringValue = String(sample[row].empId)
            return cellView
        }
    }
    
}

