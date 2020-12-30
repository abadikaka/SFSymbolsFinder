//
//  XCTestManifests.swift
//
//
//  Created by Santoso, Michael Abadi on 30/12/2563 BE.
//

import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(SFSymbolsFinderTests.allTests),
    ]
}
#endif
