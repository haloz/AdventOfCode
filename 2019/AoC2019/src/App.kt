fun main() {
    val d1 = DayOne()


    var fuelSum:Int = 0
    for (value:Int in d1.inputValues) {
        fuelSum += d1.calculatePartOneFuel(value)
    }
    println("Riddle Part One total sum = " + fuelSum)

    fuelSum = 0
    for (value:Int in d1.inputValues) {
        fuelSum += d1.calculatePartTwoFuel(value)
    }
    println("Riddle Part Two total sum = " + fuelSum)
}