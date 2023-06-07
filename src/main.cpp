#include "data_fetching.hpp"

int main() {
    DataFetching teslaStock("TSLA", DataRange::DAYS5, DataInterval::DAY1);
    return 0;
}
