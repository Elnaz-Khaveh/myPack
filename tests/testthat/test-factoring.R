insurance <-readr::read_csv("C:/study/3rd_semester/workshop 1/Project_insurance/Insurance-Cost-Prediction/data/insurance.csv")


test_that("factoring works", {

  returned_value <- is.factor(factoring(insurance)$sex)

  expect_true(returned_value)
})
