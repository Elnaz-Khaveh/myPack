test_that("Random forest works", {
  expect_identical(class(rf(insurance)), c("train","train.formula"))
})
