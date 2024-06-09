import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

public class TicTacToeTest {
    //failing test
    @Test
    void initializesEmptyBoard() {
        TicTacToe game = new TicTacToe();
        String[][] expectedBoard = {
            {"", "", ""},
            {"", "", ""},
            {"", "", ""}
        };
        assertArrayEquals(expectedBoard, game.getBoard());
    }

    @Test
    void detectHorizontalWin() {
        TicTacToe game = new TicTacToe();
        game.makeMove(0, 0, "X");
        game.makeMove(1, 0, "X");
        game.makeMove(2, 0, "X");
        assertTrue(game.isWin());
    }

}
