class RecordsController < ApplicationController
  before_action :authenticate_user!, only: [:show]
    def index
      @records = Record.order(:name)
      respond_to do |format|
      format.html
      format.csv { send_data @records.to_csv }
      #format.xls
      end
    end

    def import
      Record.import(params[:file])
      redirect_to root_url, notice: "Records imported."
    end

    def show
      @record = Record.find(params[:id])
      respond_to do |format|
        format.html
        format.pdf do
          pdf = Aip1.new(@record, view_context)
          send_data pdf.render, filename: "letter_#{@letter.letter_id}.pdf",
                                type: "application/pdf",
                                disposition: "inline"
        end
      end
    end
    # def generate_all
    #   @records = Record.order(:name)
    #   Record.each do |r|
    #   pdf = LetterPdf1.new(r, view_context)
    #   FileUtils::copy_file("letter_#{@letter.letter_id}.pdf","./files")
    #   end
    # # ...
    # # temp_file_path = "./document/#{@report.report_name}.pdf"
    # # FileUtils::copy_file(rand_file,temp_file_path)
    # end
  end
  