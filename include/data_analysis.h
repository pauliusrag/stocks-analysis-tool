#pragma once

#include <fstream>
#include <iomanip>
#include <iostream>
#include <map>
#include <vector>

enum class MaPeriodTable {
  k2dPeriod = 2U,
  k5dPeriod = 5U,
  k10dPeriod = 10U,
  k50dPeriod = 50U,
  k200dPeriod = 200U,
};

class DataAnalysis {
 private:
  double profit;

  struct {
    std::vector<double> sma_data;
    size_t sma_cnt;
  } sma_struct;

  struct {
    std::vector<double> ema_data;
    size_t ema_cnt;
  } ema_struct;

 public:
  /* Methods */
  bool Data_CalcStockProfit(std::vector<double> open_price,
                            std::vector<double> close_price);
  bool Data_CalcPriceSimpleMovingAverage(const std::vector<double> &close_price,
                                         const MaPeriodTable period);
  void Data_CalcPriceExponentialMovingAverage(
      const std::vector<double> &close_price, const MaPeriodTable period);
  double Data_GetStockProfit(void);
  double Data_GetSmaAtIndex(size_t index);
  size_t Data_GetSmaIndexCnt(void);
  double Data_GetEmaAtIndex(size_t index);
  size_t Data_GetEmaIndexCnt(void);

  /* Constructors */
  DataAnalysis();
};