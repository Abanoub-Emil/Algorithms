//
//  main.swift
//  Algorithms
//
//  Created by Abanoub Emil on 03/09/2021.
//

import Foundation

let planets = [1: "Mercury", 2: "Venus"]
let venus = planets[6, default: "Planet X"]
var result = ["Red", "Green"] + ["Blue"]

let x: IndexPath = IndexPath()

//print(planets)
print(result)
var f: Float = 123.2342
f.round(.down)
print(f)
print(ChampagneTower().solution())

let num1: Float80 = 1000000000000000000000000000001
let num2: Float80 = 564
let sum = num1+num2
let numberFormatter = NumberFormatter()
numberFormatter.numberStyle = NumberFormatter.Style.decimal
let finalNumber = numberFormatter.number(from: "\(sum)")
print(finalNumber!)
