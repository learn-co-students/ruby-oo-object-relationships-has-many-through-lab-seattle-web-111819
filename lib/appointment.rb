class Appointment #join
    attr_accessor :doctor, :patient, :date #order in README doesn't match the spec.rb!, "appointments" test order is "date, patient, doctor"
    @@all = []

    def initialize(doctor, patient, date)
        @doctor = doctor
        @patient = patient
        @date = date
        @@all << self
    end

    def self.all
        @@all
    end
end