// #include <iostream>
// #include <string>
// #include <vector>
// #include "data_fetching.hpp"
// #include "data_analysis.h"

// int main() {
//   DataAnalysis data;
//   ParsedData data_parsed;
//   DataFetching teslaStock("TSLA", DataRange::kMonths1, DataInterval::kDay1);
//   data_parsed = teslaStock.GetParsedData();

//   data.Data_CalcStockProfit(data_parsed.open_price, data_parsed.close_price);
//   double percent = data.Data_GetStockProfit();
//   std::cout << "Stock profit during given period: " << percent << "%"
//             << std::endl;

//   data.Data_CalcPriceSimpleMovingAverage(data_parsed.close_price, MaPeriodTable::k10dPeriod);

//   for (size_t i{0}; i < data.Data_GetSmaIndexCnt(); i++) {
//     double value = data.Data_GetSmaAtIndex(i);
//     std::cout << "SMA from Map: " << std::fixed << std::setprecision(5) << value
//               << std::endl;
//   }

//   data.Data_CalcPriceExponentialMovingAverage(data_parsed.close_price, MaPeriodTable::k10dPeriod);

//   return 0;
// }


#include <iostream>
#include <fstream>
#include <vector>
#include <iomanip>
#include "data_fetching.hpp"
#include "data_analysis.h"

int main() {
    DataAnalysis data;
    ParsedData data_parsed;
    DataFetching teslaStock("TSLA", DataRange::kMonths6, DataInterval::kDay1);
    data_parsed = teslaStock.GetParsedData();

    // Calculate SMA data
    data.Data_CalcPriceSimpleMovingAverage(data_parsed.close_price, MaPeriodTable::k50dPeriod);
    // Calculate EMA data
    data.Data_CalcPriceExponentialMovingAverage(data_parsed.close_price, MaPeriodTable::k50dPeriod);


    // Write SMA, EMA, and Close Price data to a file
    std::ofstream file("moving_averages.txt");
    if (file.is_open()) {
        for (size_t i = 0; i < data.Data_GetSmaIndexCnt(); i++) {
            file <<"SMA, "<< std::fixed << std::setprecision(5) << data.Data_GetSmaAtIndex(i) << '\n';
        }
        for (size_t i = 0; i < data.Data_GetEmaIndexCnt(); i++) {
            file <<"EMA, "<< std::fixed << std::setprecision(5) << data.Data_GetEmaAtIndex(i) << '\n';
        }
        for (size_t i = 0; i < (data_parsed.close_price.size() - 1); i++) {
            file <<"Closing Price, "<< std::fixed << std::setprecision(5) << data.Data_GetEmaAtIndex(i) << '\n';
        }
        file.close();
    } else {
        std::cout << "Failed to open the file." << std::endl;
    }

    return 0;
}
