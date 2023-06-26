#include <iostream>
#include <string>
#include <vector>
#include "data_fetching.hpp"

#include "data_analysis.h"

std::vector<double> open_vector{
    163.97000122070312, 173.72000122070312, 168.9499969482422,
    172.5500030517578,  168.6999969482422,  176.07000732421875,
    167.66000366210938, 165.64999389648438, 168.41000366210938,
    174.22000122070312, 177.1699981689453,  180.6999969482422,
    186.1999969482422,  182.22999572753906, 186.5399932861328,
    184.6199951171875,  200.10000610351562, 199.77999877929688,
    202.58999633789062, 210.14999389648438, 217.8000030517578};

std::vector<double> close_vector{
    170.05999755859375, 171.7899932861328,  169.14999389648438,
    168.5399932861328,  172.0800018310547,  167.97999572753906,
    166.35000610351562, 166.52000427246094, 173.86000061035156,
    176.88999938964844, 180.13999938964844, 188.8699951171875,
    185.77000427246094, 182.89999389648438, 184.47000122070312,
    193.1699981689453,  201.16000366210938, 203.92999267578125,
    207.52000427246094, 213.97000122070312, 219.82980346679688};

std::vector<double> high_vector{
    170.7899932861328,  173.8000030517578,  169.82000732421875,
    174.42999267578125, 173.57000732421875, 177.3800048828125,
    169.75999450683594, 169.52000427246094, 174.5,
    177.05999755859375, 181.9499969482422,  189.32000732421875,
    192.9600067138672,  184.22000122070312, 186.77999877929688,
    198.60000610351562, 204.47999572753906, 203.9499969482422,
    209.8000030517578,  217.25,             221.2899932861328};

std::vector<uint32_t> volume_vector{
    107440900, 112249400, 88965000,  119840700, 103889900, 157577100, 105592500,
    98288800,  125473600, 109520300, 136024200, 132001400, 156952100, 137605100,
    96870700,  162061500, 128818700, 150711700, 148029900, 164129000, 64032736};

std::vector<double> low_vector{
    163.50999450683594, 169.19000244140625, 166.55999755859375,
    166.67999267578125, 166.7899932861328,  167.22999572753906,
    164.5500030517578,  164.35000610351562, 167.19000244140625,
    172.4499969482422,  176.30999755859375, 180.11000061035156,
    185.25999450683594, 178.22000122070312, 180.5800018310547,
    184.52999877929688, 197.52999877929688, 195.1199951171875,
    199.3699951171875,  209.75,             216.39999389648438};

std::vector<double> adj_close_vector{
    170.05999755859375, 171.7899932861328,  169.14999389648438,
    168.5399932861328,  172.0800018310547,  167.97999572753906,
    166.35000610351562, 166.52000427246094, 173.86000061035156,
    176.88999938964844, 180.13999938964844, 188.8699951171875,
    185.77000427246094, 182.89999389648438, 184.47000122070312,
    193.1699981689453,  201.16000366210938, 203.92999267578125,
    207.52000427246094, 213.97000122070312, 219.82980346679688};

int main() {
  DataAnalysis data;

  data.Data_CalcStockProfit(open_vector, close_vector);
  double percent = data.Data_GetStockProfit();
  std::cout << "Stock profit during given period: " << percent << "%"
            << std::endl;

  data.Data_CalcPriceSimpleMovingAverage(close_vector, MaPeriodTable::k10dPeriod);

  for (size_t i{0}; i < data.Data_GetSmaIndexCnt(); i++) {
    double value = data.Data_GetSmaAtIndex(i);
    std::cout << "SMA from Map: " << std::fixed << std::setprecision(5) << value
              << std::endl;
  }

  data.Data_CalcPriceExponentialMovingAverage(close_vector, MaPeriodTable::k10dPeriod);

  return 0;
    DataFetching teslaStock("TSLA", DataRange::kDays5, DataInterval::kDay1);
    return 0;
}
