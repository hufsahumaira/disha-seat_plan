class PresentsController < ApplicationController
  def edit
    exam_seat = ExamSeat.find_by(studId: params[:studId])
    if exam_seat && !exam_seat.present?
      exam_seat.set_present
      redirect_to attendance_path
    else
      flash[:danger] = "Id not found"
      redirect_to attendance_path
    end
  end

  def attendance

  end
end
