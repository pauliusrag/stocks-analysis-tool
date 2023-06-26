#include "data_analysis.h"

/* Constructors */
DataAnalysis::DataAnalysis()
    : profit(0.0), sma_struct{std::vector<double>(), 0}, ema_struct{std::vector<double>(), 0} {};

/* Methods */
/* Getters */
double DataAnalysis::Data_GetStockProfit(void) { return profit; }
double DataAnalysis::Data_GetSmaAtIndex(size_t index) {
  if ((sma_struct.sma_cnt - 1 < index) || (sma_struct.sma_cnt == 0)) {
    return 0.0;
  }
  return sma_struct.sma_data.at(index);
}
size_t DataAnalysis::Data_GetSmaIndexCnt(void) { return sma_struct.sma_cnt; }

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

/* Static functions */
static void Data_WriteToFileDouble(std::vector<double> data) {
  std::ofstream outputFile("Double_Output.txt");

  if (outputFile.is_open()) {
    for (size_t i = 0; i < data.size(); i++) {
      outputFile << std::fixed << std::setprecision(5) << data[i] << std::endl;
    }
    outputFile.close();
    std::cout << "Array elements written to the file successfully."
              << std::endl;
  } else {
    std::cout << "Unable to open the file." << std::endl;
  }
}

bool DataAnalysis::Data_CalcPriceSimpleMovingAverage(
    const std::vector<double> &close_price, const MaPeriodTable period) {
  const size_t period_value = static_cast<size_t>(period);
  if (close_price.size() < period_value) {
    std::cout << "Insufficient data for SMA calculation using provided period"
              << std::endl;
    return false;
  }

  double temp_sma = 0.0;
  sma_struct.sma_data.reserve(close_price.size() - period_value + 1);

  for (size_t i{0}; i <= (close_price.size() - period_value); i++) {
    double total_sum = 0.0;
    for (size_t j{0}; j < period_value; j++) {
      total_sum += close_price.at(i + j);
    }
    temp_sma = total_sum / period_value;
    sma_struct.sma_data.push_back(temp_sma);
    sma_struct.sma_cnt++;
  }

  Data_WriteToFileDouble(sma_struct.sma_data);

  return true;
}

bool DataAnalysis::Data_CalcPriceExponentialMovingAverage(
  const std::vector<double> &close_price, const MaPeriodTable period) {

    const size_t period_value = static_cast<size_t>(period);
    ema_struct.ema_data.reserve(close_price.size() + 1);
    ema_struct.ema_data.push_back(close_price.at(0));
    double smoothing = 2.0 / (period_value + 1.0);

    /* EMA(t) = (1 - α) * EMA(t-1) + α * x(t) */

    for (size_t i{1}; i < close_price.size(); i++) {
      double curr_ema = ((1 - smoothing) * ema_struct.ema_data.at(i - 1)) + (smoothing * close_price.at(i));
      ema_struct.ema_data.push_back(curr_ema);
      std::cout<<"EMA: "<<ema_struct.ema_data.at(i)<<std::endl;
    }
}
