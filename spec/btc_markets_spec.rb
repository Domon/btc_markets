require 'bigdecimal/util'

RSpec.describe BTCMarkets do
  it "has a version number" do
    expect(BTCMarkets::VERSION).not_to be nil
  end

  describe BTCMarkets::Market do
    describe '.tick' do
      subject(:tick) do
        described_class.tick
      end

      context 'when succeessful', vcr: { cassette_name: 'tick/valid' } do
        it 'returns market summary' do
          expect(tick).to eq(
            {
              best_bid:   '9847.19'.to_d,
              best_ask:   '9850.78'.to_d,
              last_price: '9850.78'.to_d,
              currency:   'AUD',
              instrument: 'BTC',
              timestamp:  1510144148,
              volume24h:  '326.01738'.to_d,
            }
          )
        end
      end
    end
  end
end
