#include "data_fetching.hpp"

constexpr int8_t kDaysInMonth= 60; // sometimes it might be different
constexpr int16_t kMinutesInDay = 1440;
#define MONTHS_IN_YEAR 12

std::map<DataInterval, RequestData> DataFetching::BuildIntervalTable() {
    constexpr int8_t kMinutesInHour = 60;
    constexpr int8_t kDaysInWeek = 7;
    std::map<DataInterval, RequestData> interval_table;
    interval_table[DataInterval::kMinutes1] = { 1, "1m" };
    interval_table[DataInterval::kMinutes2] = { 2, "2m" };
    interval_table[DataInterval::kMinutes5] = { 5, "5m" };
    interval_table[DataInterval::kMinutes15] = { 15, "15m" };
    interval_table[DataInterval::kMinutes30] = { 30, "30m" };
    interval_table[DataInterval::kHour1] = { kMinutesInHour, "1h" };
    interval_table[DataInterval::kDay1] = { kMinutesInDay, "1d" };
    interval_table[DataInterval::kWeek1] = { kMinutesInDay * kDaysInWeek,
                                             "1wk" };
    interval_table[DataInterval::kMonth1] = { kMinutesInDay * kDaysInMonth,
                                              "1mo" };
    return interval_table;
}

std::map<DataRange, RequestData> DataFetching::BuildRangeTable() {
    constexpr int8_t kMonthsInYear = 12;
    std::map<DataRange, RequestData> range_table;
    range_table[DataRange::kDays1] = { kMinutesInDay, "1d" };
    range_table[DataRange::kDays5] = { kMinutesInDay * 5, "5d" };
    range_table[DataRange::kMonths1] = { kMinutesInDay * kDaysInMonth, "1mo" };
    range_table[DataRange::kMonths3] = { kMinutesInDay * kDaysInMonth * 3,
                                         "3mo" };
    range_table[DataRange::kMonths6] = { kMinutesInDay * kDaysInMonth * 6,
                                         "6mo" };
    range_table[DataRange::kYears1] = { kMinutesInDay * kDaysInMonth *
                                        kMonthsInYear, "1y" };
    range_table[DataRange::kYears2] = { kMinutesInDay * kDaysInMonth *
                                        kMonthsInYear * 2, "2y" };
    range_table[DataRange::kYears5] = { kMinutesInDay * kDaysInMonth *
                                        kMonthsInYear * 5, "5y" };
    range_table[DataRange::kYears10] = { kMinutesInDay * kDaysInMonth *
                                         kMonthsInYear * 10, "10y" };
    range_table[DataRange::kMax] = { 0, "max" };
    return range_table;
}

const std::string DataFetching::CreateHTTPSLink(std::string ticker,
                                                const std::string range,
                                                const std::string interval) {
    // https://query1.finance.yahoo.com/v8/finance/chart/TSLA?interval=1mo&range=1y
    const std::string url_beginning = "https://query1.finance.yahoo.com/v8/finance/chart/";
    const std::string link = url_beginning + ticker + "?interval=" + interval +
                             "&range=" + range;
    std::cout << link << std::endl;
    return link;
}

static size_t WriteCallback(void* contents, const size_t size,
                            const size_t nmemb, std::string* data) {
    const size_t total_size = size * nmemb;
    data->append(static_cast<char*>(contents), total_size);
    return total_size;
}

const std::string DataFetching::SendYahooRequest(const std::string link) {
    std::string data;
    CURL *curl = curl_easy_init();
    if (curl) {
        std::cout<<link<<std::endl;
        curl_easy_setopt(curl, CURLOPT_URL, link.c_str());
        curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, WriteCallback);
        curl_easy_setopt(curl, CURLOPT_WRITEDATA, &data);
        CURLcode res = curl_easy_perform(curl);
        if (res != CURLE_OK) {
            std::cerr << "Failed to fetch URL: " << curl_easy_strerror(res)
                      << std::endl;
        }
        curl_easy_cleanup(curl);
    }
    // Display the fetched data
    std::cout << "Fetched data:\n" << data << std::endl;
    return data;
}

const ParsedData& DataFetching::GetParsedData() {
    return parsed_data;
}

DataFetching::DataFetching(const std::string ticker, const DataRange range,
                           const DataInterval interval) {
    std::map<DataInterval, RequestData> interval_table = BuildIntervalTable();
    std::map<DataRange, RequestData> range_table = BuildRangeTable();
    const std::string link = CreateHTTPSLink(ticker,
                                             range_table[range].string_value,
                                             interval_table[interval].string_value);
    const std::string parsed_string = SendYahooRequest(link);
    // need to check if parsed string is ok
    DataParser parser(range_table[range].minutes,
                      interval_table[interval].minutes, parsed_string);
    parsed_data = parser.GetParsedData();
}
