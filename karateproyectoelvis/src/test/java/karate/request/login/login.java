package karate.request.login;

import com.intuit.karate.junit5.Karate;

public class login {

    @Karate.Test
    Karate testSample() {
        return Karate.run("classpath:karate/request/login/login.feature").relativeTo(getClass());
    }
}
