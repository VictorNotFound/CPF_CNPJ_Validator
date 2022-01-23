require "cpf_cnpj"

def prosseguir()
    puts "Pressione Enter para continuar"
    prossegir = gets.to_s
end

class DadosCPF

    def gerarCPF
        print "Digite o numero de CPF que será gerado: "
        @@numeroGerar = gets.to_i
        system("cls")
        for a in 1..@@numeroGerar do
            puts "#{a} - #{CPF.generate(true)}"
        end

        prosseguir()
    end

    def validarCPF
        print "Digite quantos CPFs serão testados: "
        @@numeroGerar = gets.to_i
        @@cpfs = []
        system("cls")
        for a in 1..@@numeroGerar do
            print "Digite o CPF a ser testado: "
            @@cpfs.push(gets.chomp.to_s)
            system("cls")
        end
        
        @@cpfs.each do |cpf|
            puts "#{cpf} - Existe" if CPF.valid?(cpf)
            puts "#{cpf} - Não existe" if !CPF.valid?(cpf)
        end

        prosseguir()
    end
end