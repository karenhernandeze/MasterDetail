//
//  BookStore.swift
//  BookStore
//
//  Created by Karen Hernandez on 3/5/21.
//

import Foundation

class BookStore{

    var bookList: [Book] = []
    init(){
        var newBook = Book()
        newBook.title = "A Game of Thrones"
        newBook.author = "George R.R. Martin"
        newBook.description = """
            The first volume in Martin's first fantasy saga, A Song of Ice and Fire, combines intrigue, action, romance, and mystery in a family saga. The family is the Starks of Winterfell, a society in crisis due to climatic change that has created decades-long seasons, and a society almost without magic but with human perversity abundant and active.
            """
        newBook.year = 1996
        
        bookList.append(newBook)
        
        newBook = Book()
        newBook.title = "A Clash of Kings"
        newBook.author = "George R.R. Martin"
        newBook.description = """
            How does he do it? George R.R. Martin's high fantasy weaves a spell sufficient to seduce even those who vowed never to start a doorstopper fantasy series again (the first book--A Game of Thrones--runs over 700 pages). A Clash of Kings is longer and even more grim, but Martin continues to provide compelling characters in a vividly real world.
            """
        newBook.year = 1998
        
        bookList.append(newBook)
        
        newBook = Book()
        newBook.title = "A Storm of Swords"
        newBook.author = "George R.R. Martin"
        newBook.description = """
            Here is the third volume in George R. R. Martin's magnificent cycle of novels that includes A Game of Thrones and A Clash of Kings. As a whole, this series comprises a genuine masterpiece of modern fantasy, bringing together the best the genre has to offer. Magic, mystery, intrigue, romance, and adventure fill these pages and transport us to a world unlike any we have ever experienced. Already hailed as a classic, George R. R. Martin's stunning series is destined to stand as one of the great achievements of imaginative fiction.
            A Storm of Swords
            """
        newBook.year = 2002
        
        bookList.append(newBook)
        
        newBook = Book()
        newBook.title = "A Feast for Crows"
        newBook.author = "George R.R. Martin"
        newBook.description = """
            It seems too good to be true. After centuries of bitter strife and fatal treachery, the seven powers dividing the land have decimated one another into an uneasy truce. Or so it appears. . . . With the death of the monstrous King Joffrey, Cersei is ruling as regent in King’s Landing. Robb Stark’s demise has broken the back of the Northern rebels, and his siblings are scattered throughout the kingdom like seeds on barren soil. Few legitimate claims to the once desperately sought Iron Throne still exist—or they are held in hands too weak or too distant to wield them effectively. The war, which raged out of control for so long, has burned itself out. 
            """
        newBook.year = 2006
        
        bookList.append(newBook)
        
        newBook = Book()
        newBook.title = "A Dance with Dragons"
        newBook.author = "George R.R. Martin"
        newBook.description = """
            In the aftermath of a colossal battle, the future of the Seven Kingdoms hangs in the balance—beset by newly emerging threats from every direction. In the east, Daenerys Targaryen, the last scion of House Targaryen, rules with her three dragons as queen of a city built on dust and death. But Daenerys has thousands of enemies, and many have set out to find her. As they gather, one young man embarks upon his own quest for the queen, with an entirely different goal in mind.
            """
        newBook.year = 2013
        
        bookList.append(newBook)
        
        
        
        bookList = bookList.sorted(by: { $0.title < $1.title })
    }
}




