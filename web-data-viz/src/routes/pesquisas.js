var express = require("express");
var router = express.Router();

var pesquisaController = require("../controllers/pesquisaController");

//Recebendo os dados do html e direcionando para a função cadastrar de usuarioController.js
router.post("/avaliacao", function (req, res) {
    pesquisaController.avaliacao(req, res);
})


module.exports = router;