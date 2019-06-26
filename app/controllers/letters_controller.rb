class LettersController < ApplicationController
    def index
        @letters = Letter.all
    end
    

    def show
      @letter = Letter.find(params[:id])
      respond_to do |format|
        format.html
        format.xml {render:xml => @orders}
        format.pdf do
          pdf = Aip1.new(@letter, view_context)
          send_data pdf.render, filename: "Letter_#{@letter.letter_number}.pdf",
                                type: "application/pdf",
                                disposition: "download"
        end
        end
    end
end


