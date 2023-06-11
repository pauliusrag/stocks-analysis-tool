#include "data_analysis.h"
#include <iomanip>

DataAnalysis::DataAnalysis() : profit{0.0} {}

bool DataAnalysis::Data_CalcStockProfit(std::vector<double> open_price,
                                           std::vector<double> close_price) {
  bool ret_val = false;
  if ((close_price.size() != 0) && (open_price.size() != 0)) {
    double difference =
        close_price.at(close_price.size() - 1) - open_price.at(0);
    profit = (difference * 100.0) / open_price.at(0);
    ret_val = true;
  }
  return ret_val;
}

double DataAnalysis::Data_GetStockProfit(void) { return profit; }

bool DataAnalysis::Data_CalcPriceSimpleMovingAverage(const std::vector<double> &close_price) {
  if (close_price.size() < SHORT_TERM_PERIOD) {
    std::cout<<"Insufficient data for short term SMA calculation"<<std::endl;
    return false;
  }

  double short_term_sma = 0.0;
  for (size_t i{0}; i <= (close_price.size() - SHORT_TERM_PERIOD); i++) {
    double total_sum = 0.0;
    for (size_t j{0}; j < SHORT_TERM_PERIOD; j++) {
      total_sum += close_price.at(i+j);
    }
    short_term_sma = total_sum / SHORT_TERM_PERIOD;
    std::cout<<"SMA: "<<std::fixed << std::setprecision(5)<<short_term_sma<<std::endl;
  }

  return true;
}
