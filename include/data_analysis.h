#pragma once

#include <iostream>
#include <vector>

#define SHORT_TERM_PERIOD 10U
#define LONG_TERM_PERIOD 50U

class DataAnalysis {
 private:
  double profit;

 public:
  /* Methods */
  bool Data_CalcStockProfit(std::vector<double> open_price, std::vector<double> close_price);
  bool Data_CalcPriceSimpleMovingAverage(const std::vector<double> &close_price);
  double Data_GetStockProfit(void);
  /* Constructors */
  DataAnalysis();
};