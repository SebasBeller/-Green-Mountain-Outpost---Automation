require 'capybara/dsl'
require 'rspec/expectations'
class Form
    include RSpec::Matchers
    include Capybara::DSL
	@data

    def fill_field(identifier, type, value)
        case type
        when "input"
          fill_in identifier, with: value
        when "combo_box"
          select value, from: identifier
        else
          raise ArgumentError, "Unsupported field type: #{type}"
        end
    end

    def fill_in_fields(table,fields)
        table = table.raw 
        index=0
        table.each do |row|
            field_name, field_value = row
            if fields.has_key?(field_name) 
                identifier=fields[field_name]["id"]
                type=fields[field_name]["type"]
                fill_field(identifier, type, field_value)
                index+=1
                end
        end
    end

    def compare_fields_with_table(table,start_row,columns,path_table)
        table = table.raw 
        table.each do |row|
            field_name, field_value = row
            if columns.has_key?(field_name) 
                xpath = path_table % [start_row, columns[field_name]]
                element = find(:xpath, xpath)
                data = element.text.empty? ? element.value : element.text
                expect(data).to eq(field_value)
                start_row += 1
            end
        end
    end
end
