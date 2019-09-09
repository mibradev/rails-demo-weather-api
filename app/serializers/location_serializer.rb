class LocationSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :recordings

  attribute :current do
    last_recording = object.recordings.last

    {
      temperature: last_recording.temperature,
      status: last_recording.status
    }
  end
end
