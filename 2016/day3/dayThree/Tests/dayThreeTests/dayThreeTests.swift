import XCTest
@testable import dayThree

class dayThreeTests: XCTestCase {
    
    let checker = TriangleChecker()
    
    func testExample1() {
        let triangle = [ 5, 10, 25 ]
        XCTAssertFalse(checker.checkTriangleIsValid(triangle))
    }
    
    func testExample2() {
        let triangle = [ 18, 10, 25 ]
        XCTAssertTrue(checker.checkTriangleIsValid(triangle))
    }
    
    func testExample3() {
        let triangles = [
            [ 18, 10, 25 ],
            [ 5, 10, 25 ],
            [ 23, 40, 50 ]
        ]
        XCTAssertEqual(checker.checkValidTriangles(triangles), 2)
    }
    
    func testExample4() {
        let triangles = [
            [ 541, 588, 421 ], //1
            [ 827, 272, 126 ], //0
            [ 660, 514, 367 ], //1
            [  39, 703, 839 ], //0
            [ 229, 871,   3 ], //0
        ]
        XCTAssertEqual(checker.checkValidTriangles(triangles), 2)
    }
    
    func testMyTriangleList() {
        let triangles = TrianglesReader.fromTextFile("mytriangles.txt")
        XCTAssertEqual(checker.checkValidTriangles(triangles), 993)
        
    }
    
    static var allTests : [(String, (dayThreeTests) -> () throws -> Void)] {
        return [
            ("testExample1", testExample1),
            ("testExample2", testExample2),
            ("testExample3", testExample3),
            ("testMyTriangleList", testMyTriangleList),
        ]
    }
}
