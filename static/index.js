// static/index.js

const themeSwitch = document.querySelector('#theme-switch');
themeSwitch.addEventListener('click', () => {
    let darkMode = 'body { background-color: #333; color: #f0f0f0; } .container { color: #f0f0f0; } h1, p { color: #f0f0f0; }';
    let lightMode = 'body { background-color: #f0f0f0; color: #333; } .container { color: #333; } h1, p { color: #666; }';
    if (themeSwitch.textContent.includes('Dark')) {
        document.querySelector('#theme-style').textContent = darkMode;
        themeSwitch.textContent = 'Switch to Light Mode';
    } else {
        document.querySelector('#theme-style').textContent = lightMode;
        themeSwitch.textContent = 'Switch to Dark Mode';
    }
});