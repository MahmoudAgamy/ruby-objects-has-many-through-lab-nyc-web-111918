class Patient
  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name

    @@all << self
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select { |appointment| appointment.patient == self }#.map { |song| song.name}
  end

  def doctors
    appointments.map { |appointment| appointment.doctor }.uniq
  end

end
