import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

public class TicTacToeTest {
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
        game.makeMove(0, 1, "X");
        game.makeMove(0, 2, "X");
        assertTrue(game.isWin());
    }

    @Test
    void detectVerticalWin() {
        TicTacToe game = new TicTacToe();
        game.makeMove(0, 0, "X");
        game.makeMove(1, 0, "X");
        game.makeMove(2, 0, "X");
        assertTrue(game.isWin());
    }

    @Test
    void detectDiagonalWin() {
        TicTacToe game = new TicTacToe();
        game.makeMove(0, 0, "X");
        game.makeMove(1, 1, "X");
        game.makeMove(2, 2, "X");
        assertTrue(game.isWin());
    }

    @Test
    void detectOtherDiagonalWin() {
        TicTacToe game = new TicTacToe();
        game.makeMove(0, 2, "X");
        game.makeMove(1, 1, "X");
        game.makeMove(2, 0, "X");
        assertTrue(game.isWin());
    }
}
     