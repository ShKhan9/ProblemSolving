//
//  ProblemSolvingTests.swift
//  ProblemSolvingTests
//
//  Created by Shehata Gamal on 4/12/21.
//

import XCTest
@testable import ProblemSolving

class ProblemSolvingTests: XCTestCase {

    let vc = ViewController()
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testOutput() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let result1 = vc.encode("abc",size:2)
        
        let result2 = vc.encode("abc",size:28)
       
        XCTAssert(result1 == "cde" && result2 == "cde" ,"Failed to get the required output")
         
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
