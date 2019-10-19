//
//  SceneRow.swift
//  hw2_hao
//
//  Created by blaire on 2019/10/19.
//  Copyright © 2019 AppCoda. All rights reserved.
//

import SwiftUI

struct SceneRow: View {
    var scene:Scene
    var body: some View {
        VStack{
            Image(scene.name)
            .resizable()
            .scaledToFill()
            .frame(width: 300, height: 300)
            .padding()
            .shadow(radius: 10)
            Text(scene.data)
            .padding()
        }
    }
}

struct SceneRow_Previews: PreviewProvider {
    static var previews: some View {
        SceneRow(scene: scenes[0])
    }
}
