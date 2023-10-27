//
//  addView.swift
//  Bingo2
//
//  Created by Josh clayton on 2/10/23.
//

import SwiftUI

struct addView: View {
    @State var newWord="";
    @ObservedObject var controller=bingoTileController()
    var body: some View {
        VStack{
            TextField("add tile", text: $newWord)
            
            Spacer()
            
            Button("add"){
                if (newWord != ""){
                    controller.addtile(word: newWord)
                    newWord=""
                }
            }
        }
    }
}

struct addView_Previews: PreviewProvider {
    static var previews: some View {
        addView()
    }
}
