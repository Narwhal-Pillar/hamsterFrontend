# Hamster FrontEnd

This web app is designed to consume the `Hamster API` built with Go.

## Git Flow

This project is composed of two branches:

- Master - production
- Dev - test/stage

Developers are to develop features in local branches and make pull requests to merge with the `Dev` branch when ready. 

When code has been accepted it will be merged into the `Master` branch. 

## Deploy to Github Pages
To deploy the latest code to Github Pages, follow these steps:

## Step 1
Remove/ensure the build directory is removed from the `.gitignore` file.

## Step 2
Make sure git knows about our subtree (the subfolder: `build/web`).
```
git add build/web && git commit -m "Initial build/web subtree commit"
```

## Step 3
Use subtree push to send it to the gh-pages branch on GitHub.
```
git subtree push --prefix build/web origin gh-pages
```

To view the changes, go [here](https://narwhal-pillar.github.io/hamsterFrontend/) 
