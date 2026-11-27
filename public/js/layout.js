const NAV_LINKS = [
  ['index.html', 'Home'],
  ['about.html', 'About'],
  ['menu.html', 'Menu'],
  ['promotions.html', 'Promotions'],
  ['gallery.html', 'Gallery'],
  ['reservation.html', 'Reservation'],
  ['contact.html', 'Contact']
];

document.addEventListener('DOMContentLoaded', () => {
  const current = location.pathname.split('/').pop() || 'index.html';

  const header = document.getElementById('site-header');
  if (header) {
    header.className = 'site-header';
    header.innerHTML = `
      <nav class="container nav">
        <a href="index.html" class="nav__logo">ALCÉRA</a>
        <button class="nav__toggle" aria-label="Open menu" aria-expanded="false">
          <span></span><span></span><span></span>
        </button>
        <ul class="nav__links">
          ${NAV_LINKS.map(([href, text]) => {
            const classes = [];
            if (href === current) classes.push('active');
            if (href === 'reservation.html') classes.push('nav__cta');
            return `<li><a href="${href}" class="${classes.join(' ')}">${text}</a></li>`;
          }).join('')}
        </ul>
      </nav>`;

    const toggle = header.querySelector('.nav__toggle');
    const links = header.querySelector('.nav__links');
    toggle.addEventListener('click', () => {
      const isOpen = links.classList.toggle('open');
      toggle.setAttribute('aria-expanded', isOpen);
    });
  }

  const footer = document.getElementById('site-footer');
  if (footer) {
    footer.className = 'site-footer';
    footer.innerHTML = `
      <div class="container">
        <div class="footer__grid">
          <div>
            <h4>ALCÉRA</h4>
            <p>Luxury Within Reach.<br>An Escape Worth Remembering.</p>
          </div>
          <div>
            <h4>Opening Hours</h4>
            <p>Every day: 09:00 – 23:00</p>
          </div>
          <div>
            <h4>Contact</h4>
            <p>Address goes here<br>+90 (000) 000 00 00<br>info@alcera.com</p>
          </div>
          <div>
            <h4>Pages</h4>
            <ul>
              ${NAV_LINKS.map(([href, text]) => `<li><a href="${href}">${text}</a></li>`).join('')}
            </ul>
          </div>
        </div>
        <p class="footer__bottom">© ${new Date().getFullYear()} ALCÉRA. All rights reserved.</p>
      </div>`;
  }
});