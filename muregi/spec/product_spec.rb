require 'spec_helper'

describe Product do
  let(:product) { Product.new(name: 'sample', price: 1_000) }

  example do
    expect(product.name).to eq 'sample'
    expect(product.price).to eq 1_000
  end
end
