//
//  CityRow.swift
//  hw2_hao
//
//  Created by blaire on 2019/10/18.
//  Copyright © 2019 AppCoda. All rights reserved.
//

import SwiftUI

struct CityRow: View {
    var city:City
    var body: some View {
        HStack{
            Image(city.name)
            .resizable()
            .frame(width: 80, height: 80)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color(red: 50/255, green: 50/255, blue: 50/255), lineWidth: 3))
            .shadow(radius: 10)
            Text(city.name)
        }
    }
}

struct CityRow_Previews: PreviewProvider {
    static var previews: some View {
        CityRow(city: cities[0])
    }
}
