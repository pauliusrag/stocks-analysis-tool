#pragma once
#include <pch.h>

struct ParsedData {
    std::string ticker; // Name of the stock
    uint32_t timestamp;
    double close_price;
    double open_price;
    uint32_t volume; // Number of shares sold
    double lowest_price;
    double highest_price;
};

class DataParser {
private:
    size_t calculateReserve(int range, int interval);
public:
    DataParser(int range, int interval, const std::string jsonData);
    // std::vector<ParsedData> parseData(const std::string& data) {
    //     // Implement the parsing logic here
    //     // Extract relevant information from the data and create ParsedData objects
    //     // Return the vector of parsed data
    // }
};
