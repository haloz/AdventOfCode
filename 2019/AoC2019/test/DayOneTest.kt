import org.junit.Before
import org.junit.Test
import org.junit.Assert.*

class DayOneTest {

    var d1 = DayOne()

    @Before
    fun setUp() {
    }

    @Test
    fun getInputValues() {
    }

    @Test
    fun calculatePartOneFuel() {
        assertEquals(
            2,
            d1.calculatePartOneFuel(12)
        )
        assertEquals(
            2,
            d1.calculatePartOneFuel(14)
        )
        assertEquals(
            654,
            d1.calculatePartOneFuel(1969)
        )
        assertEquals(
            33583,
            d1.calculatePartOneFuel(100756)
        )
    }

    @Test
    fun calculatePartTwoFuel() {
        assertEquals(
            2,
            d1.calculatePartTwoFuel(14)
        )
        assertEquals(
            966,
            d1.calculatePartTwoFuel(1969)
        )
        assertEquals(
            50346,
            d1.calculatePartTwoFuel(100756)
        )
    }
}