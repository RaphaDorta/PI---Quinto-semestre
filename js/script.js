document.addEventListener('DOMContentLoaded', function () {

    // Função para rolagem suave
    document.querySelectorAll('a[href^="#"]').forEach(anchor => {
        anchor.addEventListener('click', function (e) {
            e.preventDefault();
            const target = document.querySelector(this.getAttribute('href'));
            if (target) {
                target.scrollIntoView({
                    behavior: 'smooth'
                });
            }
        });
    });

    // Função para ativar/desativar o menu no mobile
    const menuToggle = document.getElementById('menu-toggle');
    if (menuToggle) {
        menuToggle.addEventListener('click', function () {
            const menu = document.querySelector('.cabecalho-menu');
            if (menu) {
                menu.classList.toggle('active');
            }
        });
    }

    // Validação simples do formulário
    const formulario = document.getElementById('formulario');
    if (formulario) {
        formulario.addEventListener('submit', function (e) {
            e.preventDefault();

            let name = document.getElementById('name').value;
            let email = document.getElementById('mail').value;
            let msg = document.getElementById('msg').value;

            if (!name || !email || !msg) {
                alert("Por favor, preencha todos os campos.");
                return;
            }

            // Validação do email
            if (!email.match(/^[^@]+@[^@]+\.[^@]+$/)) {
                alert("Por favor, insira um e-mail válido.");
                return;
            }

            alert("Formulário enviado com sucesso!");
        });
    }

    // Função para verificar se o elemento está visível na tela
    function isElementInView(element) {
        if (!element) return false;
        const rect = element.getBoundingClientRect();
        const windowHeight = (window.innerHeight || document.documentElement.clientHeight);
        const windowWidth = (window.innerWidth || document.documentElement.clientWidth);

        // Verifica se qualquer parte do elemento está visível na tela
        const vertInView = (rect.top <= windowHeight) && (rect.bottom >= 0);
        const horInView = (rect.left <= windowWidth) && (rect.right >= 0);

        return (vertInView && horInView);
    }

    // Seleciona a seção de descrição
    const descricaoApp = document.querySelector('.descricao-app');

    function handleScroll() {
        if (descricaoApp && isElementInView(descricaoApp)) {
            descricaoApp.classList.add('visible');
            window.removeEventListener('scroll', handleScroll); // Remove o evento após ser ativado
        }
    }

    // Verifica a visibilidade ao carregar a página
    handleScroll();

    // Adiciona um evento de rolagem para verificar a visibilidade da seção
    window.addEventListener('scroll', handleScroll);

    // Função de redirecionamento para página de mais informações
    const btnSaibaMais = document.querySelector('.btn-saiba-mais');
    if (btnSaibaMais) {
        btnSaibaMais.addEventListener('click', function () {
            window.location.href = '/mais-informacoes'; // Redireciona para a página de mais informações
        });
    }
});

// Validação e envio do formulário de vacinas
document.getElementById('form-vacinas')?.addEventListener('submit', function (event) {
    event.preventDefault();

    const dataNascimento = document.getElementById('data-nascimento').value;

    if (!dataNascimento) {
        alert("Por favor, insira a data de nascimento.");
        return;
    }

    // Calcula a idade
    const idade = calcularIdade(new Date(dataNascimento));

    // Envia a idade para o back-end
    fetch(`https://seu-backend.herokuapp.com/vacinas?idade=${idade}`)
        .then(response => response.json())
        .then(data => {
            mostrarVacinas(data);
        })
        .catch(error => {
            console.error('Erro ao buscar vacinas:', error);
        });
});

// Função para calcular a idade
function calcularIdade(dataNascimento) {
    const hoje = new Date();
    let idade = hoje.getFullYear() - dataNascimento.getFullYear();
    const mes = hoje.getMonth() - dataNascimento.getMonth();

    if (mes < 0 || (mes === 0 && hoje.getDate() < dataNascimento.getDate())) {
        idade--;
    }

    return idade;
}

// Função para mostrar as vacinas
function mostrarVacinas(vacinas) {
    const resultado = document.getElementById('resultado-vacinas');
    resultado.innerHTML = ''; // Limpa o conteúdo anterior

    if (vacinas.length === 0) {
        resultado.innerHTML = '<p>Nenhuma vacina disponível para sua idade.</p>';
        return;
    }

    const listaVacinas = vacinas.map(vacina => {
        return `<div><strong>${vacina.nome}</strong>: ${vacina.descricao}</div>`;
    }).join('');

    resultado.innerHTML = `<h3>Vacinas disponíveis:</h3>${listaVacinas}`;
}
