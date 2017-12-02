class Day1Puzzle:
    def solve(input_numbers):
        sum = 0
        last_number = None
        numbers_to_iterate = [int(i) for i in str(input_numbers)]
        numbers_to_iterate.append(numbers_to_iterate[0])

        for number in numbers_to_iterate:
            if number == last_number:
                sum += number
            last_number = number
        return sum

    def solve_part_two(input_numbers):
        numbers_to_iterate = [int(i) for i in str(input_numbers)]
        number_of_items = len(numbers_to_iterate)
        step = int(number_of_items / 2)

        i = 0
        sum = 0

        while i <= number_of_items:
            if i + step < number_of_items:
                if numbers_to_iterate[i] == numbers_to_iterate[i + step]:
                    sum += 2 * numbers_to_iterate[i]
            i += 1
        return sum
