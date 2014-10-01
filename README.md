# Virtualenv Recipes

A tool for creating for useful, modular Python virtualenvs. Plays well with [envplus](https://github.com/jsvine/envplus).

These are based on personal preferences; all relevant caveats apply.

## Installing a Virtualenv Recipe

```sh
mkvirtualenv [whatever_name_you_want]
./install-recipe.sh recipes/[RECIPE].txt
```

## Installing All Recipes

Be careful with this, especially if you already have virtualenvs with the same names as the recipes. This command is chiefly intended for people setting up their machines for the first time.

```sh
./install-all.sh [optional-prefix]
```

If you supply a prefix of, e.g., "x-", your envs will be named "x-data-analysis", "x-databases", et cetera.

## Current Recipes

- [data-analysis](recipes/data-analysis.txt)
- [databases](recipes/databases.txt)
- [flask](recipes/flask.txt)
- [geospatial](recipes/geospatial.txt)
- [imaging](recipes/imaging.txt)
- [ipython](recipes/ipython.txt)
- [scraping](recipes/scraping.txt)
- [testing](recipes/testing.txt)
- [text-analysis](recipes/text-analysis.txt)
- [visualization](recipes/visualization.txt)

