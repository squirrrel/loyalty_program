class PointsExpirer
  class << self
    def expire date
      year_ago_from_date = (Time.parse(date) - 1.year).strftime('%d/%m/%Y')
      
      target_record = PointLineItem.where(created_at: year_ago_from_date).first
      
      if target_record && target_record.points > 0
        points = calculate_actual_points(target_record)
        create_expiry_record(points, target_record, date) unless points < 0
      end    
    end

    private

    def create_expiry_record points, target_record, date
      PointLineItem.create(
        points: -points, 
        source: "Points ##{target_record.id} expired",
        created_at: date,
        user_id: target_record.user_id
      )
    end

    def calculate_actual_points target_record
      anterior_items_points = 
        PointLineItem.all.map do |item| 
          item.points  if Time.parse(item.created_at) <= Time.parse(target_record.created_at) 
        end.compact.inject(:+)

      next_record = PointLineItem.where("id > ?", target_record.id).first
        
      next_record.points + anterior_items_points
    end
  end
end