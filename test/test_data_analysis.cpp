#include <gtest/gtest.h>
#include "data_analysis.h"

TEST(DataAnalysis, ProfitNegative_Test) {
  DataAnalysis data;
  std::vector<double> open_price_vector{100.00, 110.00, 90.00};
  std::vector<double> close_price_vector{110.00, 90.00, 85.00};
  bool calc_success =
      data.Data_CalcStockProfit(open_price_vector, close_price_vector);
  ASSERT_DOUBLE_EQ(data.Data_GetStockProfit(), -15.00);
  ASSERT_EQ(calc_success, 1);
}

TEST(DataAnalysis, ProfitPositive_Test) {
  DataAnalysis data;
  std::vector<double> open_price_vector{100.00, 110.00, 120.00};
  std::vector<double> close_price_vector{110.00, 120.00, 130.00};
  bool calc_success =
      data.Data_CalcStockProfit(open_price_vector, close_price_vector);
  ASSERT_DOUBLE_EQ(data.Data_GetStockProfit(), 30.00);
  ASSERT_EQ(calc_success, 1);
}

TEST(DataAnalysis, ProfitNoData_Test) {
  DataAnalysis data;
  std::vector<double> open_price_vector;
  std::vector<double> close_price_vector;
  bool calc_success =
      data.Data_CalcStockProfit(open_price_vector, close_price_vector);
  ASSERT_EQ(calc_success, 0);
}
