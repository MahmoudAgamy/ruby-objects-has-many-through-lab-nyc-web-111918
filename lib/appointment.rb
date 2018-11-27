class Appointment

  attr_reader :doctor, :date, :patient, :patient
  # attr_accessor

  @@all = []

  def self.all
    @@all
  end

  def initialize(patient, doctor, date)
    @patient = patient
    @doctor = doctor
    @date = date

    @@all << self
  end

end
