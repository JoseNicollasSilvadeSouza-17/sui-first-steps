module desafio::condicionais {
  use std::debug::print;
  use std::string::utf8;

  const E_MENOR_DE_IDADE: vector<u8> = b"Menor de idade!";
	const E_MENOR_DE_IDADE_CODIGO: u64 = 1;

  fun pratica() {
    let idade: u8 = 18;

    if (idade >= 18) {
      print(&utf8(b"Idade permitida!"));
    } else {
			print(&utf8(&E_MENOR_DE_IDADE));
		}

    assert!(idade >= 18, E_MENOR_DE_IDADE_CODIGO);
  }

  #[test]
  fun teste() {
    pratica();
  }
}
