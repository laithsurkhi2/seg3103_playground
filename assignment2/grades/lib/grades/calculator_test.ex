defmodule Grades.CalculatorTest do
  use ExUnit.Case
  alias Grades.Calculator

  ### percentage_grade tests ###

  describe "percentage_grade/1" do
    test "TC1 - no homework and labs" do
      assert 87 == Calculator.percentage_grade(%{homework: [], labs: [], midterm: 85, final: 90})
    end

    test "TC2 - single homework and lab entry" do
      assert 70 == Calculator.percentage_grade(%{homework: [70], labs: [70], midterm: 70, final: 70})
    end

    test "TC3 - multiple homework and labs" do
      assert 75 == Calculator.percentage_grade(%{homework: [70, 80], labs: [60, 90], midterm: 70, final: 80})
    end

    test "TC4 - no homework, some labs" do
      assert 50 == Calculator.percentage_grade(%{homework: [], labs: [50, 50, 50], midterm: 50, final: 50})
    end

    test "TC5 - some homework, no labs" do
      assert 60 == Calculator.percentage_grade(%{homework: [60, 60, 60], labs: [], midterm: 60, final: 60})
    end
  end

  ### letter_grade tests ###

  describe "letter_grade/1" do
    test "TC1 - insufficient data, returns EIN" do
      assert "EIN" == Calculator.letter_grade(%{homework: [], labs: [], midterm: 30, final: 30})
    end

    test "TC2 - passing grades, returns A+" do
      assert "A+" == Calculator.letter_grade(%{homework: [90], labs: [90, 92, 91], midterm: 100, final: 100})
    end

    test "TC3 - failing grades, returns F" do
      assert "F" == Calculator.letter_grade(%{homework: [30], labs: [20, 25, 15], midterm: 30, final: 30})
    end

    test "TC4 - borderline passing, returns E" do
      assert "E" == Calculator.letter_grade(%{homework: [40], labs: [30, 40, 50], midterm: 40, final: 40})
    end

    test "TC5 - exactly on the threshold, returns D" do
      assert "D" == Calculator.letter_grade(%{homework: [50], labs: [50, 50, 50], midterm: 50, final: 50})
    end
  end

  ### numeric_grade tests ###

  describe "numeric_grade/1" do
    test "TC1 - insufficient data, returns 0" do
      assert 0 == Calculator.numeric_grade(%{homework: [], labs: [], midterm: 10, final: 10})
    end

    test "TC2 - passing grades, returns 10" do
      assert 10 == Calculator.numeric_grade(%{homework: [90], labs: [90, 92, 91], midterm: 100, final: 100})
    end

    test "TC3 - failing grades, returns 0" do
      assert 0 == Calculator.numeric_grade(%{homework: [30], labs: [20, 25, 15], midterm: 30, final: 30})
    end

    test "TC4 - borderline passing, returns 1" do
      assert 1 == Calculator.numeric_grade(%{homework: [40], labs: [30, 40, 50], midterm: 40, final: 40})
    end

    test "TC5 - exactly on the threshold, returns 2" do
      assert 2 == Calculator.numeric_grade(%{homework: [50], labs: [50, 50, 50], midterm: 50, final: 50})
    end
  end
end
