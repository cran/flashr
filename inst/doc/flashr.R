## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(flashr)

## ----eval = FALSE-------------------------------------------------------------
# flashcard("data_types")

## ----eval = FALSE-------------------------------------------------------------
# flashcard("data_types", termsfirst = FALSE)

## ----eval = FALSE-------------------------------------------------------------
# flashcard("data_types", package = FALSE)

## ----eval = FALSE-------------------------------------------------------------
# flashcard("data_types", theme = "sky")

## -----------------------------------------------------------------------------
list_decks()

## -----------------------------------------------------------------------------
list_decks(pattern = "r4ds")

## ----eval = FALSE-------------------------------------------------------------
# choose_deck("r4ds")

## ----echo = FALSE-------------------------------------------------------------
decks <- list_decks("r4ds")
cli::cli_text("Please enter the number for a deck or 0 to exit: ")

## ----eval = FALSE-------------------------------------------------------------
# choose_deck("r4ds", choice = 2)

## ----eval = FALSE-------------------------------------------------------------
# flashcard("r4ds03")

## -----------------------------------------------------------------------------
my_deck <- read.csv("../inst/extdata/operators.csv")
knitr::kable(my_deck)

## -----------------------------------------------------------------------------
list_decks(repo = "JeffreyRStevens/flashr_decks")

## ----eval = FALSE-------------------------------------------------------------
# my_functions <- c("%>%", "ggplot()", "aes()", "geom_point()")
# create_deck(my_functions,
#   title = "ggplot basics"
# )

