context('start_date')

years = 1900:2015
truth = structure(c(-25568, -25204, -24840, -24469, -24105, -23741, -23377, 
                    -23013, -22649, -22278, -21914, -21550, -21186, -20822, -20451, 
                    -20087, -19723, -19359, -18995, -18631, -18260, -17896, -17532, 
                    -17168, -16804, -16433, -16069, -15705, -15341, -14977, -14613, 
                    -14242, -13878, -13514, -13150, -12786, -12422, -12051, -11687, 
                    -11323, -10959, -10595, -10224, -9860, -9496, -9132, -8768, -8404, 
                    -8033, -7669, -7305, -6941, -6577, -6206, -5842, -5478, -5114, 
                    -4750, -4386, -4015, -3651, -3287, -2923, -2559, -2195, -1824, 
                    -1460, -1096, -732, -368, 3, 367, 731, 1095, 1459, 1823, 2194, 
                    2558, 2922, 3286, 3650, 4021, 4385, 4749, 5113, 5477, 5841, 6212, 
                    6576, 6940, 7304, 7668, 8032, 8403, 8767, 9131, 9495, 9859, 10230, 
                    10594, 10958, 11322, 11686, 12050, 12421, 12785, 13149, 13513, 
                    13877, 14248, 14612, 14976, 15340, 15704, 16068, 16439), class = "Date")
sd = start_date(years)

test_that('start_date returns a Date vector', {
  expect_that(sd, is_a('Date'))
  expect_that(length(sd), equals(length(years)))
})
test_that('start_date returns correct values', {
  expect_that(sd, equals(truth))
})



context('get_start_date')

sd = get_start_date(paste(years, '-01-01', sep=''))

test_that('get_start_date returns a Date vector', {
  expect_that(sd, is_a('Date'))
  expect_that(length(sd), equals(length(years)))
})
test_that('get_start_date returns correct values', {
  expect_that(sd, equals(truth))
})

