class RecordingSerializer < ActiveModel::Serializer
  attributes :id, :temperature, :status

  belongs_to :location
end
