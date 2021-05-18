# vegetacao_do_cerrado_mobile
## Telas do aplicativo

<ol> 
    <li>HomeScreen
        <ul>
            <li>
                Tela
                <p>Ao entrar no app, o usuário se depara com um recepção que mostra o nome do aplicativo e um botão para iniciar, conforme imagem abaixo:</p>
                <p align="center">
                    <img src="https://github.com/jacyirice/Guia-de-Campo-Mobile/blob/develop/assets/img/readme/screenshotHome.png?raw=true" height="500" alt="Tela inicial do app"/>
                </p>
            </li>
            <li>
                Estrutura
                <p align="center">
                    <img src="https://github.com/jacyirice/Guia-de-Campo-Mobile/blob/develop/assets/img/readme/structureHome.PNG?raw=true" alt="Estrutura da tela inicial do app"/>
                </p>
                <p>
                    A tela HomeScreen possui os seguintes widgets 
                    <ul>
                        <li>Container - Foi utilizado para armazenar os outros widgets</li>
                        <li>Column - Utilizado para alinhar seus filhos verticalmente</li>
                        <li>Text - Exibe o texto "Vegetação do Cerrado"</li>
                        <li>SizedBox - Separa o Text do ElevatedButton</li>
                        <li>Elevated Button - Utlizado para criar um botao elevado que ao clicar adiciona ao contexto a tela EspeciesScreen</li>
                    </ul>
                </p>
            </li>
        </ul>
    </li>
    <li>EspeciesScreen
        <ul>
            <li>
                Tela
                <p>Ao entrar na tela, o usuário se depara com uma lista de especies contendo a imagem, o nome cientifico e a nomenclatura botânica. Conforme imagem abaixo:</p>
                <p align="center">
                    <img src="https://github.com/jacyirice/Guia-de-Campo-Mobile/blob/develop/assets/img/readme/screenshotEspecies.png?raw=true" height="500" alt="Tela Especies do app"/>
                </p>
            </li>
            <li>
                Estrutura
                <p align="center">
                    <img src="https://github.com/jacyirice/Guia-de-Campo-Mobile/blob/develop/assets/img/readme/structureEspecies.PNG?raw=true" alt="Estrutura da tela especies do app"/>
                </p>
                <p>
                    A tela EspeciesScreen possui os seguintes widgets 
                    <ul>
                        <li>Scaffold - Implementar a estrutura básica de layout visual do material design</li>
                        <li>AppBar - Criar uma barra com o texto "Especies"</li>
                        <li>Padding - Criar um espaçamento</li>
                        <p>Expanded - Utilizado para que o filho prencha o espaço disponivel</p>
                        <li>SingleChildScrollView - Utilizado para caso o dispositivo seja pequeno e a tela não seja totalmente exibida, apareça um scroll</li>
                        <li>Column - Alinhar seus filhos verticalmente</li>
                        <li>GestureDetector - detectar um toque e assim adicionar a tela Especie ao contexto **É feito um laço de repetição para cada especie no arquivo json</li>
                        <li>Container - Armazenar o filho e dar um espaçamento</li>
                        <p>Row - alinha os filhos horizontalmente</p>
                        <li>CircleAvatar - Exibir imagem da especie com bordas circulares</li>
                        <li>SizedBox - Separar a imagem do texto</li>
                        <p>Expanded - preencher o espeço vazio</p>
                        <li>Column - Alinhar seus filhos verticalmente </li>
                        <li>Text - Exibir o nome cientifico da especie</li>
                        <li>Text - Exibir a nomenclatura botanica da especie</li>
                    </ul>
                </p>
            </li>
        </ul>
    </li>
    <li>EspecieScreen
        <ul>
            <li>
                Tela
                <p>Ao exibir a tela, o usuário se depara com a imagem da especie e informações referentes a ela, conforme imagem abaixo:</p>
                <p align="center">
                    <img src="https://github.com/jacyirice/Guia-de-Campo-Mobile/blob/develop/assets/img/readme/screenshotEspecie.png?raw=true" height="500" alt="Tela Especie do app"/>
                </p>
            </li>
            <li>
                Estrutura
                <p align="center">
                    <img src="https://github.com/jacyirice/Guia-de-Campo-Mobile/blob/develop/assets/img/readme/structureEspecie.PNG?raw=true" alt="Estrutura da tela especie do app"/>
                </p>
                <p>
                    A tela EspecieScreen possui os seguintes widgets 
                    <ul>
                        <li>Scaffold - implementar a estrutura básica de layout visual do material design</li>
                        <li>AppBar - Utilizado Criar uma barra com um botão para retornar a tela anterior e um texto com o nome cientifico da especie</li>
                        <li>Padding - Criar um espaçamento</li>
                        <li>SingleChildScrollView - Utilizado para caso o dispositivo seja pequeno e a tela não seja totalmente exibida, apareça um scroll</li>
                        <li>Column - Alinhar seus filhos verticalmente</li>
                        <li>Image - Exibir imagem da especie</li>
                        <li>SizedBox - Separar a imagem do texto</li>
                        <li>Container - Utilizado para armazenar o richText e dar um espaçamento **É feito um laço de repetição para cada informação que irá ser exibida</li>
                        <li>RichText - Utlizado para Armazenar dois spanText sendo um em negrito</li>
                    </ul>
                </p>
            </li>
        </ul>
    </li>
</ol>

## Desenvolvido por
[Jacyiricê Silva Oliveira](https://github.com/jacyirice/)

## Disponivel em 
[GitHub](https://github.com/jacyirice/Guia-de-Campo-Mobile)
