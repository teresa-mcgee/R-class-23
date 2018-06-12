# rclass

## Instructions for use

To install the package from github run:

```
library(devtools)
install_github("How-to-Learn-to-Code/rclass", build_vignettes = TRUE)
library(htltcR)
```
Then you can load vignettes for each lecture. For example, to run load the lecture for class1 simply run:

```
vignette("operators")
```
One of the biggest advantages of using a package is that students can easily load the data used in the examples and homeworks from the package. For example, to load the data used in control run: 
```
data(primers)
```
## Class sequence
* Class 1-2: operators (Operators)
* Class 3: structures (Data structures)
* Class 4: (Input/Output)
* Class 5-6: (Plotting)
* Class 7: control (Control statements)
* Class 8: functions (Functions)
* Class 9: package (Reproducible research & packages)
* Classes 10-12: (Final project)

## Contributing

See [CONTRIBUTING.md](rclass/CONTRIBUTING.md) for instructions.

## Plotting lectures
Different small groups have used different methods for teaching plotting. Here is the list of available plotting lectures with a summary of each. 

### plotting1
This is a very basic plotting lecture. It jumps right into base plot and focuses on `plot()`, `points()`, and `legend()`. The homework activies use a different data set and also teach `hist()` and `boxplot()`. 
