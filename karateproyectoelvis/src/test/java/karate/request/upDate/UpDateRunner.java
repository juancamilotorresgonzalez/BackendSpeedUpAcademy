package karate.request.upDate;

import com.intuit.karate.junit5.Karate;

public class UpDateRunner {
    @Karate.Test
    Karate testSample(){
        return Karate.run("classpath:karate/request/upDate/upDate.feature").relativeTo(getClass());
    }
}