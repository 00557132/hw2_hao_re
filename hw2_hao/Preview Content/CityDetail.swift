//
//  CityDetail.swift
//  hw2_hao
//
//  Created by blaire on 2019/10/18.
//  Copyright © 2019 AppCoda. All rights reserved.
//

import SwiftUI

struct CityDetail: View {
    var cities: City
    var body: some View {
        
            
            List{
            VStack(){
                Image(cities.name)
                .resizable()
                    //.scaledToFill()
                    .frame(minWidth: 0,maxWidth:.infinity,maxHeight: 300)
                    .clipped()
                    .padding()
                Text(cities.data)
                    .padding()
                Spacer()
                ForEach(0..<scenes.count){(index) in
                    if scenes[index].belong == self.cities.name
                    {
                        SceneRow(scene: scenes[index])
                    }
                    
                }
                
        }
                
             
        .navigationBarTitle(cities.name)
            
         
    }
        
    }
}

struct CityDetail_Previews: PreviewProvider {
    static var previews: some View {
        CityDetail(cities: cities[0])
    }
}
