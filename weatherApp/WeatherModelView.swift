//
//  WeatherModelView.swift
//  WeatherApp
//
//  Created by Użytkownik Gość on 05/05/2021.
//

import Foundation

class WeatherModelView: ObservableObject {
    
    private(set) var model: WeatherModel = WeatherModel(cities: ["Kraków", "Tokio", "Rio", "Moskwa", "Denver", "Nairobi", "Lizbona"])
    
    var records: Array<WeatherModel.WeatherRecord> {
        model.records
    }
    
    func refresh(record: WeatherModel.WeatherRecord) {
        objectWillChange.send()
        model.refresh(record: record)
    }
}
