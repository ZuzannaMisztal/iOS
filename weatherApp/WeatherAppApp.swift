//
//  WeatherAppApp.swift
//  WeatherApp
//
//  Created by Użytkownik Gość on 05/05/2021.
//

import SwiftUI

@main
struct WeatherAppApp: App {
    var weatherModelView = WeatherModelView()
    var body: some Scene {
        WindowGroup {
            ContentView(weatherModelView: weatherModelView)
        }
    }
}
