//
//  ContentView.swift
//  MyJanken
//
//  Created by 高木克 on 2022/03/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var answerNumber = 0
    
    var body: some View {
        VStack {
            if answerNumber == 0 {
                Text("これからじゃんけんをします")
            } else if answerNumber == 1 {
                Image("gu")
        //            画像を画面内に収めるようリサイズする
                    .resizable()
        //            アスペクト比(縦横比)の調整
                    .aspectRatio(contentMode: .fit)
    //            じゃんけんの種類を指定
                Text("グー")
            } else if answerNumber == 2 {
                Image("choki")
        //            画像を画面内に収めるようリサイズする
                    .resizable()
        //            アスペクト比(縦横比)の調整
                    .aspectRatio(contentMode: .fit)
    //            じゃんけんの種類を指定
                Text("チョキ")
            } else {
                Image("pa")
        //            画像を画面内に収めるようリサイズする
                    .resizable()
        //            アスペクト比(縦横比)の調整
                    .aspectRatio(contentMode: .fit)
    //            じゃんけんの種類を指定
                Text("パー")
            }
            
            Button(action:{
                answerNumber = Int.random(in: 1...3)
            }) {
                Text("じゃんけんをする!")
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
