require_relative "../../lib/airplane"

describe Airplane do
  let(:airplane) { Airplane.new('cesna', 10, 150) }

  describe "#initialization" do
    it 'takes type, wingloading, and horsepower as arguments' do

    expect(airplane).to be_a(Airplane)
    expect(airplane.type).to eq('cesna')
    expect(airplane.wingloading).to eq(10)
    expect(airplane.horsepower).to eq(150)
    end
  end

  describe "#start" do
    it 'turns on the engine if it is not already running' do
      expect(airplane.start).to eq('engine started')
    end
    it 'returns whether the engine was just started or if it has already been running' do
      airplane.start
      expect(airplane.start).to eq('engine is already running')
    end
  end

  describe "#takeoff" do
    it 'checks if the engine is on' do
      airplane.start
      expect(airplane.takeoff).to eq("Alright, here we go!")
    end
    it 'tells you to start the engine if it is off' do
      expect(airplane.takeoff).to eq("The engine is not turned on. Please start the engine and retry.")
    end
  end

  describe "#land" do
    it 'lands the plane if the plane is flying' do
      airplane.start
      airplane.takeoff
      expect(airplane.land).to eq("Please return your trays to their upright and locked position, the plane will be landing soon.")
    end
    it 'reminds the pilot that they have not left the ground yet if they have not taken off' do
      airplane.start
      expect(airplane.land).to eq("We haven't taken off yet, we're still on the ground!")
    end
    it 'checks to see if the ingine is on, if the plane is not flying' do
      expect(airplane.land).to eq("The engine is not turned on. Please start the engine and retry.")
    end
  end

end
