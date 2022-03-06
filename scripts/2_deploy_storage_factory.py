from brownie import accounts, config, StorageFactory


def main():
    account = accounts.add('0x3d1ac01a956135a32be32cc78753eef9e83d656c69d7c149d27ad40556ac2760')
    print(account)
    sf_smart_contract = StorageFactory.deploy({"from": account})
