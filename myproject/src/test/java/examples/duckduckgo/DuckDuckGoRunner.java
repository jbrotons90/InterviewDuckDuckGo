package examples.duckduckgo;

import com.intuit.karate.junit5.Karate;

class DuckDuckGoRunner {
    
    @Karate.Test
    Karate testDuckDuckGo() {
        return Karate.run("duckduckgo").relativeTo(getClass());
    }    

}
