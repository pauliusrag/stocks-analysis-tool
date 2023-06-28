#include <iostream>
#include <string>
#include <vector>
#include "data_fetching.hpp"
#include "data_analysis.h"

int main() {
  DataAnalysis data;
  ParsedData data_parsed;
  DataFetching teslaStock("TSLA", DataRange::kYears1, DataInterval::kDay1);
  data_parsed = teslaStock.GetParsedData();

  data.Data_CalcStockProfit(data_parsed.open_price, data_parsed.close_price);
  double percent = data.Data_GetStockProfit();
  std::cout << "Stock profit during given period: " << percent << "%"
            << std::endl;

  data.Data_CalcPriceSimpleMovingAverage(data_parsed.close_price, MaPeriodTable::k10dPeriod);

  for (size_t i{0}; i < data.Data_GetSmaIndexCnt(); i++) {
    double value = data.Data_GetSmaAtIndex(i);
    std::cout << "SMA from Map: " << std::fixed << std::setprecision(5) << value
              << std::endl;
  }

  data.Data_CalcPriceExponentialMovingAverage(data_parsed.close_price, MaPeriodTable::k10dPeriod);

  return 0;
}
