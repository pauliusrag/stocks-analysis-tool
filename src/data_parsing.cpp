#include "data_parsing.hpp"

// Function to split a string by a delimiter
std::vector<std::string> SplitString(const std::string& str,
                                     const char delimiter) {
    std::vector<std::string> tokens;
    std::stringstream ss(str);
    std::string token;
    while (std::getline(ss, token, delimiter)) {
        tokens.push_back(token);
    }
    return tokens;
}

std::map<DataName, ParseStruct> DataParser::BuildParseTable() {
    std::map<DataName, ParseStruct> parse_table;
    parse_table[DataName::kTimestamp].search_key = "\"timestamp\":[";
    parse_table[DataName::kClosePrice].search_key = "\"close\":[";
    parse_table[DataName::kOpenPrice].search_key = "\"open\":[";
    parse_table[DataName::kVolume].search_key = "\"volume\":[";
    parse_table[DataName::kLowestPrice].search_key = "\"low\":[";
    parse_table[DataName::kHighestPrice].search_key = "\"high\":[";
    return parse_table;
}

void DataParser::ConvertDataType(ParsedData* StockData,
                                 const DataName data_name,
                                 const std::string& data_token) {
    switch (data_name) {
        case DataName::kTimestamp:
            StockData->timestamp.push_back(std::stoi(data_token));
            break;
        case DataName::kClosePrice:
            StockData->close_price.push_back(std::stod(data_token));
            break;
        case DataName::kOpenPrice:
            StockData->open_price.push_back(std::stod(data_token));
            break;
        case DataName::kVolume:
            StockData->volume.push_back(std::stoi(data_token));
            break;
        case DataName::kLowestPrice:
            StockData->lowest_price.push_back(std::stod(data_token));
            break;
        case DataName::kHighestPrice:
            StockData->highest_price.push_back(std::stod(data_token));
            break;
        default:
            std::cout << "Invalid data name" << std::endl;
            break;
    }
}

std::map<DataName, ParseStruct> DataParser::ExtractStockData(ParsedData *ParsedDataVector,
                                                             const std::string &json_data) {
    std::map<DataName, ParseStruct> parse_table = BuildParseTable();

    for (const auto& item : parse_table) {
        DataName data_name = item.first;
        std::string search_key = parse_table[data_name].search_key;

        // Find the starting and ending positions of the array
        size_t data_start = json_data.find(search_key) + search_key.size();
        size_t data_end = json_data.find("]", data_start);

        // Extract the substring containing the data values
        std::string extracted_string = json_data.substr(data_start, data_end -
                                                        data_start);

        // Split the substring by commas to get individual data values
        //maybe I can put data directly to SplitString into my vector
        std::vector<std::string> data_tokens = SplitString(extracted_string,
                                                           ',');
        // Convert the string timestamps to integers and add them to the vector
        for (const std::string& data_token : data_tokens) {
            parse_table[data_name].parsed_data.push_back(data_token);
            ConvertDataType(ParsedDataVector, data_name, data_token);
        }
    }
    return parse_table;
}

size_t DataParser::CalculateReserve(int range, int interval) {
    size_t calculated_reserve = 0;
    if (interval < range) {
        calculated_reserve = range / interval;
    } else {
        std::cout<<"Interval is bigger than range"<<std::endl;
    }
    return calculated_reserve;
}

void DataParser::ReserveStructMemory(ParsedData *ParsedDataVector,
                                     const int range,
                                     const int interval) {
    const size_t reserve_size = CalculateReserve(range, interval);
    ParsedDataVector->timestamp.reserve(reserve_size);
    ParsedDataVector->close_price.reserve(reserve_size);
    ParsedDataVector->open_price.reserve(reserve_size);
    ParsedDataVector->volume.reserve(reserve_size);
    ParsedDataVector->lowest_price.reserve(reserve_size);
    ParsedDataVector->highest_price.reserve(reserve_size);
}

const ParsedData DataParser::GetParsedData() {
    return ParsedDataVector;
}

DataParser::DataParser(const int range, const int interval,
                       const std::string json_data) {
    ReserveStructMemory(&ParsedDataVector, range, interval);
    std::map<DataName, ParseStruct> stringStockData = ExtractStockData(&ParsedDataVector, json_data);
}
