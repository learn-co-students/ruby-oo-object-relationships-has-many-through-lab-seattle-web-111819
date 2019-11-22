class Patient  

    @@all = []

    attr_accessor :name 

    def initialize(name) 
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select do |apt|
            apt.patient == self   
        end
    end

    def new_appointment(doctor, date) 
        Appointment.new(self, doctor, date)
    end

    def doctors
        appointments.map { |apt| apt.doctor } 
    end



    
end