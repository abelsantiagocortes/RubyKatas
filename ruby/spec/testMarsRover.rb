require './implementation'
describe 'MarsRover' do
  context 'landing' do
    subject! do
      MarsRover.land(landing_position)
    end
    shared_examples "in expected position" do
      it 'lands correctly' do
        expect(MarsRover.landing_position).to eq(expected_landing_position)
      end
    end
    context 'on the 5,5,N landing position' do
      let(:expected_landing_position) { '5,5,N' }
      let(:landing_position) { '5,5,N' }
      include_examples 'in expected position'
    end
    context 'on the 4,4,N landing position' do
      let(:expected_landing_position) { '4,4,N' }
      let(:landing_position) { '4,4,N' }
      include_examples 'in expected position'
    end
  end
  context 'moving' do
    subject! do
      MarsRover.land(landing_position)
      MarsRover.move(command)
    end
    shared_examples "finishes in expected position" do
      let(:landing_position) { '4,4,N' }
      it 'moves correctly' do
        expect(MarsRover.move(command)).to eq(expected_final_position)
      end
    end

    context 'when command is empty' do
      let(:command){''}
      let(:expected_final_position){ '4,4,N' }
      include_examples 'finishes in expected position'
    end

    context 'when receives only M as command' do
      let(:command){'M'}
      let(:expected_final_position){ '4,5,N' }
      include_examples 'finishes in expected position'
    end

    context 'when receives MM as command' do
      let(:command){'MM'}
      let(:expected_final_position){ '4,6,N' }
      include_examples 'finishes in expected position'
    end
  end
end
