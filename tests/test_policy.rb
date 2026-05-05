require 'minitest/autorun'
require 'policy'

class PolicyTest < Minitest::Test
  def test_fixture_decisions
    signal_case_1 = DriftParseIniLab::Signal.new(demand: 69, capacity: 92, latency: 10, risk: 25, weight: 7)
    assert_equal 78, DriftParseIniLab.score(signal_case_1)
    assert_equal 'review', DriftParseIniLab.classify(signal_case_1)
    signal_case_2 = DriftParseIniLab::Signal.new(demand: 75, capacity: 91, latency: 14, risk: 13, weight: 5)
    assert_equal 141, DriftParseIniLab.score(signal_case_2)
    assert_equal 'review', DriftParseIniLab.classify(signal_case_2)
    signal_case_3 = DriftParseIniLab::Signal.new(demand: 89, capacity: 105, latency: 24, risk: 24, weight: 6)
    assert_equal 91, DriftParseIniLab.score(signal_case_3)
    assert_equal 'review', DriftParseIniLab.classify(signal_case_3)
  end
end
