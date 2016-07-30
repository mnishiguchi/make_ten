require_relative './number_string'

class MakeTen

  SOLVE_FOR = 10

  # Finds the calculation that makes ten using the given numbers.
  # Takes a list of integers.
  # Converts all the integers into NumberString objects.
  # Return true if at least one solution was found, else false.
  def self.call(values, solve_for)
    values.map! { |value| NumberString.new(value) }
    calculate_recursively(values, solve_for)
  end

  private

    # Performs all the possible calculations.
    # Takes an array of NumberString objects.
    # Return true if at least one solution was found, else false.
    def self.calculate_recursively(numbers, solve_for)

      solution_found = false

      # Base case: the element count is one.
      if numbers.length == 1
        # Check if the solution is found.
        if numbers.first.value == solve_for
          puts "Found: #{numbers.first.string}"
          return true
        end
        return false
      end

      # 1. Create the permutation list of the source numbers.
      # 2. For each, perform calculation with all four operators.
      # 3. Update the numbers (remove used numbers; add calculation result)
      # 4. Repeat recursively until the list has only one number.
      numbers.permutation(2).to_a.each do |first, second|
        new_numbers = []

        new_numbers = update_numbers(numbers, [first, second], [first + second])
        if calculate_recursively(new_numbers, solve_for)
          solution_found = true
        end

        new_numbers = update_numbers(numbers, [first, second], [first - second])
        if calculate_recursively(new_numbers, solve_for)
          solution_found = true
        end

        new_numbers = update_numbers(numbers, [first, second], [first * second])
        if calculate_recursively(new_numbers, solve_for)
          solution_found = true
        end

        if first.divisible(second)
          new_numbers = update_numbers(numbers, [first, second], [first / second])
          if calculate_recursively(new_numbers, solve_for)
            solution_found = true
          end
        end
      end
      solution_found
    end

    # Updates the number list by deleting and adding specified NumberString objects.
    # Returns an updated array of NumberString objects.
    def self.update_numbers(list, to_be_deleted=[], to_be_added=[])
      list = list.dup
      to_be_deleted.each { |n| list.delete(n) }
      to_be_added.each { |n| list << n }
      list
    end
end
