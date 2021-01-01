//
//  SFSymbolsFinderTests.swift
//
//
//  Created by Santoso, Michael Abadi on 30/12/2563 BE.
//

import XCTest
@testable import SFSymbolsFinder

final class SFSymbolsFinderTests: XCTestCase {

    func testSystemNameConversion() {
        XCTAssertEqual(Communication.micSlashFill.systemName, "mic.slash.fill")
    }

    func testSystemNameNumberConversion() {
        XCTAssertEqual(ObjectAndTools.tray2.systemName, "tray.2")
        XCTAssertEqual(ObjectAndTools.tray2Fill.systemName, "tray.2.fill")
    }

    func testSystemNameIndicesCurrencyConversion() {
        XCTAssertEqual(Indices.Currency.circle(currency: .dollar).systemName, "dollarsign.circle")
        XCTAssertEqual(Indices.Currency.circleFill(currency: .dollar).systemName, "dollarsign.circle.fill")
        XCTAssertEqual(Indices.Currency.square(currency: .dollar).systemName, "dollarsign.square")
        XCTAssertEqual(Indices.Currency.squareFill(currency: .dollar).systemName, "dollarsign.square.fill")
    }

    func testSystemNameIndicesAlphabetConversion() {
        XCTAssertEqual(Indices.Alphabet.circle(character: .a).systemName, "a.circle")
        XCTAssertEqual(Indices.Alphabet.circleFill(character: .a).systemName, "a.circle.fill")
        XCTAssertEqual(Indices.Alphabet.square(character: .a).systemName, "a.square")
        XCTAssertEqual(Indices.Alphabet.squareFill(character: .a).systemName, "a.square.fill")
    }

    func testSystemNameIndicesNumberConversion() {
        XCTAssertEqual(Indices.Number.circle(number: 1).systemName, "1.circle")
        XCTAssertEqual(Indices.Number.circleFill(number: 1).systemName, "1.circle.fill")
        XCTAssertEqual(Indices.Number.altCircle(number: 1).systemName, "1.alt.circle")
        XCTAssertEqual(Indices.Number.altCircleFill(number: 1).systemName, "1.alt.circle.fill")
        XCTAssertEqual(Indices.Number.square(number: 1).systemName, "1.square")
        XCTAssertEqual(Indices.Number.squareFill(number: 1).systemName, "1.square.fill")
        XCTAssertEqual(Indices.Number.altSquare(number: 1).systemName, "1.alt.square")
        XCTAssertEqual(Indices.Number.altSquareFill(number: 1).systemName, "1.alt.square.fill")
        XCTAssertEqual(Indices.Number.circle(number: "01").systemName, "01.circle")
    }

    func testSystemNameArrowConversion() {
        XCTAssertEqual(Arrows.return.systemName, "return")
    }

    func testGamingConversion() {
        XCTAssertEqual(Gaming.l2RectangleRoundedtopFill.systemName, "l.2.rectangle.roundedtop.fill")
    }

    func testGeneralConversion() {
        XCTAssertEqual(General.squareGrid3x2.systemName, "square.grid.3x2")
    }

    static var allTests = [
        ("testSystemNameConversion", testSystemNameConversion),
        ("testSystemNameNumberConversion", testSystemNameNumberConversion),
        ("testSystemNameIndicesCurrencyConversion", testSystemNameIndicesCurrencyConversion),
        ("testSystemNameIndicesAlphabetConversion", testSystemNameIndicesAlphabetConversion),
        ("testSystemNameIndicesNumberConversion", testSystemNameIndicesNumberConversion),
        ("testGamingConversion", testGamingConversion),
        ("testSystemNameArrowConversion",testSystemNameArrowConversion),
        ("testGeneralConversion", testGeneralConversion)
    ]
}
