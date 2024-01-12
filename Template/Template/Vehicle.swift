//
//  Vehicle.swift
//  Template
//
//  Created by Erik Junghahn on 2024-01-11.
//


import Foundation
class Vehicle {
    static func vehicleDescription() -> String {
        return PropertiesController.sharedInstance.description ?? "Default Description"
    }
}
