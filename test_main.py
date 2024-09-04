from main import add_two_nums


def test_add_two_nums():
    assert add_two_nums(1, 2) == 3
    assert add_two_nums(-1, 2) == 1


if __name__ == "__main__":
    test_add_two_nums()
