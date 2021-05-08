//
//  AddViewController.swift
//  BookStore
//
//  Created by Karen Hernandez on 4/16/21.
//

import UIKit

class AddViewController: UIViewController {
    var book = Book()
    var delegate: BookStoreDelegate?
    var editBook = false
    
    @IBOutlet weak var titleText: UITextField!
    @IBOutlet weak var authorText: UITextField!
    @IBOutlet weak var pagesText: UITextField!
    @IBOutlet weak var descriptionText: UITextView!
    @IBOutlet weak var switchOutlet: UISwitch!
    
    @IBAction func saveBook(_ sender: UIButton) {
        book.title = titleText.text!
        book.author = authorText.text!
        book.description = descriptionText.text!
        
        if let text = pagesText.text, let pages = Int(text) {
            book.pages = pages
        }
        
        if switchOutlet.isOn {
            book.readThisBook = true
        } else {
            book.readThisBook = false
        }
        if editBook {
            delegate?.editBook(self, editBook: book)
        } else {
            delegate?.newBook(self, newBook: book)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        if editBook {
            self.title = "Edit Book"
            titleText.text = book.title
            authorText.text = book.author
            pagesText.text = String(book.pages)
            descriptionText.text = book.description 
            if book.readThisBook {
                switchOutlet.isOn = true
            } else {
                switchOutlet.isOn = false
            }
            
        } else{
            self.title = "Add Book"
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
