import static org.junit.jupiter.api.Assertions.assertEquals;
import org.junit.jupiter.api.Test;
import static org.easymock.EasyMock.*;
import org.easymock.IMocksControl;

class TwitterTest {

    @Test
    void actual_call() {
        Twitter twitter = new Twitter();

        boolean actual = twitter.isMentionned("me");
        assertEquals(true, actual);
    }

    @Test
    void mock_full_object() {
        IMocksControl control = createControl();
        Twitter twitter = control.createMock(Twitter.class);

        expect(twitter.loadTweet()).andReturn("hello @me");
        expect(twitter.loadTweet()).andReturn("hello @you");
        control.replay();

        String actual;

        actual = twitter.loadTweet();
        assertEquals("hello @me", actual);

        actual = twitter.loadTweet();
        assertEquals("hello @you", actual);

        control.verify();
    }

    @Test
    void mock_partial_object() {
        Twitter twitter = partialMockBuilder(Twitter.class)
          .addMockedMethod("loadTweet")
          .createMock();

        expect(twitter.loadTweet()).andReturn("hello @me").times(2);
        replay(twitter);

        boolean actual;

        actual = twitter.isMentionned("me");
        assertEquals(true, actual);

        actual = twitter.isMentionned("you");
        assertEquals(false, actual);
    }

    // @Test
    // void isMentionned_lookForAtSymbol() {
    //     Twitter twitter = new Twitter();

    //     // Assuming a tweet like "hello @me"
    //     boolean actual = twitter.isMentionned("me");
    //     assertEquals(true, actual);

    //     actual = twitter.isMentionned("you");
    //     assertEquals(false, actual);
    // }

    // @Test
    // void isMentionned_dontReturnSubstringMatches() {
    //     Twitter twitter = new Twitter();

    //     // Assuming a tweet like "hello @meat"
    //     boolean actual = twitter.isMentionned("me");
    //     assertEquals(false, actual);

    //     actual = twitter.isMentionned("meat");
    //     assertEquals(true, actual);
    // }

    // @Test
    // void isMentionned_superStringNotFound() {
    //     Twitter twitter = new Twitter();

    //     // Assuming a tweet like "hello @me"
    //     boolean actual = twitter.isMentionned("me");
    //     assertEquals(true, actual);

    //     actual = twitter.isMentionned("meat");
    //     assertEquals(false, actual);
    // }

    // @Test
    // void isMentionned_handleNull() {
    //     Twitter twitter = new Twitter();

    //     // Assuming no tweet is available (i.e. null)
    //     boolean actual = twitter.isMentionned("me");
    //     assertEquals(false, actual);

    //     actual = twitter.isMentionned("meat");
    //     assertEquals(false, actual);
    // }
}
