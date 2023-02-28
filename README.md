# Instructions for FG GeoI

## Dealing with R Solutions

After making this repo open to the public, we had to find a way to temporally hide the exercise solutions from the students (see [this discussion](https://github.com/orgs/ComputationalMovementAnalysis/teams/core-team/discussions/2)). Removing the respective R-code from the repo was not an option, since the code itself was part of the question (e.g. only the code output is shown and needs to be reproduced). To solve this, we used the following approach: 

We created an RScript for every task containing the solution code. These Rscripts are named `task_*_hide.R` and are excluded from versioncontrol via `.gitignore`. Every time the document is built, a function is run to generate corresponding *obfuscated* R scripts of the same name, without the trailing `_hide` (i.e. `task_*.R`). Obfuscation is achieved with the function `myencrypt()` which needs a passphrase. This passphrase is an integer value stored in a file in the working directory, but it is removed from version control via `.gitignore` (which means that all persons wanting to build the book locally must agree on a passphrase and store the respective file in their working directory manually). The obfuscated files *are* version controlled, which is how changes in the solutions are shared between coworkers.

Using a (complex) heuristic, either changes in `task_*_hide.R` override `task_*.R` or the other way round. We need to see if this heuristic is always correct (since it's mainly based on the file's timestamp, which might not be a good approach).


## Publishing

I have always found that version controlling the output files is [not a good idea](https://stackoverflow.com/q/67664158/4139249). One way to avoid this is by adding `docs/` to `.gitignore` and using the tool [`ghp-import`](https://pypi.org/project/ghp-import/). For this, you first have to add a new remote to the repo:

```
git remote add gh-pages https://github.com/ComputationalMovementAnalysis/computationalmovementanalysis.github.io
```

Next, you can push to this remote with the following ghp-command (append `-f` if github rejects your commit because "the remote contains work that you do not have locally"):

```
ghp-import -p -n -r gh-pages docs
```

This will publish the content of `docs/` to the branch `gh-pages` of the remote `gh-pages`. You can store this command as a (local) alias, saving it to the file `.git/config`.

```
git config alias.publish '!ghp-import -p -n -r gh-pages docs'
``` 

Then, you can push the changes to the `gh-pages` remote into the `gh-pages` branch. You might need to pull the remote changes first (`git pull gh-pages gh-pages`).


See also [this discussion](https://github.com/orgs/ComputationalMovementAnalysis/teams/core-team/discussions/11)



# Todos

## Todos for FS2022

- [ ] replace `lubridate` with `clock`
- [ ] ~~move from bookdown to distill (?)~~
- [ ] consider moving `sf` and `terra` into later weeks...
- [ ] if we use utterances, everyone needs to subscribe to the repo
- [x] don't duplicate prerequisites and reading assignments
- [ ] update the learning outcomes, they are outdated!
- [ ] think about making peer feedback mandatory (i.e. for a mandatory submission)

## ToDos for FS2021:

- [x] can we port this whole thing to github.com and use github actions?
- [x] can we make this an OER?
- [ ] ~~can we work with preview_chapter() so that the Module Research Methods will run smoother next semester?~~
