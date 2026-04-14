# More Or Less, an incredible videogame

Usage: `./main.sh`

## Missing features :
- [ ] Add "--max" parameter
- [ ] Use english in messages
- [ ] Add "--answer" parameter (for tests)
- [ ] Save highscore.csv with "name,score"

## Cleaning solution

/!\ Use with caution

Delete all branches: 
`git branch | grep -v "^\*" | xargs -r git branch -D`

Delete all tags:
`git tag | xargs -r git tag -d`