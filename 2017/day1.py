class Day1Puzzle:
    def solve(input_numbers, step):
        sum = 0
        last_number = None
        numbers_to_iterate = [int(i) for i in str(input_numbers)]
        numbers_to_iterate.append(numbers_to_iterate[0])

        print("step: " + str(step))
        for number in numbers_to_iterate[::step]:
            if number == last_number:
                sum += number
            last_number = number
        return sum
