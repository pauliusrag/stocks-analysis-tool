#include "data_fetching.hpp"
#include "data_parsing.hpp"

#define MINUTES_IN_HOUR 60
#define HOURS_IN_DAY 24
#define DAYS_IN_WEEK 7
#define DAYS_IN_MONTH 30 // sometimes it might be different
#define MINUTES_IN_DAY 1440
#define MONTHS_IN_YEAR 12

std::map<DataInterval, RequestData> DataFetching::buildIntervalTable() {
    std::map<DataInterval, RequestData> interval_table;
    interval_table[DataInterval::MINUTES1] = { 1, "1m" };
    interval_table[DataInterval::MINUTES2] = { 2, "2m" };
    interval_table[DataInterval::MINUTES5] = { 5, "5m" };
    interval_table[DataInterval::MINUTES15] = { 15, "15m" };
    interval_table[DataInterval::MINUTES30] = { 30, "30m" };
    interval_table[DataInterval::HOUR1] = { MINUTES_IN_HOUR, "1h" };
    interval_table[DataInterval::DAY1] = { MINUTES_IN_DAY, "1d" };
    interval_table[DataInterval::WEEK1] = { MINUTES_IN_DAY * DAYS_IN_WEEK, "1wk" };
    interval_table[DataInterval::MONTH1] = { MINUTES_IN_DAY * DAYS_IN_MONTH, "1mo" };
    return interval_table;
}

std::map<DataRange, RequestData> DataFetching::buildRangeTable() {
    std::map<DataRange, RequestData> range_table;
    range_table[DataRange::DAYS1] = { MINUTES_IN_DAY, "1d" };
    range_table[DataRange::DAYS5] = { MINUTES_IN_DAY * 5, "5d" };
    range_table[DataRange::MONTHS1] = { MINUTES_IN_DAY * DAYS_IN_MONTH, "1mo" };
    range_table[DataRange::MONTHS3] = { MINUTES_IN_DAY * DAYS_IN_MONTH * 3, "3mo" };
    range_table[DataRange::MONTHS6] = { MINUTES_IN_DAY * DAYS_IN_MONTH * 6, "6mo" };
    range_table[DataRange::YEARS1] = { MINUTES_IN_DAY * DAYS_IN_MONTH * MONTHS_IN_YEAR, "1y" };
    range_table[DataRange::YEARS2] = { MINUTES_IN_DAY * DAYS_IN_MONTH * MONTHS_IN_YEAR * 2, "2y" };
    range_table[DataRange::YEARS5] = { MINUTES_IN_DAY * DAYS_IN_MONTH * MONTHS_IN_YEAR * 5, "5y" };
    range_table[DataRange::YEARS10] = { MINUTES_IN_DAY * DAYS_IN_MONTH * MONTHS_IN_YEAR * 10, "10y" };
    range_table[DataRange::MAX] = { 0, "max" };
    return range_table;
}

std::string DataFetching::createHTTPSLink(std::string ticker, const std::string range, const std::string interval) {
    // https://query1.finance.yahoo.com/v8/finance/chart/TSLA?interval=1mo&range=1y
    const std::string url_beginning = "https://query1.finance.yahoo.com/v8/finance/chart/";
    std::string link = url_beginning + ticker + "?interval=" + interval + "&range=" + range;
    std::cout << link << std::endl;
    return link;
}

static size_t writeCallback(void* contents, const size_t size, const size_t nmemb, std::string* data) {
    const size_t totalSize = size * nmemb;
    data->append(static_cast<char*>(contents), totalSize);
    return totalSize;
}

const std::string DataFetching::sendYahooRequest(const std::string link) {
    std::string data;
    CURL *curl = curl_easy_init();
    if (curl) {
        std::cout<<link<<std::endl;
        curl_easy_setopt(curl, CURLOPT_URL, link.c_str());
        curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, writeCallback);
        curl_easy_setopt(curl, CURLOPT_WRITEDATA, &data);
        CURLcode res = curl_easy_perform(curl);
        if (res != CURLE_OK) {
            std::cerr << "Failed to fetch URL: " << curl_easy_strerror(res) << std::endl;
        }
        curl_easy_cleanup(curl);
    }
    // Display the fetched data
    std::cout << "Fetched data:\n" << data << std::endl;
    return data;
}

DataFetching::DataFetching(const std::string ticker, const DataRange range, const DataInterval interval) {
    std::map<DataInterval, RequestData> interval_table = buildIntervalTable();
    std::map<DataRange, RequestData> range_table = buildRangeTable();
    const std::string link = createHTTPSLink(ticker,
                                             range_table[range].stringValue,
                                             interval_table[interval].stringValue);
    const std::string parsed_string = sendYahooRequest(link);
    // need to check if parsed string is ok
    DataParser parser(range_table[range].minutes, interval_table[interval].minutes, parsed_string);
    const ParsedData parsed_data = parser.getParsedData();
}
