package karate.request.client;

import com.intuit.karate.junit5.Karate;

public class clientRunner {
    @Karate.Test
    Karate testSample() {
        return Karate.run("classpath:karate/request/client/client.feature").relativeTo(getClass());
    }
}
