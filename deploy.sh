#!/usr/bin/env sh

# Build latest docs
npm run build

# navigate to docs output directory
cd dist

# create a new blank git repository
git init
git add -A
git commit -m 'deploy'

# Check if the remote origin exists and if not, add it
git remote add origin https://github.com/aftongauntlett/vue-portfolio-public.git

# Force push to gh-pages branch
git push -f https://github.com/aftongauntlett/vue-portfolio-public.git main:gh-pages

cd -