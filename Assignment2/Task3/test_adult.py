import pytest
from adult import is_adult

def test_age_17():
    assert is_adult(17) == False

def test_age_18():
    assert is_adult(18) == True

def test_negative_age():
    with pytest.raises(ValueError):
        is_adult(-1)