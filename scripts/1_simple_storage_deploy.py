from brownie import accounts, config, SimpleStorage


def main():
    account = accounts.add('0x3d1ac01a956135a32be32cc78753eef9e83d656c69d7c149d27ad40556ac2760')
    print(account)
    ss_smart_contract = SimpleStorage.deploy({"from": account})
