# UNC How-to-Learn-to-Code: R Course

## Instructions for use

To install the package from github run:

```
library(devtools)
devtools::install_github("How-to-Learn-to-Code/rclass", build_opts = "")
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
Appropriate vignettes are in parentheses. For some there are two options. The first one is more in-depth. You should use your best judgement when deciding which lesson is most appropriate for your class. 
* Class 1: Set up, introduction to R and RStudio, and operators (operators)
* Class 2: Data structures and subsetting (structures)
* Class 3: File input/output (io or simple_io)
* Class 4: Plotting (graphics** or plotting)
* Class 5: Control statements (control)
* Class 6: Functions (functions)
* Class 7: Reproducible research and packages (package)

We have only seven lessons planned, but eight class periods. We expect that some of these lessons may take longer than a single class session, so don't worry if a lesson takes a little longer.

** if using the 'graphics' vignette, see below for modified class schedule. 

## Notes for teachers
This section contains recommendations for teachers from previous teachers. If you encounter something that you think could help other teachers, please add it here.

* **Giving context:** As you go through the lessons, make sure to highlight how this can be useful to your target audience (biological and biomedical scientists). 
* **Introduction to RStudio:** Take the time to explain what each of the windows is. As you go through the operators lesson there will be good opportunities to highlight some of the features.

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for instructions.

## Plotting lectures
Different small groups have used different methods for teaching plotting. Here is the list of available plotting lectures with a summary of each. 

### plotting
This is a very basic plotting lecture. It jumps right into base plot and focuses on `plot()`, `points()`, and `legend()`. The homework activities use a different data set and also teach `hist()` and `boxplot()`. 

### graphics
This lecture dives into the fundamentals of the graphics engine. It is recommended to put this lecture after the functions lecture, because the lecture includes information about how to write a few helpful functions. The recommened sequence would be operators, structures, control, functions, io, graphics, package.
