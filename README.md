# Nabil El Bajdi's Resume 

*This repository contains my personal resume built using a Jekyll template. I forked the original template from [resume-template](https://github.com/jglovier/resume-template) and personalized it, as well as adding several DevOps integrations.*

## Table of Contents
- [About](#about)
- [Features](#features)
- [DevOps Integrations](#devops-integrations)

## About
This is a simple personal resume website. The website is built using Jekyll and hosted on GitHub Pages. It showcases my professional experience, education, skills, and achievements.

## Features
- **Responsive Design**: The website is fully responsive and looks great on all devices.
- **Easy Customization**: Built with Jekyll, it's easy to update and customize content.
- **DevOps Integrations**: Includes various DevOps practices to improve quality, security, and performance.

## DevOps Integrations
This project includes several DevOps practices to enhance the quality, security, and performance of the website.

The CI/CD pipeline is automated using GitHub Actions. The pipeline includes the following steps:

- **Building the Docker Image**: Ensures a consistent environment for the application.
- **Running Docker Container**: Validates the containerized application.
- **Security Audit**: Checks for vulnerabilities in dependencies using `bundler-audit`.
- **Link Validation**: Checks if all links are valid using `html-proofer`.
- **Lighthouse Audit**: Monitors performance and best practices of the website.