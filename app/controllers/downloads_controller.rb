class DownloadsController < ApplicationController
  before_action :load_user, only: [:index, :show]

  def show
    respond_to do |format|
      format.pdf { send_user_pdf }
      format.html { render_sample_html } if Rails.env.development?
    end
  end

  private

  def load_user
    @user = User.find_by id: params[:user_id]
  end

  def create_user_pdf
    PdfService.new user
  end

  def send_user_pdf
    send_file create_user_pdf.to_pdf,
      filename: user_pdf.filename,
      type: "application/pdf",
      disposition: "inline"
  end

  def render_sample_html
    render template: "downloads/show", layout: "invoice_pdf",
      locals: { uesr: @user }
  end
end
