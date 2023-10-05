# Git Lost Commit Exercise

Git exercise for finding a lost commit.

## Instructions

To set up, run the `make_commits.sh` script. This will make a series of five
commits in the repo:

1. Add a mostly empty `vote.py` file with `pass` written in for every function.
2. Add docstrings in Google format for each function.
3. Amend the previous commit to use docstrings in the reST format.
4. Implement the first two functions in `vote.py`.
5. Implement the second two functions in `vote.py`.

Thus, after running this script, you should see **four** new commits when
running `git log` (since the commit in Step 3 replaces the one made in Step 2).
For example, if you run `git log --oneline`, you should see something like this:

```
524fadb (HEAD -> main) Implement second half of functions
450c084 Implement first half of functions
70b0ec9 Add docstrings in reST format
d228ce0 Add initial vote file
1ce256a Add starter files
db20e7d (origin/main, origin/HEAD) Initial commit
```

Note that beyond the "Initial commit", the other commit hashes will probably not
match.

Your task is to fill in the `rewrite_history.sh` script so that when you run it,
it modifies the commit history by replacing the commit in Step 3 (`70b0ec9` in
the output above) with the one in Step 2 (`e01fe3b` in the output below). As an
example, you might see something like this:

```
eba6b20 (HEAD -> main) Implement second half of functions
7f18cd7 Implement first half of functions
e01fe3b Add docstrings in Google format
d228ce0 Add initial vote file
1ce256a Add starter files
db20e7d (origin/main, origin/HEAD) Initial commit
```

Again, the commit hashes beyond the initial one will probably not match. Also
note that the last two commits will have different hashes from before.

You should be able to get the original Google docstrings commit even though the
`make_commits.sh` script amended the commit. Your `rewrite_history.sh` script
should ideally work for anyone (i.e., no matter what the commit hashes are), but
you can start by using hardcoded commit hashes if that helps you build intuition
for the Git operations you need to run.

**Do not access the files in the `helpers/` directory - they are only there for
setup, and should not be used in your solution.**

## Context

This exercise is part of the Extraordinary Tools for Computing course at Olin
College of Engineering. The course first ran in the Fall 2023 semester.

The `vote.py` itself is a starter file for the Software Design course at Olin
College, and was first used in that course in the Fall 2020 semester.

This repo is provided for students to freely experiment with the repo history,
allowing them to delete their entire copy of the repo and re-clone it if
something goes horribly wrong.

## Credit

The original idea for this exercise comes from a similar exercise in the [git-exercises
site](https://gitexercises.fracz.com/), created by Wojciech Frącz and Jacek
Dajda at AGH University of Science and Technology. The original exercise was
licensed under the MIT License.

## License

This exercise is licensed under the [GNU AGPL v3](LICENSE).
