package mocuti01.controller

import jakarta.validation.Valid
import mocuti01.dto.LoginRequest
import mocuti01.dto.RelatorioUsuarios
import org.springframework.http.ResponseEntity
import org.springframework.web.bind.annotation.*
import mocuti01.entity.Usuario
import mocuti01.repository.UsuarioRepository

@RestController
@RequestMapping("/usuarios")
class UsuarioJpaController(val repositorio: UsuarioRepository) {

    @GetMapping("/listar")
    fun listarTodos(): ResponseEntity<List<Usuario>> {
        val usuarios = repositorio.findAll()
        return ResponseEntity.ok(usuarios)
    }

    @GetMapping("/listar-por-cargo/{cargoInt}")
    fun listarPorCargo(@PathVariable cargoInt: Int): ResponseEntity<List<Usuario>> {
        val usuarios = repositorio.findByCargoInt(cargoInt)
        return if (usuarios!!.isNotEmpty()) {
            ResponseEntity.ok(usuarios)
        } else {
            ResponseEntity.status(404).body(emptyList())
        }
    }

    @PostMapping("/cadastrar")
    fun cadastrar(@RequestBody @Valid novoUsuario: Usuario): ResponseEntity<Any> {
        if (repositorio.existsByEmail(novoUsuario.email)) {
            return ResponseEntity.status(400).body("E-mail já cadastrado")
        }
        val usuarioSalvo = repositorio.save(novoUsuario)
        return ResponseEntity.status(201).body(usuarioSalvo)
    }

    @PatchMapping("/logar/{idUsuario}")
    fun logar(@PathVariable idUsuario: Int, @RequestBody @Valid loginRequest: LoginRequest): ResponseEntity<Any> {
        val usuario = repositorio.findById(idUsuario)
        return if (usuario.isPresent && usuario.get().senha == loginRequest.senha) {
            val usuarioAtualizado = usuario.get()
            usuarioAtualizado.isAutenticado = true
            repositorio.save(usuarioAtualizado)
            ResponseEntity.status(200).body("Login bem-sucedido")
        } else {
            ResponseEntity.status(404).body("Credenciais inválidas ou usuário não encontrado")
        }
    }

    @PatchMapping("/deslogar/{idUsuario}")
    fun deslogar(@RequestBody userId: Usuario): ResponseEntity<Any> {
        val usuario = repositorio.findById(userId.idUsuario!!)
        return if (usuario.isPresent) {
            val usuarioAtualizado = usuario.get()
            usuarioAtualizado.isAutenticado = false
            repositorio.save(usuarioAtualizado)
            ResponseEntity.status(200).body("Logout bem-sucedido")
        } else {
            ResponseEntity.status(404).body("Usuário não encontrado")
        }
    }

    @GetMapping("/relatorio-usuarios")
    fun getRelatorioUsuarios(): ResponseEntity<RelatorioUsuarios> {
        val totalAtivos = repositorio.countByIsAtivo(true)
        val totalDesativados = repositorio.countByIsAtivo(false)

        val relatorio = RelatorioUsuarios(
            totalAtivos = totalAtivos, totalDesativados = totalDesativados
        )

        return ResponseEntity.ok(relatorio)
    }


}