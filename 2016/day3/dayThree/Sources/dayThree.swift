import Foundation

struct TriangleChecker {
    func checkTriangleIsValid(_ triangleSides:[Int]) -> Bool {
        guard triangleSides.count > 2 else {
            return false
        }
        
        var triangleSides = triangleSides.sorted()
        if triangleSides[0] + triangleSides[1] > triangleSides[2] {
            return true
        }
        return false
    }
    
    func checkValidTriangles(_ triangles:[[Int]]) -> Int {
        return triangles.reduce(0) { (total, next) -> Int in
            return checkTriangleIsValid(next) ? total + 1 : total
        }
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
            let trimmedLine = line.trimmingCharacters(in: .whitespaces)
            list.append( trimmedLine
                .components(separatedBy: .whitespaces)
                .filter { $0.trimmingCharacters(in: .whitespaces) != "" }
                .map { Int($0)! }
            )
        }
        return list
    }
    
}
