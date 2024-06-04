var database = require("../database/config");

function buscarUltimasMedidas() {

    var instrucaoSql = `select count(satisfacao) as quantidade from pesquisa group by satisfacao;
    `;

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

module.exports = {
    buscarUltimasMedidas,


}
