# world-template
An advanced Minecraft world template for map makers

# OS Compatability
This template is **only** compatible with Windows 10 and Windows 11 due to the use of Powershell. This may change in the future.

# Requirements
You must have these installed for this template's scripts to function properly.
- [7zip](https://www.7-zip.org/)
- [Node.js](https://docs.npmjs.com/downloading-and-installing-node-js-and-npm)
- [yarn](https://classic.yarnpkg.com/lang/en/docs/install) or [npm](https://docs.npmjs.com/downloading-and-installing-node-js-and-npm)

# Setting up your world
How to initialize the template.
- Create a new repo using this template.
- Run `yarn install` to install dependancies.
- Then setup the repo with `yarn setup`.

## Creating a Data Pack
You can create a brand-new Data Pack from a template via `yarn create_datapack`.

## Adding other Data Packs
If you have some pre-made Data Packs you'd like to include, Simply add them to the `datapacks` folder, and register them by running `yarn scan_datapacks`.

# Developing
You can run `yarn dev:datapack-id` to start MC-Build for a specific Data Pack.

# Packaging
If you run `yarn package` the packaging script will automatically clean, compile, combine and zip the world, Resource Pack, and Data Packs into the `dist/` folder.
