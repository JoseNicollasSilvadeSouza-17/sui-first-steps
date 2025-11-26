module desafio::vetores {
  use std::debug::print;
  use std::vector::{length, borrow};

  fun pratica() {
		let mut matriz: vector<vector<u8>> = vector[
			vector[0xfff, 0xeee, 0xddd],
			vector[0xccc, 0xbbb, 0xaaa],
			vector[0x999, 0x888, 0x777]
		];

		let comprimento: u64 = length(&matriz);
		let mut i: u64 = 0;

		while (i < comprimento) {
			let linha: &vector<u64> = borrow(&matriz, i);
			let comprimento_colunas: u64 = length(linha);
			let mut j: u64 = 0;

			while (j < comprimento_colunas) {
				let valor: u64 = *borrow(linha, j);
				print(&valor);
				j = j + 1;
			}
			i = i + 1;
		}
 	}

  #[test]
  fun teste() {
    pratica();
  }
}
