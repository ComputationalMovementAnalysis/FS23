# Instructions for FG GeoI

## Dealing with R Solutions

After really overengineering this in FS22, we are more pragmatic and elegant in FS23. The solutions are in a *private* github repo, which is included into this repo as a submodule. When cloning this project for the first time, you need to explicitly activate this submodule so that the content is pulled:

```
git submodule update --init --recursive
```

## Publishing

I have always found that version controlling the output files is [not a good idea](https://stackoverflow.com/q/67664158/4139249). One way to avoid this is by adding `docs/` to `.gitignore` and using ~the tool [`ghp-import`](https://pypi.org/project/ghp-import/)~ the `quarto publish` functionality. 

We used to have the html-output in its own repo (`computationalmovementanalysis.github.io`), but switched it up in FS23: The html output is now in the `gh-pages` branch, and computationalmovementanalysis.github.io forwards to computationalmovementanalysis.github.io/FS23.

To publish the html files to the `gh-pages` branch, run the following line:

```
quarto publish --no-prompt gh-pages
```



# Todos (FS23)

- consider shifting the git stuff by a one week increment
  - do the first week without git
  - Install git before week 2
  - do the input on "why git" in week 2
  - work with a local git repo in week 2
  - submit the solution to week 2 without github
  - get a github account before week 3
  - work with github in week 3
- consider moving `sf` and `terra` into later weeks...
- if we use utterances, everyone needs to subscribe to the repo
- In Week 2
  - Task 4 is very repetitive and time consuming. Skip the calulation and visualisation of speed?
  - Since we added tasks 6 and 7, I made Task 5 Optional. Remove altogether?
- rather than using the euclidean distance function, we could use sf to calculate distances (this used to be complicated, but [is now simple](https://stackoverflow.com/questions/49853696/distances-of-points-between-rows-with-sf#comment134254584_49862289))


