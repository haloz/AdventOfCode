import XCTest
@testable import dayThree

class dayThreeTests: XCTestCase {

    func testExample1() {
        let triangle = [ 5, 10, 25 ]
        XCTAssertFalse(TriangleChecker.checkTriangleIsValid(triangle))
    }
    
    func testExample2() {
        let triangle = [ 18, 10, 25 ]
        XCTAssertTrue(TriangleChecker.checkTriangleIsValid(triangle))
    }
    
    func testExample3() {
        let triangles = [
            [ 18, 10, 25 ],
            [ 5, 10, 25 ],
            [ 23, 40, 50 ]
        ]
        XCTAssertEqual(TriangleChecker.checkValidTriangles(triangles), 2)
    }
    
    func testExample4() {
        let triangles = [
            [ 541, 588, 421 ], //1
            [ 827, 272, 126 ], //0
            [ 660, 514, 367 ], //1
            [  39, 703, 839 ], //0
            [ 229, 871,   3 ], //0
        ]
        XCTAssertEqual(TriangleChecker.checkValidTriangles(triangles), 2)
    }
    
    func testMyTriangleList() {
        let triangles = TrianglesReader.fromTextFile("mytriangles.txt")
        XCTAssertEqual(TriangleChecker.checkValidTriangles(triangles), 993)
        
    }
    
    func testVerticalExample1() {
        let triangles = [
            // 0,  0, 1
            [ 18, 10, 35 ],
            [ 5, 10, 25 ],
            [ 23, 40, 50 ]
        ]
        XCTAssertEqual(TriangleChecker.checkValidVerticalTriangles(triangles), 1)
    }
    
    func testVerticalExample2() {
        let triangles = [
            // 1,  1,   1
            [ 101, 301, 501 ],
            [ 102, 302, 502 ],
            [ 103, 303, 503 ],
            // 1,  1,   1
            [ 201, 401, 601 ],
            [ 202, 402, 602 ],
            [ 203, 403, 603 ]
        ]
        XCTAssertEqual(TriangleChecker.checkValidVerticalTriangles(triangles), 6)
    }
    
    func testVerticalExample3() {
        let triangles = [
            //  1,   1,   1
            [ 541, 588, 421 ],
            [ 827, 272, 126 ],
            [ 660, 514, 367 ],
            //  1    1,   1
            [  39, 703, 839 ],
            [ 229, 871,   3 ],
            [ 237, 956, 841 ]
        ]
        XCTAssertEqual(TriangleChecker.checkValidVerticalTriangles(triangles), 6)
    }
    
    func testVerticalMyTriangleList() {
        let triangles = TrianglesReader.fromTextFile("mytriangles.txt")
        XCTAssertEqual(TriangleChecker.checkValidVerticalTriangles(triangles), 1849)
        
    }
    
    static var allTests : [(String, (dayThreeTests) -> () throws -> Void)] {
        return [
            ("testExample1", testExample1),
            ("testExample2", testExample2),
            ("testExample3", testExample3),
            ("testExample4", testExample4),
            ("testMyTriangleList", testMyTriangleList),
            ("testVerticalExample1", testVerticalExample1),
            ("testVerticalExample2", testVerticalExample2),
            ("testVerticalExample3", testVerticalExample3),
            ("testVerticalMyTriangleList", testVerticalMyTriangleList)
        ]
    }
}
