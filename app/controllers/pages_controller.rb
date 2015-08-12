class PagesController < HighVoltage::PagesController

  def index
    @pages = HighVoltage.page_ids
  end
=begin
  rescue_from ActiveRecord::RecordNotFound, with: :render_404


  def show
    @page = Page.find_by_slug!(request.path)
  end


  def update

    Page.find_by_slug!(request.path)

    @page = Page.find(params[:id].to_i)

    respond_to do |format|
      if(@page.update(enrollment_params))

        @page.next

        format.html do
          render :edit
          return
        end

        format.json { render :show, status: :created, location: @enrollment }

      else
        format.html { render :edit }
        format.json do
          render json: @enrollment.errors,
                 status: :unprocessable_entity
        end
      end
    end
  end

  private


  # prototyping allow all params through.
  def enrollment_params
    params.require(:user).permit!
  end
=end
end
