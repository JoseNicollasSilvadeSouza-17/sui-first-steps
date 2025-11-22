module desafio::tipos_primitivos {
  use std::debug::print;

	const ANO_DE_NASCIMENTO: u16 = 0x7d7; // Valor em decimal: 2007

  fun pratica() {
		let minha_idade: u8 = 0x12; // Valor em decimal: 18

	 	print(&ANO_DE_NASCIMENTO); // Resultado: [debug] 2007
	 	print(&minha_idade); // Resultado: [debug] 18

		let idade_u16: u16 = (minha_idade as u16);

		let diferenca_idade: bool = ANO_DE_NASCIMENTO == idade_u16; // false
		let ano_de_nascimento_maior_que: bool = ANO_DE_NASCIMENTO > idade_u16; // true
		let comparacao: bool = diferenca_idade && ano_de_nascimento_maior_que; // false

		print(&comparacao); // Resultado: [debug] false
  }

  #[test]
  fun teste() {
    pratica();
  }
}