require 'minitest/autorun'
require 'minitest/power_assert'
require 'idobadge'

class TestIdobadge < MiniTest::Test
  def test_success
    assert { Idobadge.success('success') == '<span class="label label-success"><i class="fa fa-sun-o"></i> <span class="label label-inverse">success</span></span>' }
  end

  def test_warning
    assert { Idobadge.warning('warning') == '<span class="label label-warning"><i class="fa fa-umbrella"></i> <span class="label label-inverse">warning</span></span>' }
  end

  def test_important
    assert { Idobadge.important('important') == '<span class="label label-important"><i class="fa fa-bomb"></i> <span class="label label-inverse">important</span></span>' }
  end

  def test_failure
    assert { Idobadge.failure('failure') == '<span class="label label-important"><i class="fa fa-bomb"></i> <span class="label label-inverse">failure</span></span>' }
  end

  def test_customize_icon
    assert { Idobadge.success('success', icon: 'thumbs-o-up') == '<span class="label label-success"><i class="fa fa-thumbs-o-up"></i> <span class="label label-inverse">success</span></span>' }
  end

  def test_no_icon
    assert { Idobadge.success('success', icon: nil) == '<span class="label label-success"><span class="label label-inverse">success</span></span>' }
  end
end
