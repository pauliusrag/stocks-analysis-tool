#include "data_parsing.hpp"

// Function to split a string by a delimiter
std::vector<std::string> splitString(const std::string& str, char delimiter) {
    std::vector<std::string> tokens;
    std::stringstream ss(str);
    std::string token;
    while (std::getline(ss, token, delimiter)) {
        tokens.push_back(token);
    }
    return tokens;
}

// Function to extract timestamps from JSON raw data
std::vector<int> extractTimestamps(const std::string& jsonData) {
    std::vector<int> timestamps;

    // Find the starting and ending positions of the "timestamp" array
    size_t timestampStart = jsonData.find("\"timestamp\":[") + 13;
    size_t timestampEnd = jsonData.find("]", timestampStart);

    // Extract the substring containing the timestamp values
    std::string timestampStr = jsonData.substr(timestampStart, timestampEnd - timestampStart);

    // Split the substring by commas to get individual timestamps
    std::vector<std::string> timestampTokens = splitString(timestampStr, ',');

    // Convert the string timestamps to integers and add them to the vector
    for (const std::string& timestampToken : timestampTokens) {
        int timestamp = std::stoi(timestampToken);
        timestamps.push_back(timestamp);
    }

    return timestamps;
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

DataParser::DataParser(int range, int interval, const std::string jsonData){
    // std::vector<ParsedData> parsedDataVector;
    // const size_t reserve_size = calculateReserve(range, interval);
    // parsedDataVector.reserve(reserve_size);
    std::vector<int> timestamps = extractTimestamps(jsonData);

    // Print the timestamps
    for (int timestamp : timestamps) {
        std::cout << timestamp << std::endl;
    }
}
