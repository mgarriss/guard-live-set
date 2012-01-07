require 'spec_helper'

require 'fileutils'
require 'guard'
require 'guard/live-set'


describe Guard::LiveSet do 
  describe '#run_on_change(paths)' do
    it 'un-gzips all .als files and file.xml' do
      begin
        skip "someone finish writing this. plz."
        File.exists?('./spec.als').must_equal true
        File.exists?('./spec.xml').must_equal false
        Guard.setup
        Guard::Dsl.evaluate_guardfile(:guardfile => '../lib/guard/live-set/templates/Guardfile')
        Guard.start
        # TODO modify .als here
        File.exists?('./spec.als').must_equal true
        File.exists?('./spec.xml').must_equal true
      ensure
        FileUtils.rm('./spec.xml') rescue nil
      end
    end
  end
end
