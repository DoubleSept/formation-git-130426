# More Or Less, an incredible videogame

Usage: `./main.sh`

La modif conflit

## Missing features :
- [ ] Add "--max" parameter
- [ ] Use english in messages
- [ ] Add a comment on user result
- [ ] Add "--answer" parameter (for tests)
- [ ] Save highscore.csv with "name,score"

## Cleaning solution

/!\ Use with caution

Delete all branches: 
`git branch | grep -v "^\*" | xargs -r git branch -D`

Delete all tags:
`git tag | xargs -r git tag -d`