//
//  SFSymbolsValidator.swift
//  
//
//  Created by Santoso, Michael Abadi on 1/1/2564 BE.
//

import Foundation

protocol SFSymbolsValidation {
    func validateSystemName<T: SFFinderConvertable>(for type: T) -> String
}


final class SFSymbolsValidator: SFSymbolsValidation {

    func validateSystemName<T>(for type: T) -> String where T : SFFinderConvertable {
        switch type {
        case let type as Indices.Currency:
            var finalName = ""
            switch type {
            case .circle(let currency):
                finalName += "\(currency.rawValue)sign.circle"
            case .circleFill(let currency):
                finalName += "\(currency.rawValue)sign.circle.fill"
            case .square(let currency):
                finalName += "\(currency.rawValue)sign.square"
            case .squareFill(let currency):
                finalName += "\(currency.rawValue)sign.square.fill"
            }
            return finalName
        case let type as Indices.Alphabet:
            var finalName = ""
            switch type {
            case .circle(let character):
                finalName += "\(character.rawValue).circle"
            case .circleFill(let character):
                finalName += "\(character.rawValue).circle.fill"
            case .square(let character):
                finalName += "\(character.rawValue).square"
            case .squareFill(let character):
                finalName += "\(character.rawValue).square.fill"
            }
            return finalName
        case let type as Indices.Number<Int>:
            var finalName = ""
            switch type {
            case .circle(let number):
                finalName += "\(number).circle"
            case .circleFill(let number):
                finalName += "\(number).circle.fill"
            case .altCircle(let number):
                finalName += "\(number).alt.circle"
            case .altCircleFill(let number):
                finalName += "\(number).alt.circle.fill"
            case .square(let number):
                finalName += "\(number).square"
            case .squareFill(let number):
                finalName += "\(number).square.fill"
            case .altSquare(let number):
                finalName += "\(number).alt.square"
            case .altSquareFill(let number):
                finalName += "\(number).alt.square.fill"
            }
            return finalName
        case let type as Indices.Number<String>:
            var finalName = ""
            switch type {
            case .circle(let number):
                finalName += "\(number).circle"
            case .circleFill(let number):
                finalName += "\(number).circle.fill"
            case .altCircle(let number):
                finalName += "\(number).alt.circle"
            case .altCircleFill(let number):
                finalName += "\(number).alt.circle.fill"
            case .square(let number):
                finalName += "\(number).square"
            case .squareFill(let number):
                finalName += "\(number).square.fill"
            case .altSquare(let number):
                finalName += "\(number).alt.square"
            case .altSquareFill(let number):
                finalName += "\(number).alt.square.fill"
            }
            return finalName
        case let type as SFSymbolsEnum:
            if let objectType = type as? ObjectAndTools, objectType == .oneMagnifyingglass {
                return "1.magnifyingglass"
            } else {
                var finalName = ""
                var previousChar: Character = Character("-")
                type.enumRawValue.forEach { char in
                    if char.isUppercase {
                        finalName += ".\(char.lowercased())"
                    } else if char.isNumber {
                        if previousChar == "x" {
                            finalName += char.description
                        } else {
                            finalName += ".\(char)"
                        }
                    } else {
                        finalName += char.description
                    }
                    previousChar = char
                }
                return finalName
            }
        default:
            return ""
        }
    }
}
