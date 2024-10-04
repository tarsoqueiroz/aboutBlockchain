# Web3 Week

Aprenda em uma semana como programar aplicações para blockchain e torne-se um programador Web3 desejado.

> [Github](https://github.com/luiztools-cursos/web3-week-5)

- Senha 1: `SMARTCONTRACT`
- Senha 2: `BLOCKCHAIN`
- Senha 3: `JAVASCRIPT`

## Criando o contrato BetCandidate

Iniciando o contrato

```sol
//SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

contract BetCandidate {

}
```

Constructor

```sol
//SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

contract BetCandidate {

    constructor() {
        
    }

}
```

Criador do contrato

```sol
//SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

contract BetCandidate {

    address owner;

    constructor() {
        owner = msg.sender; // Quem disparou o contrato    
    }

}
```

fee = Taxa da casa de aposta.

```sol
//SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

contract BetCandidate {

    address owner;
    uint fee = 10; // percentual

    constructor() {
        owner = msg.sender; // Quem disparou o contrato    
    }

}
```

Estrutura de dados.

```sol
//SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

struct Dispute {
    string candidate1;
    string candidate2;
    string image1;
    string image2;
    uint total1;
    uint total2;
    uint winner;
}

contract BetCandidate {

    Dispute public dispute;

    address owner;
    uint fee = 10; // percentual

    constructor() {
        owner = msg.sender; // Quem disparou o contrato

        dispute = Dispute({
            candidate1: "Donald Trump",
            candidate2: "Kamala Harris",
            image1: "https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/Donald_Trump_official_portrait.jpg/330px-Donald_Trump_official_portrait.jpg",
            image2: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/41/Kamala_Harris_Vice_Presidential_Portrait.jpg/345px-Kamala_Harris_Vice_Presidential_Portrait.jpg",
            total1: 0,
            total2: 0,
            winner: 0
        });
    }

}
```

Verificar se no `Remix` a versão do compilador é a `0.8.26`, e clicar em `Compile` para verificar se está OK.

Em `Deploy` verificar:

- `Environment`: `Remix VM (Cancun)`
- `CONTRACT`: `BetCandidate`

Clicar então em `Deploy`.

Na parte inferior em `Deployed` teremos o contrato disponível e expandindo deverá aparecer um botão com `dispute`, que é a única função pública diponibilizada pelo contrato até aqui. Clicando nele teremos as informações que inicializamos em nosso contrato.

## Criando a função de aposta

Criando a função para fazer aposta.

```sol
//SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

struct Bet {
    uint amount;
    uint candidate;
    uint timestamp;
    uint claimed;
}

struct Dispute {
    string candidate1;
    string candidate2;
    string image1;
    string image2;
    uint total1;
    uint total2;
    uint winner;
}

contract BetCandidate {

    Dispute public dispute;
    mapping(address => Bet) public allBets;

    address owner;
    uint fee = 10; // percentual

    constructor() {
        owner = msg.sender; // Quem disparou o contrato

        dispute = Dispute({
            candidate1: "Donald Trump",
            candidate2: "Kamala Harris",
            image1: "https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/Donald_Trump_official_portrait.jpg/330px-Donald_Trump_official_portrait.jpg",
            image2: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/41/Kamala_Harris_Vice_Presidential_Portrait.jpg/345px-Kamala_Harris_Vice_Presidential_Portrait.jpg",
            total1: 0,
            total2: 0,
            winner: 0
        });
    }

    function bet (uint candidate) external payable {
        require(candidate == 1 || candidate == 2, "Invalid candidate");
        require(msg.value > 0, "Invalid bet");
        require(dispute.winner == 0, "Dispute closed");

        Bet memory newBet;
        newBet.amount = msg.value;
        newBet.candidate = candidate;
        newBet.timestamp = block.timestamp;

        allBets[msg.sender] = newBet;

        if(candidate == 1)
            dispute.total1 += msg.value;
        else
            dispute.total2 += msg.value;
    }

}
```

Executar então o `Compile` e depois o `Deploy` do contrato. 

> Pode excluir o deploy anterior para não confundir.

Expandindo o contrato `Deployed` temos disponível outras funcionalidades que inserimos em nosso contrato.

Selecione outra conta e em `VALUE` insira o valor que será apostado (gasto) nessa aposta (ex. 1000 WEI). 

Primeiro faça uma aposta (`bet`) inserindo um valor de candidato diferente de 1 ou 2 para observar a mensagem de erro.

Insira novamente o valor 1000 WEI em `VALUE` e faça uma aposta no candidato 1.

Clicando em `dispute` deve-se verificar o incremento no campo `total1`.

Colocando o endereço da conta que apostou no campo `address` de `allBets` e clicando neste, verifica-se os dados da referida aposta.

## Criando a função de finalização da aposta

```sol
//SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

struct Bet {
    uint amount;
    uint candidate;
    uint timestamp;
    uint claimed;
}

struct Dispute {
    string candidate1;
    string candidate2;
    string image1;
    string image2;
    uint total1;
    uint total2;
    uint winner;
}

contract BetCandidate {

    Dispute public dispute;
    mapping(address => Bet) public allBets;

    address owner;
    uint fee = 1000; // percentual 10% (escala de 4 zeros)
    uint public netPrize;

    constructor() {
        owner = msg.sender; // Quem disparou o contrato

        dispute = Dispute({
            candidate1: "Donald Trump",
            candidate2: "Kamala Harris",
            image1: "https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/Donald_Trump_official_portrait.jpg/330px-Donald_Trump_official_portrait.jpg",
            image2: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/41/Kamala_Harris_Vice_Presidential_Portrait.jpg/345px-Kamala_Harris_Vice_Presidential_Portrait.jpg",
            total1: 0,
            total2: 0,
            winner: 0
        });
    }

    function bet (uint candidate) external payable {
        require(candidate == 1 || candidate == 2, "Invalid candidate");
        require(msg.value > 0, "Invalid bet");
        require(dispute.winner == 0, "Dispute closed");

        Bet memory newBet;
        newBet.amount = msg.value;
        newBet.candidate = candidate;
        newBet.timestamp = block.timestamp;

        allBets[msg.sender] = newBet;

        if(candidate == 1)
            dispute.total1 += msg.value;
        else
            dispute.total2 += msg.value;
    }

    function finish(uint winner) external {
        require(msg.sender == owner, "Invalid account");
        require(winner == 1 || winner == 2, "Invalid candidate");
        require(dispute.winner == 0, "Dispute closed");

        dispute.winner = winner;

        uint grossPrize = dispute.total1 + dispute.total2;
        uint commission = (grossPrize * fee) / 1e4;

        netPrize = grossPrize - commission;

        payable(owner).transfer(commission);
    }

}
```

Faça algumas apostas como no teste da função anterior.

Execute então a função `finish` com uma conta diferente da que criou o contrato para verificar a mensagem de erro.

Execute com a conta que criou o contrato mas coloque um candidato vencedor diferente de 1 ou 2, e verifique a mensagem de erro.

Finalmente, execute a função `finish` com a conta criadora do contrato e informe um dos dois candidatos válidos (1 ou 2). Verifique em `netPrize` que o valor deve corresponder a somatória dos dois candidados descontado da commissão para o owner do contrato. Em `dispute` deverá estar ajustado o valor de `winner` para o vencedor informado.

Caso tente executar a função `finish` novamente, uma mensagem de erro deverá aparecer pois a disputa já havia sido encerrada.

## Criando a função de reclama o prêmio das apostas

```sol
//SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

struct Bet {
    uint amount;
    uint candidate;
    uint timestamp;
    uint claimed;
}

struct Dispute {
    string candidate1;
    string candidate2;
    string image1;
    string image2;
    uint total1;
    uint total2;
    uint winner;
}

contract BetCandidate {

    Dispute public dispute;
    mapping(address => Bet) public allBets;

    address owner;
    uint fee = 1000; // percentual 10% (escala de 4 zeros)
    uint public netPrize;

    constructor() {
        owner = msg.sender; // Quem disparou o contrato

        dispute = Dispute({
            candidate1: "Donald Trump",
            candidate2: "Kamala Harris",
            image1: "https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/Donald_Trump_official_portrait.jpg/330px-Donald_Trump_official_portrait.jpg",
            image2: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/41/Kamala_Harris_Vice_Presidential_Portrait.jpg/345px-Kamala_Harris_Vice_Presidential_Portrait.jpg",
            total1: 0,
            total2: 0,
            winner: 0
        });
    }

    function bet (uint candidate) external payable {
        require(candidate == 1 || candidate == 2, "Invalid candidate");
        require(msg.value > 0, "Invalid bet");
        require(dispute.winner == 0, "Dispute closed");

        Bet memory newBet;
        newBet.amount = msg.value;
        newBet.candidate = candidate;
        newBet.timestamp = block.timestamp;

        allBets[msg.sender] = newBet;

        if(candidate == 1)
            dispute.total1 += msg.value;
        else
            dispute.total2 += msg.value;
    }

    function finish(uint winner) external {
        require(msg.sender == owner, "Invalid account");
        require(winner == 1 || winner == 2, "Invalid candidate");
        require(dispute.winner == 0, "Dispute closed");

        dispute.winner = winner;

        uint grossPrize = dispute.total1 + dispute.total2;
        uint commission = (grossPrize * fee) / 1e4;

        netPrize = grossPrize - commission;

        payable(owner).transfer(commission);
    }

    function claim() external {
        Bet memory userBet = allBets[msg.sender]; // recupera a aposta do reclamante
        require(dispute.winner > 0 && dispute.winner == userBet.candidate && userBet.claimed == 0, "Invalid claim");

        uint winnerAmmount = dispute.winner == 1 ? dispute.total1 : dispute.total2;
        uint ratio = (userBet.amount * 1e4) / winnerAmmount;
        uint individualPrize = netPrize * ratio / 1e4;

        allBets[msg.sender].claimed = individualPrize;
        payable(msg.sender).transfer(individualPrize);
    }

}
```

Faça algumas apostas e verifique como anteriormente executado.

Faça o encerramento da aposta e verifique como anteriormente executado.

Faça a reclamação das apostas usando as diferentes contas e verifique:

- Em `netPrize` para ver o montante que será distribuído aos vencedores;
- No `claim` se foi com sucesso (apostou no candidato vencedor) ou não;
- Em `allBets` para cada conta de apostador, se o valor em `claimed` corresponde ao percentual segundo o taxa correpondente da aposta feita pelo total apostado no vencedor.

## Desafios para Smartcontract

- não permitir apostar depois de uma data x;
- não sacar comissão no finish, mas sim em uma função separada;
- não permitir mais de uma aposta por pessoa;
- somente permitir finalizar depois de uma data x;
- estudar constant, immutable e decidir onde usar nas variáveis do contrato;
- contabilizar total de apostadores em cada candidato;
- funções administrativas para permitir trocar foto e nome dos candidatos.

## Polygon

Usar a rede de testes da Polygon:

**Testnet**: `https://amoy.polygonscan.com/`

- Network Name: POLYGON AMOY TESTNET
- RPC URL: https://rpc-amoy.polygon.technology/
- Chain ID: 80002
- Currency Symbol: POL
- Block Explorer URL: https://www.oklink.com/amoy

**Produção**: `https://polygonscan.com/`

- Network Name: Polygon Mainnet
- RPC URL: https://polygon-rpc.com/
- Chain ID: 137
- Currency Symbol: MATIC
- Block Explorer URL: https://polygonscan.com/

## Contrato na Testnet

- BetCandidate: `0x9F22C5A67A16e2dc1A7f23B85DEdb919322E680d`
- Account: `0x3dd9191B08aCE5842B9d2E01E775B7Ef360dDb7F`

## Dapp

...em 24min da aula 2

## Desafios para o Dapp

- configurar MetaMask para outra rede, obter moedas dela e fazer deploy lá;
- fazer verificação do contrato no block explorer;
- fazer uma página Sobre explicando as regras da disputa;
- ajustar tela de bet de acordo com mudanças dos desafios 1;
- colocar imagens nos botões de aposta e outras customizações menores de front;

## Fechando app
