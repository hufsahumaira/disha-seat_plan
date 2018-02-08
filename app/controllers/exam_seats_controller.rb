class ExamSeatsController < ApplicationController
  def index
    @exam_seats1 = ExamSeat.where(present: false, room: "102DT5")
    @exam_seats2 = ExamSeat.where(present: false, room: "103DT5")
    @exam_seats3 = ExamSeat.where(present: false, room: "601CSE")
    @exam_seats4 = ExamSeat.where(present: false, room: "602CSE")
  end

  def show
    @exam_seat = ExamSeat.find(params[:id])
  end

  def new
    @exam_seat = ExamSeat.new
  end

  def create
    @exam_seat = ExamSeat.new(exam_seat_params)
    if @exam_seat.save
      flash[:success] = "successfully created"
      redirect_to add_path
    else
      render 'new'
    end
  end

  private

  def exam_seat_params
    params.require(:exam_seat).permit(:studId, :section, :course, :room)
  end
end
