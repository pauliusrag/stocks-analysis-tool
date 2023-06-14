#include "data_fetching.hpp"

int main() {
    DataFetching teslaStock("TSLA", DataRange::kDays5, DataInterval::kDay1);
    return 0;
}
