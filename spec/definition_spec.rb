require('rspec')
require('word')
require('definition')
require('word')

describe('Definition') do
  before() do
    Definition.clear()
  end

  describe('.clear') do
    it("is empty at first") do
      expect(Definition.clear()).to(eq([]))
    end
  end

  describe('#save') do
    it("saves a definition") do
      definition = Definition.new("a saucy hamburger")
      definition.save()
      expect(Definition.all()).to(eq([definition]))
    end
  end

  describe('.all') do
    it("shows all definitions") do
      definition = Definition.new("a cheesy pizza")
      definition.save()
      expect(Definition.all()).to(eq([definition]))
    end
  end

  describe('#get_definition') do
    it("gets input definition") do
      definition = Definition.new("a cheesy pizza")
      definition.save()
      expect(definition.get_definition()).to(eq("a cheesy pizza"))
    end
  end
end
