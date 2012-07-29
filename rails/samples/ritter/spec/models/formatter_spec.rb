require 'spec_helper'

describe Formatter do
  
  let(:formatter){Formatter.new}

  context "attributes" do

    subject{formatter}

    it{should respond_to(:identifier)}

  end
end
