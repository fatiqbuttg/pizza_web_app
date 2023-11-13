module OrderHelper
    def item_name(line_item)
        "#{line_item.item.name} (#{line_item.size})"
    end

    def format_date(date)
        date.strftime("%B %m,%d %M:%S")
    end
end
