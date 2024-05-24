var database = require("../database/config")

function pesquisar()
{
    var instrucaoSql = "SELECT p.avaliacao, p.satisfacao, u.nome from Pesquisa as p JOIN Usuario as u ON p.fkUsuario = u.idUsuario ";

    console.log(instrucaoSql)
    return database.executar(instrucaoSql)
}


module.exports = {
    pesquisar
}