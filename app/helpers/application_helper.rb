module ApplicationHelper
  def seed_data
    @seed_data ||= Room.all
  end
end
