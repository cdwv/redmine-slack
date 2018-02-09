module RedmineSlack
  HIDEABLE_CORE_FIELDS = Tracker::CORE_FIELDS - %w(done_ratio parent_issue_id)
  EXTRA_FIELDS = [
    { id: 'total_spent_hours', label: 'label_total_spent_time' },
    { id: 'done_ratio', label: 'field_done_ratio' },
    { id: 'notes', label: 'field_notes' },
    { id: 'priority_id', label: 'field_priority' },
    { id: 'status_id', label: 'field_status' },
    { id: 'tracker_id', label: 'field_tracker' }
  ] 

  def self.custom_field_list
    CustomField.where({:type => 'IssueCustomField'})
  end
end
