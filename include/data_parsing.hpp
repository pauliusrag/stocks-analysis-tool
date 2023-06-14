#ifndef DATA_PARSING_H_
#define DATA_PARSING_H_

#include <pch.h>

enum class DataName {
    kTimestamp,
    kClosePrice,
    kOpenPrice,
    kVolume,
    kLowestPrice,
    kHighestPrice
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

// maybe I don't need this struct. I can use search_key directly
struct ParseStruct {
    std::string search_key;
    std::vector<std::string> parsed_data;
};

class DataParser {
private:
    size_t CalculateReserve(int range, int interval);
    std::map<DataName, ParseStruct> BuildParseTable();
    std::map<DataName, ParseStruct> ExtractStockData(ParsedData *ParsedDataVector,
                                                     const std::string& json_data);
    void ReserveStructMemory(ParsedData *ParsedDataVector, const int range,
                             const int interval);
    void ConvertDataType(ParsedData* StockData, const DataName data_name,
                         const std::string& data_token);
public:
    ParsedData ParsedDataVector;
    DataParser(const int range, const int interval, const std::string json_data);
    const ParsedData GetParsedData();
};

#endif // DATA_PARSING_H_
