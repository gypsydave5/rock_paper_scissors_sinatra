require 'game'

describe Game do
  let(:player1) {double :player1, name: "Stephen", pick: nil}
  let(:player2) {double :player1, name: "Enrique", pick: nil}
  let(:game){Game.new(player1, player2)}

  it "has two players" do
    expect(game.players).to eq [player1, player2]
  end

  context 'when playing' do

    it 'player one picks rock, player two picks scissors, player 1 wins' do
      allow(player1).to receive(:pick).and_return("Rock")
      allow(player2).to receive(:pick).and_return("Scissors")
      expect(game.winner).to eq player1
    end

    it 'player one picks paper, player two picks scissors, player 2 wins' do
      allow(player1).to receive(:pick).and_return("Paper")
      allow(player2).to receive(:pick).and_return("Scissors")
      expect(game.winner).to eq player2
    end

    it "player one picks paper, player two picks rock, player 1 wins" do
      allow(player1).to receive(:pick).and_return("Paper")
      allow(player2).to receive(:pick).and_return("Rock")
      expect(game.winner).to eq player1
    end

    it 'player one picks Sinatra, player two picks Deano, player 1 wins' do
      allow(player1).to receive(:pick).and_return("Sinatra")
      allow(player2).to receive(:pick).and_return("Deano")
      expect(game.winner).to eq player1
    end

    it 'player one picks Sinatra, player two picks scissors, player 2 wins' do
      allow(player1).to receive(:pick).and_return("Sinatra")
      allow(player2).to receive(:pick).and_return("Scissors")
      expect(game.winner).to eq player2
    end

    it "player one picks paper, player two picks Deano, player 1 wins" do
      allow(player1).to receive(:pick).and_return("Paper")
      allow(player2).to receive(:pick).and_return("Deano")
      expect(game.winner).to eq player1
    end

    context 'is a draw' do

      it "when both players pick paper" do
        allow(player1).to receive(:pick).and_return("Paper")
        allow(player2).to receive(:pick).and_return("Paper")
        expect(game.winner).to eq "Draw"
      end

      it "when both players pick rock" do
        allow(player1).to receive(:pick).and_return("Rock")
        allow(player2).to receive(:pick).and_return("Rock")
        expect(game.winner).to eq "Draw"
      end

      it "when both players pick scissors" do
        allow(player1).to receive(:pick).and_return("Scissors")
        allow(player2).to receive(:pick).and_return("Scissors")
        expect(game.winner).to eq "Draw"
      end

      it "when both players pick Sinatra" do
        allow(player1).to receive(:pick).and_return("Sinatra")
        allow(player2).to receive(:pick).and_return("Sinatra")
        expect(game.winner).to eq "Draw"
      end

      it "when both players pick Deano" do
        allow(player1).to receive(:pick).and_return("Deano")
        allow(player2).to receive(:pick).and_return("Deano")
        expect(game.winner).to eq "Draw"
      end
    end

  end

end