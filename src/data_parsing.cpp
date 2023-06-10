#include "data_parsing.hpp"

// Function to split a string by a delimiter
std::vector<std::string> splitString(const std::string& str, const char delimiter) {
    std::vector<std::string> tokens;
    std::stringstream ss(str);
    std::string token;
    while (std::getline(ss, token, delimiter)) {
        tokens.push_back(token);
    }
    return tokens;
}

std::map<DataName, ParseStruct> DataParser::buildParseTable() {
    std::map<DataName, ParseStruct> parse_table;
    parse_table[DataName::TIMESTAMP].search_key = "\"timestamp\":[";
    parse_table[DataName::CLOSE_PRICE].search_key = "\"close\":[";
    parse_table[DataName::OPEN_PRICE].search_key = "\"open\":[";
    parse_table[DataName::VOLUME].search_key = "\"volume\":[";
    parse_table[DataName::LOWEST_PRICE].search_key = "\"low\":[";
    parse_table[DataName::HIGHEST_PRICE].search_key = "\"high\":[";
    return parse_table;
}

void DataParser::convertDataType(ParsedData* stockData,
                                 const DataName dataName,
                                 const std::string& dataToken) {
    switch (dataName) {
        case DataName::TIMESTAMP:
            stockData->timestamp.push_back(std::stoi(dataToken));
            break;
        case DataName::CLOSE_PRICE:
            stockData->close_price.push_back(std::stod(dataToken));
            break;
        case DataName::OPEN_PRICE:
            stockData->open_price.push_back(std::stod(dataToken));
            break;
        case DataName::VOLUME:
            stockData->volume.push_back(std::stoi(dataToken));
            break;
        case DataName::LOWEST_PRICE:
            stockData->lowest_price.push_back(std::stod(dataToken));
            break;
        case DataName::HIGHEST_PRICE:
            stockData->highest_price.push_back(std::stod(dataToken));
            break;
        default:
            std::cout << "Invalid data name" << std::endl;
            break;
    }
}

std::map<DataName, ParseStruct> DataParser::extractStockData(ParsedData *parsedDataVector,
                                                             const std::string &jsonData) {
    std::map<DataName, ParseStruct> parse_table = buildParseTable();

    for (const auto& item : parse_table) {
        DataName data_name = item.first;
        std::string search_key = parse_table[data_name].search_key;

        // Find the starting and ending positions of the array
        size_t dataStart = jsonData.find(search_key) + search_key.size();
        size_t dataEnd = jsonData.find("]", dataStart);

        // Extract the substring containing the data values
        std::string extractedString = jsonData.substr(dataStart, dataEnd - dataStart);

        // Split the substring by commas to get individual data values
        std::vector<std::string> dataTokens = splitString(extractedString, ','); //maybe I can put data directly to splitString into my vector
        // Convert the string timestamps to integers and add them to the vector
        for (const std::string& dataToken : dataTokens) {
            parse_table[data_name].parsed_data.push_back(dataToken);
            convertDataType(parsedDataVector, data_name, dataToken);
        }
    }
    return parse_table;
}

size_t DataParser::calculateReserve(int range, int interval) {
    size_t calculated_reserve = 0;
    if (interval < range) {
        calculated_reserve = range / interval;
    } else {
        std::cout<<"Interval is bigger than range"<<std::endl;
    }
    return calculated_reserve;
}

uint32_t convertTimestamp(const std::string& timestampStr) {
    uint32_t timestamp;
    std::istringstream iss(timestampStr);
    iss >> timestamp;
    return timestamp;
}

void DataParser::reserveStructMemory(ParsedData *parsedDataVector, const int range, const int interval) {
    const size_t reserve_size = calculateReserve(range, interval);
    parsedDataVector->timestamp.reserve(reserve_size);
    parsedDataVector->close_price.reserve(reserve_size);
    parsedDataVector->open_price.reserve(reserve_size);
    parsedDataVector->volume.reserve(reserve_size);
    parsedDataVector->lowest_price.reserve(reserve_size);
    parsedDataVector->highest_price.reserve(reserve_size);
}

const ParsedData DataParser::getParsedData() {
    return parsedDataVector;
}

DataParser::DataParser(const int range, const int interval, const std::string jsonData) {
    reserveStructMemory(&parsedDataVector, range, interval);
    std::map<DataName, ParseStruct> stringStockData = extractStockData(&parsedDataVector, jsonData);
}
