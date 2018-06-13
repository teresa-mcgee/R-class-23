Filing issues
-------------

Please read these points carefully and follow them while filing issues.

- **One issue for one purpose**. Don't add more than one *bug*, *feature request*, or *documentation request* on to the same issue. Take the time to read through the current issues to ensure your issue is not already listed.
- If you've found a *bug*, thank you for reporting! Please include a reproducible example of your bug in the issue. 
- For the project contributors, please label new issues using the following rules:
  - *bugs* should be labeled "bug"
  - *feature requests* or *suggestions* should be labeled "enhancement"
  - *questions* or *requests for support* should be labeled "question"
  
Pull Requests
-------------

Please file an issue before creating PRs so that it can be discussed first *before* you invest time implementing it.

1. Please create all pull requests (PR) against the `master` branch.
2. Create **one PR per feature/bug fix**. Each PR should be associated with an Issue.
3. Create a branch for that feature/bug fix, named 'issue-N' where N is the Issue number, and use that as a base for your pull requests. Pull requests directly against your version of `master` will not be accepted.
4. Please squash temporary stage commits together before issuing a PR.
5. All commit messages should have two components: (1) a brief header on the first line beginning with "issue-N:" and (2) a body with 1 empty line after the header then at least a sentence or two in the commit body detailing all changes and justifications. In an ideal world, the header should be less than 50 characters, and the body should be less than 72 characters per line... but who's counting?
5. In your pull request's description, please state clearly as to what your PR does, i.e., what FR or bug your PR addresses, along with the issue number. For e.g, "Closes #717: tcplLoadData no longer errors with missing data."
7. Please build and test the package using before submitting the PR.

**References:** If you are not sure how to issue a PR, but would like to contribute, these links should help get you started:

1. **[How to Github: Fork, Branch, Track, Squash and Pull request](https://gun.io/blog/how-to-github-fork-branch-and-pull-request/)**.
2. **[Squashing Github pull requests into a single commit](http://eli.thegreenplace.net/2014/02/19/squashing-github-pull-requests-into-a-single-commit)**.

*This guide was modified from the contributing guide for the [data.table](https://github.com/Rdatatable/data.table) repository*

Vignette Formatting
-------------

All the vignettes should follow the same format. All sections are specified with three pound signs (`###`). Every class should include the following header:

    ---
    title: "HTLTC-R: Reading and writing files"
    output: rmarkdown::html_vignette
    vignette: >
      %\VignetteIndexEntry{HTLTC-R: Reading and writing files}
      %\VignetteEngine{knitr::rmarkdown}
      %\VignetteEncoding{UTF-8}
    ---

    ```{r setup, include=FALSE}
    knitr::opts_chunk$set(echo = TRUE, collapse = TRUE)
    library(htltcR)
    ```
    
    ### Using this document
    
    * Code blocks and R code have a grey background (note, code nested in the text is not highlighted in the pdf version of this document but is a different font).
    * \# indicates a comment, and anything after a comment will not be evaluated in R
    * The comments beginning with \#\# under the code in the grey code boxes are the output from the code directly above; any comments added by us will start with a single \#
    * While you can copy and paste code into R, you will learn faster if you type out the commands yourself. 
    * Read through the document after class. This is meant to be a reference, and ideally, you should be able to understand every line of code. If there is something you do not understand please email us with questions or ask in the following class (you're probably not the only one with the same question!). 
    
    ### Goals
    1. ...
    

The file should be placed in the vignettes folder with a simple name, ideally 1 word, and the ".Rmd" extension. The name after "HTLTC-R" can be longer and more descriptive. Please update it in both locations in the header. You can also add a final section called `### Exercises`` if you wish.

Testing the package
----------------

If you are using RStudio, running "Build & Reload" will not build the vignettes. You must run `devtools::install(build_vignettes = TRUE)` to test the installation. 

Add yourself as an author!
---------------

When you make changes update the DESCRIPTION file to add yourself as an author.
