//
//  WeatherModel.swift
//  Clima
//
//  Created by reddy on 2023/6/3.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import Foundation

struct  WeatherModel {
    let conditionId: Int
    let cityName: String
    let temperature: Double
    
    // Computed Properties
    // define its value based on {block of code} result
    
    var temperatureString: String {
        return String(format: "%.1f", temperature)
    }
    
    var conditionName: String {
        // Evaluate condition
        switch conditionId {
        case 200...232:
            return "cloud.bolt.rain"
        case 300...321:
            return "cloud.drizzle"
        case 500...501:
            return "cloud.rain"
        case 502...531:
            return "cloud.heavyrain"
        case 600...602, 620...622:
            return "cloud.snow"
        case 611...616:
            return "cloud.sleet"
        case 711:
            return "smoke"
        case 741:
            return "cloud.fog"
        case 781:
            return "tornado"
        case 800:
            return "sun.max"
        case 801:
            return "cloud.sun"
        case 802...804:
            return "cloud"
        default:
            return "sun.max"
        }
    }
 
}
