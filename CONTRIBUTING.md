# Contributing to Smart Farm Control Landing Page

Thank you for considering contributing to our project! 🌱

## Code of Conduct

Please be respectful and constructive in all interactions.

## How to Contribute

### Reporting Bugs

If you find a bug, please create an issue with:
- A clear title and description
- Steps to reproduce the behavior
- Expected vs actual behavior
- Screenshots if applicable
- Your environment (Python version, OS, etc.)

### Suggesting Enhancements

Create an issue with:
- A clear title and description
- Why this enhancement would be useful
- Examples of how it would work

### Pull Requests

1. Fork the repository
2. Create a feature branch:
   ```bash
   git checkout -b feature/amazing-feature
   ```

3. Make your changes:
   - Follow the existing code style
   - Add tests if applicable
   - Update documentation as needed

4. Ensure all tests pass:
   ```bash
   # Run linting
   flake8 .
   black --check .
   
   # Run tests
   python -m pytest
   ```

5. Commit your changes:
   ```bash
   git commit -m "Add amazing feature"
   ```
   
   Use conventional commits:
   - `feat:` for new features
   - `fix:` for bug fixes
   - `docs:` for documentation
   - `style:` for formatting
   - `refactor:` for code restructuring
   - `test:` for tests
   - `chore:` for maintenance

6. Push to your fork:
   ```bash
   git push origin feature/amazing-feature
   ```

7. Open a Pull Request with:
   - Clear title and description
   - Reference to related issues
   - Screenshots if UI changes

## Development Setup

### Prerequisites
- Python 3.10+
- Git
- Docker (optional)

### Setup

1. Clone your fork:
   ```bash
   git clone https://github.com/YOUR_USERNAME/Hello-python-web-demo.git
   cd Hello-python-web-demo
   ```

2. Create virtual environment:
   ```bash
   python -m venv venv
   source venv/bin/activate  # Linux/Mac
   # or
   venv\Scripts\activate     # Windows
   ```

3. Install dependencies:
   ```bash
   pip install -r requirements.txt
   pip install -r requirements-dev.txt  # If you create this file
   ```

4. Run the app:
   ```bash
   python app.py
   ```

## Development Guidelines

### Python Style
- Follow PEP 8
- Use Black for formatting
- Use isort for import sorting
- Maximum line length: 127 characters

### HTML/CSS
- Use semantic HTML5
- Keep CSS organized and commented
- Ensure responsive design
- Test on multiple browsers

### Commit Messages
- Use clear, descriptive messages
- Reference issues when applicable
- Keep commits focused and atomic

### Testing
- Write tests for new features
- Maintain or improve code coverage
- Test on multiple Python versions (3.10, 3.11, 3.12)

## Project Structure

```
.
├── .github/          # GitHub configs and workflows
├── static/           # CSS, images, JS
├── templates/        # HTML templates
├── app.py            # Main application
├── requirements.txt  # Dependencies
└── tests/            # Test files (if added)
```

## Getting Help

- Create an issue for questions
- Check existing issues and PRs
- Read the documentation

## Recognition

Contributors will be recognized in:
- README.md
- Release notes
- GitHub contributors page

Thank you for contributing! 🙏
