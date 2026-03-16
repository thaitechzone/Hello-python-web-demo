# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added
- GitHub Actions workflows for CI/CD
  - CI workflow with Python 3.10, 3.11, 3.12 testing
  - Deploy workflow for Render platform
  - Docker build and push to GHCR
  - Code quality checks
  - Dependency review
- Dependabot configuration for automated dependency updates
- Comprehensive workflow documentation
- MIT License
- Enhanced README with badges and detailed sections

## [1.0.0] - 2026-03-16

### Added
- Initial Flask application with Smart Farm Control theme
- Landing page with 6 feature sections
- Responsive design with CSS Grid
- Green gradient theme (#11998e to #38ef7d)
- Docker support with multi-stage build
- Render deployment configuration
- Procfile for production deployment
- Gunicorn WSGI server setup
- Comprehensive deployment documentation
- Contact form section
- Navigation menu
- Hero section with CTAs

### Changed
- Migrated from development server to Gunicorn production server
- Updated app.py to read PORT from environment variable

### Fixed
- Production deployment warning on Render
- Docker container configuration

## [0.1.0] - 2026-03-15

### Added
- Basic Flask application structure
- Simple landing page template
- Development server setup
