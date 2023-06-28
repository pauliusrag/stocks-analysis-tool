#ifndef DATA_FETCHING_H_
#define DATA_FETCHING_H_

#include <pch.h>
#include "data_parsing.hpp"

enum class DataRange {
    kDays1,
    kDays5,
    kMonths1,
    kMonths3,
    kMonths6,
    kYears1,
    kYears2,
    kYears5,
    kYears10,
    kMax
};

enum class DataInterval {
    kMinutes1,
    kMinutes2,
    kMinutes5,
    kMinutes15,
    kMinutes30,
    kHour1,
    kDay1,
    kWeek1,
    kMonth1
};

struct RequestData {
    int minutes;
    std::string string_value;
};

class DataFetching {
private:
    ParsedData parsed_data;
    std::map<DataInterval, RequestData> BuildIntervalTable();
    std::map<DataRange, RequestData> BuildRangeTable();
    const std::string CreateHTTPSLink(std::string ticker,
                                      const std::string range,
                                      const std::string interval);
    const std::string SendYahooRequest(const std::string link);

public:
    DataFetching(const std::string ticker, const DataRange range,
                 const DataInterval interval);
    const ParsedData& GetParsedData();
};

#endif // DATA_FETCHING_H_
