require 'spec_helper'

describe Muregi::Product do
  let(:product) { Muregi::Product.new(name: 'sample', price: 1_000) }

  example do
    expect(product.name).to eq 'sample'
    expect(product.price).to eq 1_000
  end
end
