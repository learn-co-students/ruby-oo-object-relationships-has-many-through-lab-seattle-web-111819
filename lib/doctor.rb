class Doctor
    attr_accessor :name 

    @@all = []

    def initialize(name)
        @name = name 
        @@all << self 
    end 

    def self.all
        @@all
    end 

    #new_appointment, that takes in a an instance of the 
    #Patient class and a date, and creates a new Appointment. 
    #That Appointment should know that it belongs to the doctor
    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end 

    #appointments, that iterates through all \
    #Appointments and finds those belonging to this doctor.
    def appointments
        Appointment.all.select{|appointment| appointment.doctor == self}
    end 

    #patients, that iterates over that doctor's Appointments 
    #and collects the patient that belongs to each Appointments.
    def patients
        self.appointments.map{|app| app.patient}.uniq 
    end 
end 