
import Foundation

import Firebase

struct bingoWord: Identifiable{
    var id: String
    var text: String
}

class bingoTileController: ObservableObject{
    @Published var bingoWords=[bingoWord]();
    @Published var randNums=[Int](repeating: 0, count: 25);
    
    
    func getWords(){
        let db = Firestore.firestore()
        
        db.collection("tiles").getDocuments{ snapshot, error in
                
                //errorcheck
                if error == nil{
                if let snapshot = snapshot {
               
                
                  
               
                    //adds resturant objectstoresturant list
                    self.bingoWords = snapshot.documents.map{ d in
                        //create resturante item for each document
                        return bingoWord(id: d.documentID,
                                         text: d["text"] as? String ?? "")
                                         
                    }
                
                }
                    //print(self.bingoWords)
                }else{
                    //handle error
                    print("the error is over in bingo controller")
                    print(error)
                }
            
        }
        
        print(bingoWords)
    }
    func getRandNums(){
        
        for i in 0...24{
            randNums[i]=Int.random(in: 0..<bingoWords.count)
        }
        print(randNums)
    }
    func addtile(word:String){
        let db = Firestore.firestore()
        
        db.collection("tiles").addDocument(data: ["text": word])
        { error in
            
            //check for errors
            if error==nil{
                //updates list with new reviews
                self.getWords()
            }
            else{
                //error handler
            }
        }
    }
    
    }

