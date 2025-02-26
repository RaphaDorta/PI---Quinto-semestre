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
        
        if (name && email && msg) {
            alert("Formulário enviado com sucesso!");
        } else {
            alert("Por favor, preencha todos os campos.");
        }
    });
}

// Função para verificar se o elemento está visível na tela
function isElementInView(element) {
    const rect = element.getBoundingClientRect();
    return rect.top >= 0 && rect.bottom <= window.innerHeight;
}

// Seleciona a seção de descrição
const descricaoApp = document.querySelector('.descricao-app');

// Adiciona um evento de rolagem para verificar a visibilidade da seção
if (descricaoApp) {
    window.addEventListener('scroll', function () {
        if (isElementInView(descricaoApp)) {
            descricaoApp.classList.add('visible'); // Adiciona a classe para mostrar a seção
        }
    });
}

// Função de redirecionamento para página de mais informações
const btnSaibaMais = document.querySelector('.btn-saiba-mais');
if (btnSaibaMais) {
    btnSaibaMais.addEventListener('click', function () {
        window.location.href = '/mais-informacoes'; // Redireciona para a página de mais informações
    });
}
