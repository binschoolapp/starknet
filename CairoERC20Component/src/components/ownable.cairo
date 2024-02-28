use starknet::ContractAddress;

#[starknet::interface]
trait TransferTrait<TContractState> {
    fn owner(self: @TContractState) -> ContractAddress;
    fn transfer_ownership(ref self: TContractState, new_owner: ContractAddress);
}

#[starknet::component]
mod ownable {
    use starknet::ContractAddress;
    #[storage]
    struct Storage {
        owner: ContractAddress,
    }

    #[embeddable_as(Transfer)]
    impl TransferImpl<
        TContractState, +HasComponent<TContractState>
    > of super::TransferTrait<ComponentState<TContractState>> {
        fn owner(self: @ComponentState<TContractState>) -> ContractAddress {
            self.owner.read()
        }

        fn transfer_ownership(
            ref self: ComponentState<TContractState>, new_owner: ContractAddress
        ) {
            self.validate_ownership();
            self.owner.write(new_owner);
        }
    }

    #[generate_trait]
    impl OwnableHelperImpl<
        TContractState, +HasComponent<TContractState>
    > of OwnableHelperTrait<TContractState> {
        fn init_ownable(ref self: ComponentState<TContractState>, owner: ContractAddress) {
            self.owner.write(owner);
        }
        fn validate_ownership(self: @ComponentState<TContractState>) {
            assert(self.owner.read() == starknet::get_caller_address(), 'Wrong owner.');
        }
    }
}
