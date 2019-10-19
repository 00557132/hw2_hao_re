//
//  CityView.swift
//  hw2_hao
//
//  Created by blaire on 2019/10/18.
//  Copyright © 2019 AppCoda. All rights reserved.
//

import SwiftUI

struct CityView: View {
    var body: some View {
        NavigationView{
            
            List{
                ScrollView(.horizontal){
                    HStack(spacing: 20){
                        
                        ForEach(0..<12){(index) in
                            Image("全\(index+1)")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150)
                            .clipped()
                        }
                    }
                    .frame(height: 150)
                }
                ForEach(0..<cities.count){(index) in
                    NavigationLink(destination: CityDetail(cities: cities[index])){
                        CityRow(city: cities[index])
                    }
                    
                }
            }
        .navigationBarTitle("主城市")
        }
    }
}

struct CityView_Previews: PreviewProvider {
    static var previews: some View {
        CityView()
    }
}
