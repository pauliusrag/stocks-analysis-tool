#include <iostream>
#include <curl/curl.h>

using namespace std;

void test_curl(void) {
    CURL *curl;
    CURLcode res;

    curl = curl_easy_init();
    if(curl) {
        curl_easy_setopt(curl, CURLOPT_URL, "http://google.com");
        res = curl_easy_perform(curl);
        // printf("vaziuojam\r");
        /* always cleanup */
        curl_easy_cleanup(curl);
    }
}

int main()
{
    cout<<"Hello World";
    int test = 5;
    float kan = 2.5;
    test = kan;
    test_curl();
    return 0;
}

