#include "data_analysis.h"

/* Function prototypes */
static void Data_WriteToFileDouble(std::vector<double> data);

/* Constructors */
DataAnalysis::DataAnalysis()
    : profit(0.0), sma_struct{std::vector<double>(), 0} {};

/* Methods */
/* Getters */
double DataAnalysis::Data_GetStockProfit(void) { return profit; }
double DataAnalysis::Data_GetSmaAtIndex(size_t index) {
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

bool DataAnalysis::Data_CalcPriceSimpleMovingAverage(
    const std::vector<double> &close_price, size_t period) {
  if (close_price.size() < period) {
    std::cout << "Insufficient data for SMA calculation using provided period"
              << std::endl;
    return false;
  }

  double temp_sma = 0.0;
  sma_struct.sma_data.reserve(close_price.size() - period + 1);

  for (size_t i{0}; i <= (close_price.size() - period); i++) {
    double total_sum = 0.0;
    for (size_t j{0}; j < period; j++) {
      total_sum += close_price.at(i + j);
    }
    temp_sma = total_sum / period;
    sma_struct.sma_data.push_back(temp_sma);
    sma_struct.sma_cnt++;
  }

  Data_WriteToFileDouble(sma_struct.sma_data);

  return true;
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
