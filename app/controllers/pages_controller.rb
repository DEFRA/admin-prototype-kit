# Handles requests to the static pages managed by High voltage
class PagesController < HighVoltage::PagesController
  def index
    @pages = HighVoltage.page_ids
  end

  # Only a prototype so allow all params through.
  def enrollment_params
    params.require(:user).permit!
  end
end
