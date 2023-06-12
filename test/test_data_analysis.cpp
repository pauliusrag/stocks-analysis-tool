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

TEST(DataAnalysis, CalculateSMADataSufficient_Test) {
  DataAnalysis data;
  std::vector<double> close_price_vector{110.00, 120.00, 130.00};
  bool sufficient_data =
      data.Data_CalcPriceSimpleMovingAverage(close_price_vector, 2);
  ASSERT_EQ(sufficient_data, 1);
}

TEST(DataAnalysis, CalculateSMADataNotSufficient_Test) {
  DataAnalysis data;
  std::vector<double> close_price_vector{110.00, 120.00, 130.00};
  bool sufficient_data =
      data.Data_CalcPriceSimpleMovingAverage(close_price_vector, 10);
  ASSERT_EQ(sufficient_data, 0);
}

TEST(DataAnalysis, CalculateSMAIndexCountOk_Test) {
  DataAnalysis data;
  std::vector<double> close_price_vector{110.00, 120.00, 130.00, 105.00,
                                         115.00, 122.00, 135.00, 134.00,
                                         138.00, 140.00};
  bool sufficient_data =
      data.Data_CalcPriceSimpleMovingAverage(close_price_vector, 5);
  ASSERT_EQ(sufficient_data, 1);
  int index_cnt = data.Data_GetSmaIndexCnt();
  ASSERT_EQ(index_cnt, 6);
}

TEST(DataAnalysis, CalculateSMAIndexOk_Test) {
  DataAnalysis data;
  std::vector<double> close_price_vector{110.00, 120.00, 130.00, 105.00,
                                         115.00, 122.00, 135.00, 134.00,
                                         138.00, 140.00};
  bool sufficient_data =
      data.Data_CalcPriceSimpleMovingAverage(close_price_vector, 5);
  ASSERT_EQ(sufficient_data, 1);
  ASSERT_DOUBLE_EQ(data.Data_GetSmaAtIndex(0), 116.0);
  ASSERT_DOUBLE_EQ(data.Data_GetSmaAtIndex(1), 118.4);
  ASSERT_DOUBLE_EQ(data.Data_GetSmaAtIndex(2), 121.4);
  ASSERT_DOUBLE_EQ(data.Data_GetSmaAtIndex(3), 122.2);
  ASSERT_DOUBLE_EQ(data.Data_GetSmaAtIndex(4), 128.8);
  ASSERT_DOUBLE_EQ(data.Data_GetSmaAtIndex(5), 133.8);
}