var pesquisaModel = require("../models/pesquisaModel")

function avaliacao(req, res) {

    var avaliacao = req.body.avaliacaoServer;
    var pesquisa = req.body.pesquisaServer;
    var fkUsuario = req.body.fkUsuarioServer;

    // Faça as validações dos valores
    if (avaliacao == undefined) {
        res.status(400).send("Sua avaliação está undefined!");
    } else {

        
        pesquisaModel.avaliacao(avaliacao, pesquisa, fkUsuario)
            .then(
                function (resultado) {
                    res.json(resultado);
                }
            ).catch(
                function (erro) {
                    console.log(erro);
                    console.log(
                        "\nHouve um erro ao realizar o cadastro! Erro: ",
                        erro.sqlMessage
                    );
                    res.status(500).json(erro.sqlMessage);
                }
            );
    }

}



module.exports = {

avaliacao

}