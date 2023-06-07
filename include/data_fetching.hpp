#pragma once
#include <pch.h>

enum class DataRange {
    DAYS1,
    DAYS5,
    MONTHS1,
    MONTHS3,
    MONTHS6,
    YEARS1,
    YEARS2,
    YEARS5,
    YEARS10,
    MAX
};

enum class DataInterval {
    MINUTES1,
    MINUTES2,
    MINUTES5,
    MINUTES15,
    MINUTES30,
    HOUR1,
    DAY1,
    WEEK1,
    MONTH1
};

struct RequestData {
    int minutes;
    std::string stringValue;
};

class DataFetching {
private:
    std::map<DataInterval, RequestData> buildIntervalTable();
    std::map<DataRange, RequestData> buildRangeTable();
    std::string createHTTPSLink(std::string ticker, const std::string range, const std::string interval);
    std::string sendYahooRequest(const std::string link);

public:
    DataFetching(std::string ticker, DataRange range, DataInterval interval);
};
