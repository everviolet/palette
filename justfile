_default:
  @just --list

build:
  whiskers templates/css.tera
  whiskers templates/scss.tera
  mkdir -p dist dist/scss dist/css
  mv -f css/* dist/css/
  mv -f scss/* dist/scss/
  cp -f templates/package.json dist/
