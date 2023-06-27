# UNC How to Learn to Code: R Course <img src="man/figures/htltcR.png" width="150" align="right" />

<!-- badges: start -->
[![R build status](https://github.com/How-to-Learn-to-Code/rclass/workflows/R-CMD-check/badge.svg)](https://github.com/How-to-Learn-to-Code/rclass/actions)
<!-- badges: end -->

This package was developed for the graduate student developed and led How to Learn to Code initiative at the University of North Carolina at Chapel Hill. It is intended to give a fundamentals-focused introduction to programming R. 

## Installation

To install the package from GitHub run:

```
library(devtools)
devtools::install_github("teresa-mcgee/R-class-23", build_opts = "", dependencies = TRUE, force = TRUE)
library(htltcR-23)
```

Once the package is installed once, users can easily grab the most recent version by running `updateRClass()`.

## Using the package

Each lecture is included in the package as a vignette. Once the package is installed and loaded (above), class lectures can be accessed with the `vignette()` function. For example:

```
vignette("introduction", package = 'htltcR')
```

One of the biggest advantages of using a package is that students can easily load the data used in the examples and homeworks from the package. For example, to load the data used in control run: 

```
data(primers)
```

## Class sequence

The class is roughly intended for eight 90-minute sessions, with one pre-class set up worksheet, ideally with the last 30 minutes reserved for students to ask questions and work collaboratively on the given exercises.

| Class        | Title                                              | Command                                       |
| :---         | :---                                               | :---                                          |
| Class 0      | HTLTC-R: Intro to Coding in R                      | `vignette("introduction", package = 'htltcR')`|
| Class 1      | HTLTC-R: Operators                                 | `vignette("operators", package = 'htltcR')`   |
| Class 2      | HTLTC-R: Data structures & subsetting              | `vignette("structures", package = 'htltcR')`  |
| Class 3      | HTLTC-R: Control statements                        | `vignette("control", package = 'htltcR')`     |
| Class 4      | HTLTC-R: Functions                                 | `vignette("functions", package = 'htltcR')`   |
| Class 5      | HTLTC-R: Reading, writing, and regular expressions | `vignette("io", package = 'htltcR')`          |
| Class 6      | HTLTC-R: Graphics                                  | `vignette("graphics", package = 'htltcR')`    |
| Class 7      | HTLTC-R: Graphics                                  | `vignette("graphics", package = 'htltcR')`    |
| Class 8      | HTLTC-R: Reproducible research & packages          | `vignette("package", package = 'htltcR')`     |

## Notes for teachers
This section contains recommendations for teachers from previous teachers. If you encounter something that you think could help other teachers, please add it here.

* **Giving context:** As you go through the lessons, make sure to highlight how this can be useful to your target audience (biological and biomedical scientists). 
* **Introduction to RStudio:** Take the time to explain what each of the windows is. As you go through the operators lesson there will be good opportunities to highlight some of the features.
* **Alternate lectures** There are alternate versions of a couple of the vignettes; the above sequence gives the most complete picture, but some teachers may prefer the simplified lectures, e.g. `vignette("plotting")`. Read through both and use your discretion. 

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for instructions.
