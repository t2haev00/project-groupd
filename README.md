## About this project

### Description
Web Programming Project -course for spring 2023

A social media app for reviewing restaurants. Users can register, login and add their reviews, along with pictures, rate restaurants, add restaurant's location via Google Map's plugin. Site will also return with recommendations based on top rated restaurants.

### Roles
- Frontend Developer/Tester: Hua Chen (balletty2008) 
- Product Owner/Scrum Master: Eveliina Hampus (t2haev00) 
- Backend Developer: Yerold Sanabria (doteins)
- Frontend Developer/Designer: Tomoko Takami (Tomokazuki)

### Technologies and Programming Languages Used
- Node.js
- Typescript
- HTML
- CSS
- SQL


## Development Setup

### Prerequisites
- Node.js

### Local setup (Linux & Windows)

1. First, clone the repo and cd into the project:
   ```sh
   git clone https://github.com/t2haev00/project-groupd.git
   ```
   
2. Move to the server directory:
   ```sh
   cd server/
   ```
   
3. Install node dependencies:
   ```sh
   npm i
   ```
   
4. In the server directory, open **sample.env** and copy its content into a new file named **.env**, then replace variable placeholders with the correct values for your database.

### Compile TypeScript code for the server
Run the following comand in the server directory:
   ```sh
   npx tcs
   ```
  
### Run the server locally
In the server directory, start the development server by running:
   ```sh
   npm run devStart
   ```
Backend will be running on **http://localhost:3001**.

### Compile code for front-end
Run tsc from the project’s root directory:
   ```sh
   npx tcs
   ```