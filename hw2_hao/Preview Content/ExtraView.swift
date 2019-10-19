//
//  ExtraView.swift
//  hw2_hao
//
//  Created by blaire on 2019/10/19.
//  Copyright © 2019 AppCoda. All rights reserved.
//

import SwiftUI

struct ExtraView: View {
    let photowidth = (UIScreen.main.bounds.size.width-10)/2
    var body: some View {
        NavigationView{
        List{
            ForEach(0..<exScenes.count){(row) in
                ScrollView{
                    HStack(spacing: 10){
                    
                    ForEach(0..<exScenes[row].count){(column) in
                        
                        NavigationLink(destination: ExSceneDetail(exscenes: exScenes[row][column])){
                        Image(exScenes[row][column].name)
                        .resizable()
                        .renderingMode(.original)
                        .scaledToFill()
                            .frame(width: self.photowidth, height: self.photowidth)
                        .clipped()
                        }
                        
                    }
                }.listRowInsets(EdgeInsets(top:0,leading:0,bottom:0,trailing:0))
            }
            }
            .onAppear{
                UITableView.appearance().separatorColor = .clear
            }
        }
        .navigationBarTitle("特別景點")
    }
    }
}

struct ExtraView_Previews: PreviewProvider {
    static var previews: some View {
        ExtraView()
    }
}
