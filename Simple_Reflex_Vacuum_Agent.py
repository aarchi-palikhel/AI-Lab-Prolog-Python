class SimpleReflexVacuumAgent:
    def __init__(self):
        self.environment = {}  # Store all locations and their states
        self.current_location = None  # Current location of the vacuum agent

    def get_percept(self):
        "Returns the state of the current location (Dirty or Clean)."
        return self.environment[self.current_location]

    def clean(self):
        """Cleans the current location."""
        self.environment[self.current_location] = "Clean"
        print(f"Cleaned Location {self.current_location}")

    def move(self):
        """Moves the vacuum agent to the next location."""
        locations = list(self.environment.keys())
        current_index = locations.index(self.current_location)
        next_index = (current_index + 1) % len(locations)  # Loop back to the start
        self.current_location = locations[next_index]
        print(f"Moved to Location {self.current_location}")

    def agent_action(self):
        """Decides the agent's action based on the percept."""
        if self.get_percept() == "Dirty":
            self.clean()
        else:
            self.move()

    def run(self, steps):
        """Runs the agent for a given number of steps."""
        for step in range(steps):
            print(f"Step {step + 1}: Current Location: {self.current_location}, State: {self.get_percept()}")
            self.agent_action()

# Take user input for environment states
def get_user_input():
    environment = {}
    n = int(input("Enter the number of locations: "))
    for _ in range(n):
        loc, state = input("Enter location and state : ").split()
        environment[loc.upper()] = state.capitalize()
    return environment

# Main
vacuum_agent = SimpleReflexVacuumAgent()
user_input = get_user_input()  # Get environment input from user
vacuum_agent.environment = user_input  # Update the environment
vacuum_agent.current_location = list(user_input.keys())[0]  # Start at the first location
vacuum_agent.run(5)  # Run the agent for 5 steps