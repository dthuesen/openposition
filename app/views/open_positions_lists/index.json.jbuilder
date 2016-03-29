json.array!(@open_positions_lists) do |open_positions_list|
  json.extract! open_positions_list, :id, :number, :summary, :description, :option, :component, :category, :prio, :responsible, :state, :costmodel, :affects_version, :issue_ticket, :ticket_text, :notes, :in_sprint
  json.url open_positions_list_url(open_positions_list, format: :json)
end
