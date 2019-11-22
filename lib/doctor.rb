class Doctor  

    @@all = []

    attr_accessor :name 

    def initialize(name) 
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    #returns all appointments associated with this Doctor

    def appointments
        Appointment.all.select do |apt|
            apt.doctor == self  
        end
    end

    def new_appointment(patient, date) 
        Appointment.new(patient, self, date)  
    end

    #has many patients, through appointments

    def patients
        appointments.map { |apt| apt.patient }
    end
    
    # def patients
    #     b = Appointment.all.select do |apt|
    #         apt.doctor == self  
    #     end
    #     #binding.pry
    #     b.map { |apt| apt.patient }
        
    #   end



    
end