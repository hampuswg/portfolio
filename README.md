# Portfolio — Hampus Wargsjö

Static, bilingual (EN/SV) portfolio site. Plain HTML and CSS, no build step, served by nginx in Docker.

```
index.html            English home
work/*.html           English case studies
sv/                   Swedish versions, same file names
assets/style.css      All styling
assets/img/           Images (add case study images here)
assets/*.pdf          CVs
```

## Run locally

```sh
python3 -m http.server 8080
# or
docker build -t portfolio . && docker run -p 8080:80 portfolio
```

## Deploy with Dokploy

1. In Dokploy: **Create Application** → Provider: **GitHub** → repo `hampuswg/portfolio`, branch `main`.
2. Build type: **Dockerfile** (path `./Dockerfile`).
3. **Domains**: add your domain, container port `80`, enable HTTPS (Let's Encrypt).
4. Point the domain's DNS A record at the VPS.
5. Deploy. Turn on **Autodeploy** so every push to `main` redeploys.

## Still to do

Search the pages for `class="todo"`. Those are placeholders for images and text only you can fill in:

- Images for each case study (put files in `assets/img/` and replace the `<div class="todo">` with an `<img>`)
- What changed after the 2019 trainer test
- What happened with the LifeArm after the thesis
- A concrete feature example for the Siemens case
- Your LinkedIn URL (`REPLACE-ME` on both home pages)
