class Appointment

  attr_reader :patient, :doctor, :date

  @@all = []

  def initialize(patient ="", doctor = "", date = "")
    @patient = patient
    @doctor = doctor
    @date = date
    doctor.add_appointment(self) 
    @@all << self
  end

  def self.all
    @@all
  end

  def patients
    self.patient
  end

  def doctors
    self.doctor
  end

end
