document.addEventListener('DOMContentLoaded', function() {
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
        if (!element) return false;
        const rect = element.getBoundingClientRect();
        const windowHeight = (window.innerHeight || document.documentElement.clientHeight);
        const windowWidth = (window.innerWidth || document.documentElement.clientWidth);

        const vertInView = (rect.top <= windowHeight) && ((rect.top + rect.height) >= 0);
        const horInView = (rect.left <= windowWidth) && ((rect.left + rect.width) >= 0);

        const isInView = (vertInView && horInView);

        console.log('Element in view:', isInView, rect); // Adicione este log
        return isInView;
    }


    // Seleciona a seção de descrição
    const descricaoApp = document.querySelector('.descricao-app');

    function handleScroll() {
        if (descricaoApp) { // Verifica se o elemento existe
            if (isElementInView(descricaoApp)) {
                descricaoApp.classList.add('visible'); // Adiciona a classe para mostrar a seção
                window.removeEventListener('scroll', handleScroll); // Remove listener after it becomes visible once to avoid performance hit
            }
        }
    }

    // Check on initial load
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
