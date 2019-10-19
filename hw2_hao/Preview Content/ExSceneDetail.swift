//
//  ExSceneDetail.swift
//  hw2_hao
//
//  Created by blaire on 2019/10/19.
//  Copyright © 2019 AppCoda. All rights reserved.
//

import SwiftUI

struct ExSceneDetail: View {
    var exscenes: Exscene
    var body: some View {
        ZStack(alignment: .bottomLeading){
        Image(exscenes.name)
            .resizable()
            .scaledToFill()
            .frame(minWidth: 0,maxWidth:.infinity)
            .clipped()
        Text(exscenes.data)
            .padding()
            .font(.title)
            .foregroundColor(.blue)
            
    }
    }
}

struct ExSceneDetail_Previews: PreviewProvider {
    static var previews: some View {
        ExSceneDetail(exscenes: exScenes[7][0])
    }
}
