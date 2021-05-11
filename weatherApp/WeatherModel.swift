//
//  WeatherModel.swift
//  WeatherApp
//
//  Created by Użytkownik Gość on 05/05/2021.
//

import Foundation

struct WeatherModel {
    
    var records = Array<WeatherRecord>()
    
    init(cities: Array<String>) {
        for city in cities {
            records.append(WeatherRecord(cityName: city))
        }
    }
    
    struct WeatherRecord: Identifiable, Equatable {
        var id: UUID = UUID()
        var cityName: String
        var weatherState: String = "sunny"
        var temperature: Float = Float.random(in: -10.0...30.0)
        var humidity: Float = Float.random(in: 0.0...100.0)
        var windSpeed: Float = Float.random(in: 0.0...100.0)
        var windDirection: Float = Float.random(in: 0.0..<360.0)
    }
    
    mutating func refresh(record: WeatherRecord) {
        if let ind = records.firstIndex(of: record) {
            records[ind as Int].temperature = Float.random(in: -10.0...30.0)
        }
    }
    
}
