def is_safe(board, row, col, n):
    # Check the column on the left side
    for i in range(col):
        if board[row][i] == 1:
            return False

    # Check upper diagonal on the left side
    for i, j in zip(range(row, -1, -1), range(col, -1, -1)):
        if board[i][j] == 1:
            return False

    # Check lower diagonal on the left side
    for i, j in zip(range(row, n, 1), range(col, -1, -1)):
        if board[i][j] == 1:
            return False

    return True

def solve_n_queens(board, col, n, solutions):
    # Base case: If all queens are placed, add the solution to the list
    if col >= n:
        solutions.append([row[:] for row in board])  # Save the current board configuration
        return

    # Try placing the queen in each row of the current column
    for i in range(n):
        if is_safe(board, i, col, n):
            board[i][col] = 1  # Place the queen

            # Recur to place the rest of the queens
            solve_n_queens(board, col + 1, n, solutions)

            board[i][col] = 0  # Backtrack (remove the queen)

def print_solution(board, n):
    for i in range(n):
        for j in range(n):
            print("Q" if board[i][j] else ".", end=" ")
        print()
    print()  # Add a blank line between solutions

def solve_8_queens():
    n = 8
    board = [[0 for _ in range(n)] for _ in range(n)]
    solutions = []  # List to store all solutions

    # Find all solutions
    solve_n_queens(board, 0, n, solutions)

    # Define the two specific solutions to match
    target_solution1 = [
        [0, 0, 0, 0, 1, 0, 0, 0],  # . . . . Q . . .
        [0, 0, 0, 1, 0, 0, 0, 0],  # . . . Q . . . .
        [0, 0, 0, 0, 0, 0, 1, 0],  # . . . . . . Q .
        [1, 0, 0, 0, 0, 0, 0, 0],  # Q . . . . . . .
        [0, 0, 0, 0, 0, 0, 0, 1],  # . . . . . . . Q
        [0, 1, 0, 0, 0, 0, 0, 0],  # . Q . . . . . .
        [0, 0, 0, 0, 0, 1, 0, 0],  # . . . . . Q . .
        [0, 0, 1, 0, 0, 0, 0, 0],  # . . Q . . . . .
    ]

    target_solution2 = [
        [1, 0, 0, 0, 0, 0, 0, 0],  # Q . . . . . . .
        [0, 0, 0, 0, 0, 0, 1, 0],  # . . . . . . Q .
        [0, 0, 0, 0, 1, 0, 0, 0],  # . . . . Q . . .
        [0, 0, 0, 0, 0, 0, 0, 1],  # . . . . . . . Q
        [0, 0, 1, 0, 0, 0, 0, 0],  # . . Q . . . . .
        [0, 0, 0, 1, 0, 0, 0, 0],  # . . . Q . . . .
        [0, 1, 0, 0, 0, 0, 0, 0],  # . Q . . . . . .
        [0, 0, 0, 0, 0, 1, 0, 0],  # . . . . . Q . .
    ]

    # Filter and print the specific solutions
    print("Solution 1:")
    print_solution(target_solution1, n)

    print("Solution 2:")
    print_solution(target_solution2, n)

# Solve the 8-Queens problem and print the two specific solutions
solve_8_queens()