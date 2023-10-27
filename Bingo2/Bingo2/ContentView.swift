
import SwiftUI

struct ContentView: View {
    @ObservedObject var controller=bingoTileController()
    @State private var curLetterIndex = 0
    @State private var gameStart=false
    @State private var time=0
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    let letters = ["B","I","N","G","O"]
    @State var tiles = [String](repeating: "placeholder", count: 25);
    @State var opac = [Double](repeating: 0.0, count: 25);
    init(){
        controller.getWords()
        
    }
    
    var body: some View {
        VStack {
           
            Text("\(letters[curLetterIndex])")
            //the bored its self
            
            HStack{
                VStack{
                    //start of firt column
                    Text("B")
                    //1
                    
                        
                        ZStack{
                            Button {
                                if(curLetterIndex==0){
                                    opac[0]=0.5
                                }
                            } label: {
                                Text("\(tiles[0])").scaledToFill()
                            }
                            
                            
                            
                            Image("circle").resizable().opacity(opac[0])
                                .aspectRatio(1, contentMode: .fit)
                            
                        }.frame(width: 100, height: 100)
                        //2
                    ZStack{
                        Button {
                            if(curLetterIndex==0){
                                opac[1]=0.5
                            }
                        } label: {
                            Text("\(tiles[1])").scaledToFill()
                        }
                        
                        
                        
                        Image("circle").resizable().opacity(opac[1])
                            .aspectRatio(1, contentMode: .fit)
                        
                    }.frame(width: 100, height: 100)
                        //3
                    ZStack{
                        Button {
                            if(curLetterIndex==0){
                                opac[2]=0.5
                            }
                        } label: {
                            Text("\(tiles[2])").scaledToFill()
                        }
                        
                        
                        
                        Image("circle").resizable().opacity(opac[2])
                            .aspectRatio(1, contentMode: .fit)
                        
                    }.frame(width: 100, height: 100)
                        //4
                    ZStack{
                        Button {
                            if(curLetterIndex==0){
                                opac[3]=0.5
                            }
                        } label: {
                            Text("\(tiles[3])").scaledToFill()
                        }
                        
                        
                        
                        Image("circle").resizable().opacity(opac[3])
                            .aspectRatio(1, contentMode: .fit)
                        
                    }.frame(width: 100, height: 100)
                        //5
                    ZStack{
                        Button {
                            if(curLetterIndex==0){
                                opac[4]=0.5
                            }
                        } label: {
                            Text("\(tiles[4])").scaledToFill()
                        }
                        
                        
                        
                        Image("circle").resizable().opacity(opac[4])
                            .aspectRatio(1, contentMode: .fit)
                        
                    }.frame(width: 100, height: 100)
                        
                        
                    
                }
                //start of second colum
                VStack{
                    Text("I")
                    //1
                    ZStack{
                        Button {
                            if(curLetterIndex==1){
                                opac[5]=0.5
                            }
                        } label: {
                            Text("\(tiles[5])").scaledToFill()
                        }
                        
                        
                        
                        Image("circle").resizable().opacity(opac[5])
                            .aspectRatio(1, contentMode: .fit)
                        
                    }.frame(width: 100, height: 100)
                    //2
                    ZStack{
                        Button {
                            if(curLetterIndex==1){
                                opac[6]=0.5
                            }
                        } label: {
                            Text("\(tiles[6])").scaledToFill()
                        }
                        
                        
                        
                        Image("circle").resizable().opacity(opac[6])
                            .aspectRatio(1, contentMode: .fit)
                        
                    }.frame(width: 100, height: 100)
                    //3
                    ZStack{
                        Button {
                            if(curLetterIndex==1){
                                opac[7]=0.5
                            }
                        } label: {
                            Text("\(tiles[7])")
                        }
                        
                        
                        
                        Image("circle").resizable().opacity(opac[7])
                            .aspectRatio(1, contentMode: .fit)
                        
                    }.frame(width: 100, height: 100)
                    //4
                    ZStack{
                        Button {
                            if(curLetterIndex==1){
                                opac[8]=0.5
                            }
                        } label: {
                            Text("\(tiles[8])").scaledToFill()
                        }
                        
                        
                        
                        Image("circle").resizable().opacity(opac[8])
                            .aspectRatio(1, contentMode: .fit)
                        
                    }.frame(width: 100, height: 100)
                    //5
                    ZStack{
                        Button {
                            if(curLetterIndex==1){
                                opac[9]=0.5
                            }
                        } label: {
                            Text("\(tiles[9])").scaledToFill()
                        }
                        
                        
                        
                        Image("circle").resizable().opacity(opac[9])
                            .aspectRatio(1, contentMode: .fit)
                        
                    }.frame(width: 100, height: 100)
                    
                    
                    
                }
                //start of third colum
                VStack{
                    Text("N")
                    //1
                    ZStack{
                        Button {
                            if(curLetterIndex==2){
                                opac[10]=0.5
                            }
                        } label: {
                            Text("\(tiles[10])").scaledToFill()
                        }
                        
                        
                        
                        Image("circle").resizable().opacity(opac[10])
                            .aspectRatio(1, contentMode: .fit)
                        
                    }.frame(width: 100, height: 100)
                    //2
                    ZStack{
                        Button {
                            if(curLetterIndex==2){
                                opac[11]=0.5
                            }
                        } label: {
                            Text("\(tiles[11])").scaledToFill()
                        }
                        
                        
                        
                        Image("circle").resizable().opacity(opac[11])
                            .aspectRatio(1, contentMode: .fit)
                        
                    }.frame(width: 100, height: 100)

                    //3
                    ZStack{
                        Button {
                            if(curLetterIndex==2){
                                opac[12]=0.5
                            }
                        } label: {
                            Text("\(tiles[12])").scaledToFill()
                        }
                        
                        
                        
                        Image("circle").resizable().opacity(opac[12])
                            .aspectRatio(1, contentMode: .fit)
                        
                    }.frame(width: 100, height: 100)

                    //4
                    ZStack{
                        Button {
                            if(curLetterIndex==2){
                                opac[13]=0.5
                            }
                        } label: {
                            Text("\(tiles[13])").scaledToFill()
                        }
                        
                        
                        
                        Image("circle").resizable().opacity(opac[13])
                            .aspectRatio(1, contentMode: .fit)
                        
                    }.frame(width: 100, height: 100)

                    //5
                    ZStack{
                        Button {
                            if(curLetterIndex==2){
                                opac[14]=0.5
                            }
                        } label: {
                            Text("\(tiles[14])").scaledToFill()
                        }
                        
                        
                        
                        Image("circle").resizable().opacity(opac[14])
                            .aspectRatio(1, contentMode: .fit)
                        
                    }.frame(width: 100, height: 100)

                    
                    
                }
                //start of forth colum
                VStack{
                    Text("G")
                    //1
                    ZStack{
                        Button {
                            if(curLetterIndex==3){
                                opac[15]=0.5
                            }
                        } label: {
                            Text("\(tiles[15])").scaledToFill()
                        }
                        
                        
                        
                        Image("circle").resizable().opacity(opac[15])
                            .aspectRatio(1, contentMode: .fit)
                        
                    }.frame(width: 100, height: 100)

                    //2
                    ZStack{
                        Button {
                            if(curLetterIndex==3){
                                opac[16]=0.5
                            }
                        } label: {
                            Text("\(tiles[16])").scaledToFill()
                        }
                        
                        
                        
                        Image("circle").resizable().opacity(opac[16])
                            .aspectRatio(1, contentMode: .fit)
                        
                    }.frame(width: 100, height: 100)
                    //3
                    ZStack{
                        Button {
                            if(curLetterIndex==3){
                                opac[17]=0.5
                            }
                        } label: {
                            Text("\(tiles[17])").scaledToFill()
                        }
                        
                        
                        
                        Image("circle").resizable().opacity(opac[17])
                            .aspectRatio(1, contentMode: .fit)
                        
                    }.frame(width: 100, height: 100)
                    //4
                    ZStack{
                        Button {
                            if(curLetterIndex==3){
                                opac[18]=0.5
                            }
                        } label: {
                            Text("\(tiles[18])").scaledToFill()
                        }
                        
                        
                        
                        Image("circle").resizable().opacity(opac[18])
                            .aspectRatio(1, contentMode: .fit)
                        
                    }.frame(width: 100, height: 100)
                    //5
                    ZStack{
                        Button {
                            if(curLetterIndex==3){
                                opac[19]=0.5
                            }
                        } label: {
                            Text("\(tiles[19])").scaledToFill()
                        }
                        
                        
                        
                        Image("circle").resizable().opacity(opac[19])
                            .aspectRatio(1, contentMode: .fit)
                        
                    }.frame(width: 100, height: 100)
                    
                    
                    
                }
                //start of fith colum
                VStack{
                    Text("O")
                    //1
                    ZStack{
                        Button {
                            if(curLetterIndex==4){
                                opac[20]=0.5
                            }
                        } label: {
                            Text("\(tiles[20])").scaledToFill()
                        }
                        
                        
                        
                        Image("circle").resizable().opacity(opac[20])
                            .aspectRatio(1, contentMode: .fit)
                        
                    }.frame(width: 100, height: 100)
                    //2
                    ZStack{
                        Button {
                            if(curLetterIndex==4){
                                opac[21]=0.5
                            }
                        } label: {
                            Text("\(tiles[21])").scaledToFill()
                        }
                        
                        
                        
                        Image("circle").resizable().opacity(opac[21])
                            .aspectRatio(1, contentMode: .fit)
                        
                    }.frame(width: 100, height: 100)
                    //3
                    ZStack{
                        Button {
                            if(curLetterIndex==4){
                                opac[22]=0.5
                            }
                        } label: {
                            Text("\(tiles[22])").scaledToFill()
                        }
                        
                        
                        
                        Image("circle").resizable().opacity(opac[22])
                            .aspectRatio(1, contentMode: .fit)
                        
                    }.frame(width: 100, height: 100)
                    //4
                    ZStack{
                        Button {
                            if(curLetterIndex==4){
                                opac[23]=0.5
                            }
                        } label: {
                            Text("\(tiles[23])").scaledToFill()
                        }
                        
                        
                        
                        Image("circle").resizable().opacity(opac[23])
                            .aspectRatio(1, contentMode: .fit)
                        
                    }.frame(width: 100, height: 100)
                    //5
                    ZStack{
                        Button {
                            if(curLetterIndex==4){
                                opac[24]=0.5
                            }
                        } label: {
                            Text("\(tiles[24])").scaledToFill()
                        }
                        
                        
                        
                        Image("circle").resizable().opacity(opac[24])
                            .aspectRatio(1, contentMode: .fit)
                        
                    }.frame(width: 100, height: 100)
                    
                    
                    
                }
            }
            HStack{
                Spacer()
                NavigationView(){
                    NavigationLink(destination: addView()) {
                        Text("add tile")
                    }
                }
                //timer controll
                Button {
                    self.gameStart=true
                    time=0
                    controller.getWords()
                    
                    controller.getRandNums()
                    for i in 0..<25{
                        tiles[i]=controller.bingoWords[controller.randNums[i]].text
                        opac[i]=0.0
                    }
                    
                } label: {
                    Text("start game")
                }
                Spacer()
                Text("\(time)").onReceive(timer){ _ in
                    if (gameStart == true){
                        time+=1
                        //every ten second the current letter indexx of the letter on top rotastes through the array
                        if (time%10==0){
                            if(curLetterIndex==4){
                                curLetterIndex=0
                            }else{
                                curLetterIndex+=1
                            }
                        }
                        
                    }
                }
                Spacer()
            }
        }
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
