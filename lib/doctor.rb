class Doctor
  attr_reader :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name

    @@all << self
  end

  def new_appointment(name, date)
    Appointment.new(name, self, date)
  end

  def appointments
    Appointment.all.select { |appointment| appointment.doctor == self }#.map { |song| song.name}
  end

  def patients
    appointments.map { |appointment| appointment.patient}
  end
end
