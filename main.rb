require_relative 'dadosCPF'

numeroOpcao = nil

while numeroOpcao != 0
    system("cls")  # Clean Terminal

    puts "Olá seja bem vindo"
    puts("0 - Sair")
    puts("1 - Gerar CPF")
    puts("2 - Validar CPF")
    print("-> ")
    numeroOpcao = gets.chomp.to_i
    system("cls")
    teste = DadosCPF.new

    puts "Saindo..." if (numeroOpcao == 0)
    teste.gerarCPF if (numeroOpcao == 1)
    teste.validarCPF if (numeroOpcao == 2)
    if (numeroOpcao > 2 || numeroOpcao < 0)
        puts "Opção inválida"
        prosseguir()
    end
end