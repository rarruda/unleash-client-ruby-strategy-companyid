require 'unleash/context'

RSpec.describe Unleash::Strategy::CompanyId do
  it 'has a version number' do
    expect(Unleash::Strategy::CompanyId::VERSION).not_to be nil
  end


  describe '#is_enabled?' do
    let(:strategy) { Unleash::Strategy::CompanyId.new }
    let(:unleash_context) { Unleash::Context.new({ properties: { 'companyId' => 'acme' } }) }

    it 'should be enabled with correct params/context as str' do
      expect(strategy.is_enabled?({ 'companyIds' => 'acme,initech,hooli' }, unleash_context)).to be_truthy
    end

    it 'should be enabled with correct params/context as sym' do
      unleash_context2 = Unleash::Context.new({ properties: { companyId: 'initech' } })
      expect(strategy.is_enabled?({ 'companyIds' => 'acme,initech,hooli' }, unleash_context2)).to be_truthy
    end

    it 'should not be enabled with wrong params/context' do
      unleash_context2 = Unleash::Context.new({ properties: {  'companyId' => 'umbrelacorp' } })
      expect(strategy.is_enabled?({ 'companyIds' => 'acme,initech,hooli' }, unleash_context2)).to be_falsey
    end
  end
end
