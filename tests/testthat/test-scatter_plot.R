test_that("Scatter_plot works", {

  expect_identical(scatter_plot(insurance)$labels$y, "charges")

})
