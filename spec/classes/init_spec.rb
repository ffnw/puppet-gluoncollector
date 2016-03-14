require 'spec_helper'
describe 'gluoncollector' do

  context 'with defaults for all parameters' do
    it { should contain_class('gluoncollector') }
  end
end
