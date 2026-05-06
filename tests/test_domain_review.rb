require 'minitest/autorun'
require 'domain_review'

class DomainReviewTest < Minitest::Test
  def test_domain_lane
    item = DriftParseIniLab::DomainReview.new(signal: 64, slack: 44, drag: 18, confidence: 86)
    assert_equal 204, DriftParseIniLab.domain_review_score(item)
    assert_equal "ship", DriftParseIniLab.domain_review_lane(item)
  end
end
