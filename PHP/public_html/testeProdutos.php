<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Prime Barber | Produtos </title>
    <style>
        *{margin: 0;padding: 0;box-sizing: border-box;font-family: Arial, Helvetica, sans-serif;}
        body{
            background-color: #1c1c1c;
        }
        .container{
            flex-direction: column;
            background-color: #1c1c1c;
            margin: 0px 0px 30px 30px;
            display: flex;
            height: fit-content;
            width: 95%;
            border: 1px solid #c18845;
        }
        .titulo-container{
            background-color: #c18845;
            width: 100%;
            height: 65px;
            padding: 11px;
            display: flex;
            font-size: 25px;
            color: #fff;
            justify-content: center;
            text-align: center;
            font-weight: 700;
        }
        .grupo-produtos{
            justify-content: space-around;
            display: flex;
            align-items: center;
            flex-wrap: wrap;
        }
        .caixa-produto{
            margin: 15px;
            width: 285px;
            height: fit-content;
            padding: 10px;
            display: flex;
            align-items: center;
            flex-direction: column;
        }
        .titulo-produto{
            text-shadow: 2px 2px black;
            text-align: center;
            font-size: 12px;
            margin: 5px;
            color: #ddd;
        }
        .imagem-produto{
            justify-content: center;
            align-items: center;
            margin: 10px 5px 5px 5px;
        }
        .descricao-produto{
            margin: 2px;
            display: flex;
            flex-direction: column;
            font-size: 10px;
            color: #ddd;
        }
        .acao-produto{
            display: flex;
            width: 100%;
        }
        .acao-produto button{
            cursor: pointer;
            box-shadow: 1px 1px white;
            margin: 15px;
            background-color: green;
            padding: 15px;
            border: none;
            width: 100%;
            border-radius: 2px;
        }
        .acao-produto a{
            font-weight: 700;
            font-size: 18px;
            color: #fff;
            text-decoration: none;
        }
        .acao-produto button:hover{
            background-color: rgb(79, 245, 143);
            color: green;
            transition: 0.5s;
        }


        .flip-card {
                font-family: Arial, Helvetica, sans-serif;
                background-color: transparent;
                width: 300px;
                height: 300px;
                perspective: 1000px;
            }

            .flip-card-inner {
                position: relative;
                width: 100%;
                height: 100%;
                text-align: center;
                transition: transform 0.6s;
                transform-style: preserve-3d;
            }

            .flip-card:hover .flip-card-inner{
                transform: rotateY(180deg);
            }

            .flip-card-front , .flip-card-back {
                position: absolute;
                width: 100%;
                height: 100%;
                -webkit-backface-visibility: hidden;
                backface-visibility: hidden;
                border-radius: 14px;
            }

            .flip-card-front {
                background-image: 
                linear-gradient(
                    45deg, #c18845 , #544a41
                );
            }

            .flip-card-front img {
                width: 220px;
                margin-top: 2.5rem;
            }

            .flip-card-back {
                background-image: linear-gradient(
                    315deg, #c18845 , #544a41
                );
                color: #ffffff;
                transform: rotateY(180deg);
            }

            .flip-card-back img {
                width: 140px;
                margin-top: 1rem;
            }

            .flip-card-back h3 {
                font-size: 30px;
                margin-top: 15px;
            }

            .flip-card-back h1 {
                font-size: 30px;
                margin-top: 25px;
            }
    </style>
</head>
<body>
    
    <?php
include 'menu.php';
?>
    
    <div class="container">

        <div class="titulo-container">
            <h1>Produtos Disponíveis</h1>
        </div>

        <div class="grupo-produtos">
            
            <div class="caixa-produto">
            <div class="flip-card">
                <div class="flip-card-inner">
                    <div class="flip-card-front">
                        <img src="testes/imagens/gel_cabelo.jpg" />
                    </div>
                    <div class="flip-card-back">
                        <img src="testes/imagens/gel_cabelo.jpg" />
                        <h3>Gel para Cabelo</h3>
                        <h1> R$ 17,90 </h1>
                    </div>
                </div>   
            </div>
                <div class="acao-produto">
                    <button><a href="#">Adicionar ao carrinho</a></button>
                </div>
            </div>

            <div class="caixa-produto">
                <div class="flip-card">
                    <div class="flip-card-inner">
                        <div class="flip-card-front">
                            <img src="testes/imagens/shampoo3em1.jpg" />
                        </div>
                        <div class="flip-card-back">
                            <img src="testes/imagens/shampoo3em1.jpg" />
                            <h3>Shampoo 3 em 1</h3>
                            <h1> R$ 21,90 </h1>
                        </div>
                    </div>   
                </div>
                    <div class="acao-produto">
                        <button><a href="#">Adicionar ao carrinho</a></button>
                    </div>
                </div>

                <div class="caixa-produto">
                    <div class="flip-card">
                        <div class="flip-card-inner">
                            <div class="flip-card-front">
                                <img src="testes/imagens/gel_barbear.jpg" />
                            </div>
                            <div class="flip-card-back">
                                <img src="testes/imagens/gel_barbear.jpg" />
                                <h3>Gel de Barbear</h3>
                                <h1> R$ 19,90 </h1>
                            </div>
                        </div>   
                    </div>
                        <div class="acao-produto">
                            <button><a href="#">Adicionar ao carrinho</a></button>
                        </div>
                    </div>


                    <div class="caixa-produto">
                        <div class="flip-card">
                            <div class="flip-card-inner">
                                <div class="flip-card-front">
                                    <img src="testes/imagens/oleo_barba.jpg" />
                                </div>
                                <div class="flip-card-back">
                                    <img src="testes/imagens/oleo_barba.jpg" />
                                    <h3>Óleo de Barbear</h3>
                                    <h1> R$  39,90 </h1>
                                </div>
                            </div>   
                        </div>
                            <div class="acao-produto">
                                <button><a href="#">Adicionar ao carrinho</a></button>
                            </div>
                        </div>


                        <div class="caixa-produto">
                            <div class="flip-card">
                                <div class="flip-card-inner">
                                    <div class="flip-card-front">
                                        <img src="testes/imagens/balm_barba.jpg" />
                                    </div>
                                    <div class="flip-card-back">
                                        <img src="testes/imagens/balm_barba.jpg" />
                                        <h3>Balm para Barba</h3>
                                        <h1> R$  47,90 </h1>
                                    </div>
                                </div>   
                            </div>
                                <div class="acao-produto">
                                    <button><a href="#">Adicionar ao carrinho</a></button>
                                </div>
                            </div>


                            <div class="caixa-produto">
                                <div class="flip-card">
                                    <div class="flip-card-inner">
                                        <div class="flip-card-front">
                                            <img src="testes/imagens/locao_pos_barba.jpg" />
                                        </div>
                                        <div class="flip-card-back">
                                            <img src="testes/imagens/locao_pos_barba.jpg" />
                                            <h3>Loção pós Barba</h3>
                                            <h1> R$  44,90 </h1>
                                        </div>
                                    </div>   
                                </div>
                                    <div class="acao-produto">
                                        <button><a href="#">Adicionar ao carrinho</a></button>
                                    </div>
                                </div> 
                                
                                
                                <div class="caixa-produto">
                                    <div class="flip-card">
                                        <div class="flip-card-inner">
                                            <div class="flip-card-front">
                                                <img src="testes/imagens/shaving_gel_barbear.png" />
                                            </div>
                                            <div class="flip-card-back">
                                                <img src="testes/imagens/shaving_gel_barbear.png" />
                                                <h3>Shaving Gel</h3>
                                                <h1> R$  59,90 </h1>
                                            </div>
                                        </div>   
                                    </div>
                                        <div class="acao-produto">
                                            <button><a href="#">Adicionar ao carrinho</a></button>
                                        </div>
                                    </div>  



                                    <div class="caixa-produto">
                                        <div class="flip-card">
                                            <div class="flip-card-inner">
                                                <div class="flip-card-front">
                                                    <img src="testes/imagens/pomada_modeladora.jpg" />
                                                </div>
                                                <div class="flip-card-back">
                                                    <img src="testes/imagens/pomada_modeladora.jpg" />
                                                    <h3>Pomada Modeladora</h3>
                                                    <h1> R$  25,90 </h1>
                                                </div>
                                            </div>   
                                        </div>
                                            <div class="acao-produto">
                                                <button><a href="#">Adicionar ao carrinho</a></button>
                                            </div>
                                        </div>

            


        </div>
    </div>
</body>
</html>