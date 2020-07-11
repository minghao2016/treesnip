test_that("catboost", {

  model <- parsnip::boost_tree(mtry = 1, trees = 50)
  model <- parsnip::set_engine(model, "catboost")

  expect_regression_works(parsnip::set_mode(model, "regression"))
  expect_multiclass_classification_works(parsnip::set_mode(model, "classification"))
  expect_binary_classification_works(parsnip::set_mode(model, "classification"))

})

