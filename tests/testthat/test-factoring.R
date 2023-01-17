test_that("factoring works", {

  returned_value <- is.factor(factoring(insurance)$sex)

  expect_true(returned_value)
})
