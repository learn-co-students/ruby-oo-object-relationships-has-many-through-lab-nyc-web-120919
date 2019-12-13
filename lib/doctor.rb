class Doctor

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def appointments
    Appointment.all.select {|appointment| appointment.doctor == self}
    # binding.pry
  end

  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
    # why was the order important?
    # specs make you input patient then date as parameter
    # when i did date, patient it failes
  end

  def patients
    # appointment.patient
    self.appointments.map {|appointment| appointment.patient}
  end

  def self.all
    @@all
  end

end