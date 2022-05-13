require './lib/turn'
require './lib/card'

  RSpec.describe Turn do
    it "has a card" do
      card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
      turn = Turn.new("Juneau", card)

      expect(turn.card).to eq(card)
    end

    it "has a guess" do
      card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
      turn = Turn.new("Juneau", card)

      expect(turn.guess).to eq("Juneau")
    end

      it "is correct?" do
        card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        turn = Turn.new("Juneau", card)

      expect(turn.correct?).to eq(true)

    end

      it "is not correct?" do
        card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        turn = Turn.new("Phoenix", card)

      expect(turn.correct?).to eq(false)
    end


      it "gives feedback to correct answer" do
        @card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        @turn = Turn.new("Juneau", @card)

      expect(@turn.feedback).to eq("Correct!")
    end

      it "gives feedback to incorrect answer" do
        @card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        @turn = Turn.new("Phoenix", @card)

      expect(@turn.feedback2).to eq("Incorrect.")
    end

      it "has a card" do
        @card = Card.new("Which planet is closest to the sun?", "Mercury", :STEM)
        @turn = Turn.new("Saturn", @card)

      expect(@turn.card).to eq(@card)
    end

      it "has an incorrect guess" do
        @card = Card.new("Which planet is closest to the sun?", "Mercury", :STEM)
        @turn = Turn.new("Saturn", @card)

        expect(@turn.guess).to eq("Saturn")
    end

      it "is not correct?" do
        @card = Card.new("Which planet is closest to the sun?", "Mercury", :STEM)
        @turn = Turn.new("Saturn", @card)

        expect(@turn.correct?).to eq(false)
      end

      it "gives feedback to incorrect answer" do
        @card = Card.new("Which planet is closest to the sun?", "Mercury", :STEM)
        @turn = Turn.new("Saturn", @card)

      expect(@turn.feedback2).to eq("Incorrect.")
    end

  end
