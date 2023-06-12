#pragma once

#include <fstream>
#include <iomanip>
#include <iostream>
#include <map>
#include <vector>

#define SHORT_TERM_PERIOD 10U
#define LONG_TERM_PERIOD 50U

class DataAnalysis {
 private:
  double profit;

  struct {
    std::vector<double> sma_data;
    size_t sma_cnt;
  } sma_struct;

 public:
  /* Methods */
  bool Data_CalcStockProfit(std::vector<double> open_price,
                            std::vector<double> close_price);
  bool Data_CalcPriceSimpleMovingAverage(const std::vector<double> &close_price,
                                         size_t period);
  double Data_GetStockProfit(void);
  double Data_GetSmaAtIndex(size_t index);
  size_t Data_GetSmaIndexCnt(void);

  /* Constructors */
  DataAnalysis();
};