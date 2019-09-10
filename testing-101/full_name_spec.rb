require_relative "full_name.rb"

describe '#full_name' do
  it "takes 2 strings as inputs: 'first_name' and 'last_name'" do
    expect(method(:full_name).arity).to eq(2)
  end

  it "returns a string" do
    expect(full_name('aa', 'aa')).to be_a String
  end
  it "returns nil if no arguments is given" do
    expect(full_name("", "")).to be_nil
  end

  it "returns the full name of a given couplefirst_name and last_name" do
    expect(full_name("aurian", "guerard")).to eq "Aurian Guerard"
  end

  it "returns the first name if first_name or last_name is missing" do
    expect(full_name('',"guerard")).to eq "Guerard"
  end
end
