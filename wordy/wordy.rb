class WordProblem
  attr_accessor :problem
  
  def initialize(problem)
    @problem = problem
  end
  
  def answer
    final_problem = []
    problem.split(' ').each do |word|
      final_problem << word.to_i if word.to_i != 0
      final_problem << '+' if word == 'plus'
      final_problem << '-' if word == 'minus'
      final_problem << '*' if word == 'multiplied'
      final_problem << '/' if word == 'divided'
    end
    raise ArgumentError.new if final_problem.size < 2
    eval final_problem.join('')
  end
end
