require'bike.rb'
describe Bike do
    
    it { should respond_to()}
    
    
 it 'can be reported broken' do
   subject.report_broken
   expect(subject).to be_broken
 end
 
end