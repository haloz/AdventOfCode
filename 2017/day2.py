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

    def handle_row_part_two(row_data):
        for element in row_data:
            for lookup_item in row_data:
                if element != lookup_item and element % lookup_item == 0:
                    return int(element / lookup_item)
        return 0

    def solve_part_two(data):
        sum = 0
        for row in data:
            sum += Day2Puzzle.handle_row_part_two(row)

        return sum
