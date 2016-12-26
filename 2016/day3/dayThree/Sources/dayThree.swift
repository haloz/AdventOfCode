import Foundation

struct TriangleChecker {
    static func checkTriangleIsValid(_ triangleSides:[Int]) -> Bool {
        guard triangleSides.count > 2 else {
            return false
        }
        
        var triangleSides = triangleSides.sorted()
        if triangleSides[0] + triangleSides[1] > triangleSides[2] {
            return true
        }
        return false
    }
    
    static func checkValidTriangles(_ triangles:[[Int]]) -> Int {
        return triangles.reduce(0) { (total, next) -> Int in
            return checkTriangleIsValid(next) ? total + 1 : total
        }
    }
    
    static func checkValidVerticalTriangles(_ triangles:[[Int]]) -> Int {
        var validCount = 0
        var i = 0
        for _ in 0..<(triangles.count/3) {
            for k in 0..<3 {
                let edge1 = triangles[i][k]
                let edge2 = triangles[i+1][k]
                let edge3 = triangles[i+2][k]
                let isValid = checkTriangleIsValid([ edge1, edge2, edge3])
                validCount = isValid ? validCount + 1 : validCount
            }
            i += 3
        }
        return validCount
    }
}

struct TrianglesReader {
    static func readFile(_ filename:String) -> String {
        var fileContent = String()
        if let dir = FileManager.default.urls(
                     for: .documentDirectory, in: .userDomainMask).first {
            let path = dir.appendingPathComponent(filename)
            do {
                fileContent = try String(
                    contentsOf: path,
                    encoding: String.Encoding.utf8
                )
            } catch {
                return ""
            }
        }
        return fileContent
    }
    
    static func fromTextFile(_ filename:String) -> [[Int]] {
        let fileContent = readFile(filename)
        var list:[[Int]] = []
        for line in fileContent.components(separatedBy: .newlines) {
            list.append(line
                .trimmingCharacters(in: .whitespaces)
                .components(separatedBy: .whitespaces)
                .filter { $0.trimmingCharacters(in: .whitespaces) != "" }
                .map { Int($0)! }
            )
        }
        return list
    }
    
}
