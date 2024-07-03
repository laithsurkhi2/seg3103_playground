defmodule Grades.Calculator do
  def percentage_grade(%{homework: homework, labs: labs, midterm: midterm, final: final}) do
    # Question 2.1
    avg_homework = avg(homework)
    avg_labs = avg(labs)

    mark = calculate_grade(avg_labs, avg_homework, midterm, final)
    round(mark * 100)
  end

  def letter_grade(%{homework: homework, labs: labs, midterm: midterm, final: final}) do
    avg_homework = avg(homework)
    avg_labs = avg(labs)
    avg_exams = (midterm + final) / 2

    # Question 2.2
    if failed_to_participate?(avg_homework, avg_exams, labs) do
      "EIN"
    else
      mark = calculate_grade(avg_labs, avg_homework, midterm, final)
      map_grade(mark, :letter)
    end
  end

  def numeric_grade(%{homework: homework, labs: labs, midterm: midterm, final: final}) do
    avg_homework = avg(homework)
    avg_labs = avg(labs)
    avg_exams = (midterm + final) / 2

    # Question 2.2
    if failed_to_participate?(avg_homework, avg_exams, labs) do
      0
    else
      mark = calculate_grade(avg_labs, avg_homework, midterm, final)
      map_grade(mark, :numeric)
    end
  end

  # Question 2.1 Helper function to calculate average of a list of marks
  def avg(marks) do
    if Enum.empty?(marks) do
      0
    else
      Enum.sum(marks) / Enum.count(marks)
    end
  end

  # Question 2.2 Helper function to determine if the student failed to participate adequately
  def failed_to_participate?(avg_homework, avg_exams, labs) do
    Enum.count(Enum.reject(labs, &(&1 < 0.25))) < 3 or avg_homework < 0.4 or avg_exams < 0.4
  end

  # Question 2.3 Helper function to calculate the final grade mark
  def calculate_grade(avg_labs, avg_homework, midterm, final) do
    0.2 * avg_labs + 0.3 * avg_homework + 0.2 * midterm + 0.3 * final
  end

  # Question 2.4 Helper function to map grade to letter or numeric value
  def map_grade(mark, :letter) do
    cond do
      mark > 0.895 -> "A+"
      mark > 0.845 -> "A"
      mark > 0.795 -> "A-"
      mark > 0.745 -> "B+"
      mark > 0.695 -> "B"
      mark > 0.645 -> "C+"
      mark > 0.595 -> "C"
      mark > 0.545 -> "D+"
      mark > 0.495 -> "D"
      mark > 0.395 -> "E"
      true -> "F"
    end
  end

  def map_grade(mark, :numeric) do
    cond do
      mark > 0.895 -> 10
      mark > 0.845 -> 9
      mark > 0.795 -> 8
      mark > 0.745 -> 7
      mark > 0.695 -> 6
      mark > 0.645 -> 5
      mark > 0.595 -> 4
      mark > 0.545 -> 3
      mark > 0.495 -> 2
      mark > 0.395 -> 1
      true -> 0
    end
  end
end
