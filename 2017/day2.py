from sys import maxsize


class Day2Puzzle:
    def solve(data):
        sum = 0
        for row in data:
            min = maxsize
            max = 0
            for element in row:
                if element < min:
                    min = element
                if element > max:
                    max = element
            sum += max - min
        return sum
