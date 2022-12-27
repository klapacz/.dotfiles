/* This runs after a web page loads */

const redirect = {
  from: "https://terraria.fandom.com/",
  to: "https://terraria.wiki.gg/",
};

const current_url = document.location.href;
if (current_url.includes(redirect.from)) {
  const next_url = current_url.replace(redirect.from, redirect.to);
  document.location.replace(next_url);
}
