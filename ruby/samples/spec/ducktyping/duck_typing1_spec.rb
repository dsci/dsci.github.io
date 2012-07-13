require "spec_helper"

describe "Duck typing" do

  describe "with our logger class" do

    let(:what_happens){"Prisoner #12345 tried to escape from Alcatraz last night at 3 am."}

    context "and a String as logging target" do

      let(:logger){Logger.new("")}

      it "appends the message to the string" do
        
        logger.append(what_happens)

        logger.log.should == "This happens: #{what_happens}" 

      end

    end

    context "and a file as logging target" do

      let(:logging_file){logger_file}
      let(:logger){Logger.new(open_file(logging_file))}

      it "appends the message to the logger file" do

        logger.append(what_happens)

        open_file(logger.log.path) do |file|
          file.gets.should == "This happens: #{what_happens}"
        end

      end

    end

    context "and an Array as logging target" do

      let(:logger){Logger.new([])}

      it "appends the message to the logger file" do

        logger.append(what_happens)

        logger.log.first.should == "This happens: "
        logger.log.last.should == what_happens

      end

    end

    context "and a custom class as logging target" do

      let(:logger2){Logger2.new(Struct.new(:content))}

      context "which not respond to << " do

        it "appending fails with a TypeError" do

          expect{logger2.append(what_happens)}.to raise_error TypeError, "logger needs <<."

        end

      end

    end

  end

end