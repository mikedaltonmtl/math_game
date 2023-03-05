# Nouns
- Math Game
- Turn
- Question
- Player
- Life

# Classes

## Math Game

### Role
- Container to store and manage the game elements
- `State`: player1, player2
- `Behaviour`: begin new game, next turn, show result / end game

### Turn
- `State`: current player, question, answer, score
- `Behaviour`: generate question, verify answer, update score

### Player
- `State`: lives
- `Behaviour`: lose life, lose game