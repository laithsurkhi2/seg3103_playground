defmodule Grades.CalculatorTest do
  use ExUnit.Case
  alias Grades.Calculator

  describe "percentage_grade/1" do
    test "pctg_gd_test_87" do
      assert 87 ==
               Calculator.percentage_grade(%{
                 homework: [],
                 labs: [],
                 midterm: 0.85,
                 final: 0.90
               })
    end

    test "pctg_gd_test_70" do
      assert 70 ==
               Calculator.percentage_grade(%{
                 homework: [0.70],
                 labs: [0.70],
                 midterm: 0.7,
                 final: 0.70
               })
    end
  end

  describe "letter_grade/1" do
    test "ltr_gd_test_EIN_0_0" do
      assert "EIN" ==
               Calculator.letter_grade(%{
                 homework: [],
                 labs: [],
                 midterm: 0,
                 final: 0
               })
    end

    test "ltr_gd_test_EIN_30_30" do
      assert "EIN" ==
               Calculator.letter_grade(%{
                 homework: [],
                 labs: [],
                 midterm: 0.30,
                 final: 0.30
               })
    end

    test "ltr_gd_test_A+" do
      assert "A+" ==
               Calculator.letter_grade(%{
                 homework: [0.90],
                 labs: [0.90, 0.92, 0.91],
                 midterm: 0.98,
                 final: 0.98
               })
    end

    test "ltr_gd_test_A" do
      assert "A" ==
               Calculator.letter_grade(%{
                 homework: [0.87],
                 labs: [0.88, 0.85, 0.84],
                 midterm: 0.88,
                 final: 0.89
               })
    end

    test "ltr_gd_test_A-" do
      assert "A-" ==
               Calculator.letter_grade(%{
                 homework: [0.82],
                 labs: [0.84, 0.83, 0.81],
                 midterm: 0.83,
                 final: 0.80
               })
    end

    test "ltr_gd_test_B+" do
      assert "B+" ==
               Calculator.letter_grade(%{
                 homework: [0.78],
                 labs: [0.77, 0.75, 0.78],
                 midterm: 0.77,
                 final: 0.76
               })
    end

    test "ltr_gd_test_B" do
      assert "B" ==
               Calculator.letter_grade(%{
                 homework: [0.71],
                 labs: [0.74, 0.71, 0.70],
                 midterm: 0.73,
                 final: 0.71
               })
    end

    test "ltr_gd_test_C+" do
      assert "C+" ==
               Calculator.letter_grade(%{
                 homework: [0.66],
                 labs: [0.65, 0.61, 0.61],
                 midterm: 0.64,
                 final: 0.67
               })
    end

    test "ltr_gd_test_C" do
      assert "C" ==
               Calculator.letter_grade(%{
                 homework: [0.60],
                 labs: [0.61, 0.62, 0.60],
                 midterm: 0.62,
                 final: 0.60
               })
    end

    test "ltr_gd_test_D+" do
      assert "D+" ==
               Calculator.letter_grade(%{
                 homework: [0.56],
                 labs: [0.55, 0.57, 0.59],
                 midterm: 0.57,
                 final: 0.55
               })
    end

    test "ltr_gd_test_D" do
      assert "D" ==
               Calculator.letter_grade(%{
                 homework: [0.51],
                 labs: [0.50, 0.52, 0.53],
                 midterm: 0.50,
                 final: 0.51
               })
    end

    test "ltr_gd_test_E" do
      assert "E" ==
               Calculator.letter_grade(%{
                 homework: [0.40],
                 labs: [0.45, 0.45, 0.45],
                 midterm: 0.40,
                 final: 0.40
               })
    end

    test "ltr_gd_test_F" do
      assert "F" ==
               Calculator.letter_grade(%{
                 homework: [0.35],
                 labs: [0.34, 0.35, 0.33],
                 midterm: 0.38,
                 final: 0.34
               })
    end
  end

  describe "numeric_grade/1" do
    test "nmc_gd_test_0_0" do
      assert 0 ==
               Calculator.numeric_grade(%{
                 homework: [],
                 labs: [],
                 midterm: 0.10,
                 final: 0.10
               })
    end

    test "nmc_gd_test_10" do
      assert 10 ==
               Calculator.numeric_grade(%{
                 homework: [0.90],
                 labs: [0.90, 0.92, 0.91],
                 midterm: 0.98,
                 final: 0.98
               })
    end

    test "nmc_gd_test_9" do
      assert 9 ==
               Calculator.numeric_grade(%{
                 homework: [0.87],
                 labs: [0.88, 0.85, 0.84],
                 midterm: 0.88,
                 final: 0.89
               })
    end

    test "nmc_gd_test_8" do
      assert 8 ==
               Calculator.numeric_grade(%{
                 homework: [0.82],
                 labs: [0.84, 0.83, 0.81],
                 midterm: 0.83,
                 final: 0.80
               })
    end

    test "nmc_gd_test_7" do
      assert 7 ==
               Calculator.numeric_grade(%{
                 homework: [0.78],
                 labs: [0.77, 0.75, 0.78],
                 midterm: 0.77,
                 final: 0.76
               })
    end

    test "nmc_gd_test_6" do
      assert 6 ==
               Calculator.numeric_grade(%{
                 homework: [0.71],
                 labs: [0.74, 0.71, 0.70],
                 midterm: 0.73,
                 final: 0.71
               })
    end

    test "nmc_gd_test_5" do
      assert 5 ==
               Calculator.numeric_grade(%{
                 homework: [0.66],
                 labs: [0.65, 0.61, 0.61],
                 midterm: 0.64,
                 final: 0.67
               })
    end

    test "nmc_gd_test_4" do
      assert 4 ==
               Calculator.numeric_grade(%{
                 homework: [0.60],
                 labs: [0.61, 0.62, 0.60],
                 midterm: 0.62,
                 final: 0.60
               })
    end

    test "nmc_gd_test_3" do
      assert 3 ==
               Calculator.numeric_grade(%{
                 homework: [0.56],
                 labs: [0.55, 0.57, 0.59],
                 midterm: 0.57,
                 final: 0.55
               })
    end

    test "nmc_gd_test_2" do
      assert 2 ==
               Calculator.numeric_grade(%{
                 homework: [0.51],
                 labs: [0.50, 0.52, 0.53],
                 midterm: 0.50,
                 final: 0.51
               })
    end

    test "nmc_gd_test_1" do
      assert 1 ==
               Calculator.numeric_grade(%{
                 homework: [0.40],
                 labs: [0.45, 0.45, 0.45],
                 midterm: 0.40,
                 final: 0.40
               })
    end

    test "nmc_gd_test_0" do
      assert 0 ==
               Calculator.numeric_grade(%{
                 homework: [0.35],
                 labs: [0.34, 0.35, 0.33],
                 midterm: 0.38,
                 final: 0.34
               })
    end
  end
end
