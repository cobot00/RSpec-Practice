#-*- coding: utf-8 -*-
require 'spec_helper'

describe StringUtils do
  before do
    @target = StringUtils.new
  end
  it '"abcde" include "b"' do
    expect(@target.include?('abcde', 'b')).to eq true
  end
  it '"abcde" not include "f"' do
    expect(@target.include?('abcde', 'f')).to eq false
  end
  it 'concat [a,b2,c34] giving "ab2c34"' do
    expect(@target.concat(['a', 'b2', 'c34'])).to eq 'ab2c34'
  end
  it 'concat [x] giving "x"' do
    expect(@target.concat(['x'])).to eq 'x'
  end
  it 'clone [x, y, z] giving new [x, y, z]' do
    words = ['x', 'y', 'z']
    actual = @target.clone(words)
    expect(actual).to eq words
    expect(words.equal?(actual)).to eq false
  end

end