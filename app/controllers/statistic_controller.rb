class StatisticController < ApplicationController
  def index
  	@ind = Vote.group("candidate_id").count.sort_by {|candidate , sum | sum}
  	@ganadores = []
  	@ind.each do |a|
  		@ganadores << { name: Candidate.find(a[0]).name, votos: a[1] }
  	end
  	respond_to do |format|
    format.html
    format.json { render json: @ganadores}
  	end 
  end

  def show
  	@respuestas= Result.group("answer_id").count.sort_by{|answer, sum| sum}
  	@bestans = []
  	@respuestas.each do |a|
      @ans=Answer.find(a[0])
  		@bestans << { test: @ans.answer, votos: a[1] , name: Candidate.find(@ans.candidate_id).name , num_votos: Result.where(answer_id: @ans.id).count, area: @ans.question_id}
  	end
  	respond_to do |format|
    format.html
    format.json { render json: @bestans}
  	end 
  end
end
