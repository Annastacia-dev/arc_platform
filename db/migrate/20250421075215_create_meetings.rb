class CreateMeetings < ActiveRecord::Migration[7.2]
  def change
    create_table :meetings do |t|
      t.references :chapter, null: false, foreign_key: true
      t.integer :meeting_type, default: 0, null: false
      t.string :topic, null: false
      t.text :description
      t.string :speaker, null: false
      t.references :user, null: false, foreign_key: true
      t.datetime :start_date
      t.datetime :end_date
      t.string :venue
      t.string :venue_map
      t.boolean :is_panel, default: false
      t.string :panel_members, array: true, default: []
      t.boolean :is_chapter_member, default: false
      t.boolean :is_organization_member, default: false
      t.integer :status
      t.integer :location, default: 0, null: false
      t.string :meeting_link

      t.timestamps
    end
  end
end
