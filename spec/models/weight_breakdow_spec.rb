describe weight_breakdown
  describe '#weights' do
    let (:weight) { 135 }
    let (:results) { {45: 2} }
    
    it do
      expect(weight_breakdown.convert).to eq(results)
    end
  end
end
