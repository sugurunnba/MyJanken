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
//            スペースを追加
            Spacer()
            
            if answerNumber == 0 {
                Text("これからじゃんけんをします")
            } else if answerNumber == 1 {
                Image("gu")
        //            画像を画面内に収めるようリサイズする
                    .resizable()
        //            アスペクト比(縦横比)の調整
                    .aspectRatio(contentMode: .fit)
                Spacer()
    //            じゃんけんの種類を指定
                Text("グー")
                    .padding(.bottom)
            } else if answerNumber == 2 {
                Image("choki")
        //            画像を画面内に収めるようリサイズする
                    .resizable()
        //            アスペクト比(縦横比)の調整
                    .aspectRatio(contentMode: .fit)
                Spacer()
    //            じゃんけんの種類を指定
                Text("チョキ")
                    .padding(.bottom)
            } else {
                Image("pa")
        //            画像を画面内に収めるようリサイズする
                    .resizable()
        //            アスペクト比(縦横比)の調整
                    .aspectRatio(contentMode: .fit)
                Spacer()
    //            じゃんけんの種類を指定
                Text("パー")
                    .padding(.bottom)
            }
            
            Button(action:{
                var newAnswerNumber = 0
                
                repeat{
                    newAnswerNumber = Int.random(in: 1...3)
                } while answerNumber == newAnswerNumber
                answerNumber = newAnswerNumber
            }) {
                Text("じゃんけんをする!")
//                 テキストの下に余白を設定
                    .padding(.bottom)
//                　画面幅いっぱいに表示
                    .frame(maxWidth: .infinity)
//                　iOSが提供している組み込みフォントサイズ(既に規定されているフォントサイズ)
                    .frame(height: 100)
                    .font(.title)
                    .background(Color.pink)
//                　文字色変更
                    .foregroundColor(Color.white)
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
