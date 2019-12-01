class Patient

  attr_accessor :name
  @@all =[]

  def initialize(name)
    @name = name
    @@all << self
  end

  
  def self.all
    @@all
  end

  def appointments
    Appointment.all.select {|apt|apt.patient == self}
  end

  def doctors
    appointments.map {|apt|apt.doctor}
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end
end