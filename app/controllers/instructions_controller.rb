class InstructionsController < ApplicationController

  def create
    @instruction = Instruction.new(instruction_params)
    @instruction.save
    respond_to { |f| f.js }
  end

private
  def instruction_params
    params.require(:instructions).permit(:desc)
  end

end
