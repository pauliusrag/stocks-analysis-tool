#ifndef DATA_PARSING_H_
#define DATA_PARSING_H_

#include <pch.h>

enum class DataName {
    TIMESTAMP,
    CLOSE_PRICE,
    OPEN_PRICE,
    VOLUME,
    LOWEST_PRICE,
    HIGHEST_PRICE
};

struct ParsedData {
    std::string ticker; // Name of the stock
    std::vector<uint32_t> timestamp;
    std::vector<double> close_price;
    std::vector<double> open_price;
    std::vector<uint32_t> volume; // Number of shares sold
    std::vector<double> lowest_price;
    std::vector<double> highest_price;
};

struct ParseStruct { // maybe I don't need this struct. I can use search_key directly
    std::string search_key;
    std::vector<std::string> parsed_data;
};

class DataParser {
private:
    size_t calculateReserve(int range, int interval);
    std::map<DataName, ParseStruct> buildParseTable();
    std::map<DataName, ParseStruct> extractStockData(ParsedData *parsedDataVector, const std::string& jsonData);
    void reserveStructMemory(ParsedData *parsedDataVector, const int range, const int interval);
    void convertDataType(ParsedData* stockData, const DataName dataName, const std::string& dataToken);
public:
    ParsedData parsedDataVector;
    DataParser(const int range, const int interval, const std::string jsonData);
    const ParsedData getParsedData();
};

#endif // DATA_PARSING_H_
