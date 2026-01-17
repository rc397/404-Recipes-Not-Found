// Shared small helpers (kept tiny on purpose)
(function () {
  const year = new Date().getFullYear();
  const el = document.querySelector('[data-current-year]');
  if (el) el.textContent = String(year);
})();
