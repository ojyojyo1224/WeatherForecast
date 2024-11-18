//
//  ContentView.swift
//  WeatherForecast
//
//  Created by 宇野緋奈乃 on 2024/11/16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            DayForecast(day:"Mon",isRainy: false,high:70,low:50)
            
            DayForecast(day:"Tue",isRainy:true,high:60,low:40)
        }
    }
}

#Preview {
    ContentView()
}

struct DayForecast: View {
    let day: String
    let isRainy: Bool
    let high: Int
    let low: Int
    
    var iconName:String{
        if isRainy {
                   return "cloud.rain.fill"
               } else {
                   return "sun.max.fill"
               }
    }
    
    var body: some View {
        VStack {
            Text(day)
                .font(Font.headline)
            Image(systemName: iconName)
                .foregroundStyle(Color.yellow)
                .font(Font.largeTitle)
                .padding(5)
            Text("High:\(high)")
                .fontWeight(Font.Weight.semibold)
            Text("Low:\(low)")
                .fontWeight(Font.Weight.medium)
                .foregroundStyle(Color.secondary)
        }
        .padding()
    }
}
