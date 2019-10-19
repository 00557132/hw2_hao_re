//
//  FirstView.swift
//  hw2_hao
//
//  Created by blaire on 2019/10/18.
//  Copyright © 2019 AppCoda. All rights reserved.
//

import SwiftUI

struct FirstView: View {
    var body: some View {
        TabView{
            CityView()
            .tabItem {
                Image(systemName: "star.fill")
                Text("主城市")
            }
            ExtraView()
            .tabItem {
                Image(systemName: "heart.fill")
                Text("特別景點")
            }
            
        }
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
