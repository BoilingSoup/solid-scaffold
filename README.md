# solid-scaffold 

&nbsp;

Use docker compose to scaffold a solid-js vite template 

Available templates: https://github.com/solidjs/templates 

&nbsp;
## Requirements:
  * Docker
  * Docker compose (v2)
 
&nbsp; 
## Getting Started:
  #### You have the following template names to choose from:
  * js
  * ts
  * ts-minimal
  * ts-unocss
  * ts-windicss
  * ts-router
  * ts-bootstrap
  * ts-tailwindcss
  * ts-sass
  * ts-vitest
  * js-vitest
  * ts-uvu


&nbsp;
&nbsp;
&nbsp;
  ### <p>To scaffold a solid-js vite template use the command: </p>
  
  ### `docker compose run scaffold *template_name*`

&nbsp;

A new folder `./mnt` will be created in this directory's root which contains the solid-js scaffold.
&nbsp;
&nbsp;




  ## Run npm commands
  ### You can run npm commands by prefixing them with `docker compose run `
  #### Install dependencies with npm: 
  #### `docker compose run npm install`
  &nbsp;
  
  ### To run the dev server: 
1. Check the `package.json` included in the scaffold for the dev server command. Some templates seem to differ from each other.
2. Add the `-- --host` flag to allow machines on your local network to access the server.

&nbsp;

### Ex: 

####  * `docker compose run npm start -- --host`
####  * `docker compose run npm run dev -- --host`
  

### then visit the Local ip address provided by vite to view the dev server 

&nbsp;
&nbsp;
![image](https://user-images.githubusercontent.com/84747244/177235420-c9a0d55e-38d5-455e-b59c-67c1b57acbaf.png)
