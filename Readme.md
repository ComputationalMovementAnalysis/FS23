# Instructions for FG GeoI

## Dealing with R Solutions

After really overengineering this in FS22, we are more pragmatic and elegant in FS23. The solutions are in a *private* github repo, which is included into this repo as a submodule. When cloning this project for the first time, you need to explicitly activate this submodule so that the content is pulled:

```
git submodule update --init --recursive
```

## Publishing

I have always found that version controlling the output files is [not a good idea](https://stackoverflow.com/q/67664158/4139249). One way to avoid this is by adding `docs/` to `.gitignore` and using ~the tool [`ghp-import`](https://pypi.org/project/ghp-import/)~ the `quarto publish` functionality. 

We used to have the html-output in its own repo (`computationalmovementanalysis.github.io`), but switched it up in FS23: The html output is now in the `gh-pages` branch, and computationalmovementanalysis.github.io forwards to computationalmovementanalysis.github.io/FS23.




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
