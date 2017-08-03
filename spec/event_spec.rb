require 'event'

describe Event do
  subject(:event) {described_class.new}

  it 'Initialization' do
    expect(event.id).to be_a Integer
    expect(event.tickets).to be_a Array
  end
end
