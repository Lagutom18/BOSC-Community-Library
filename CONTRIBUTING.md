# Contributing to BOSC Community Library

Thank you for your interest in contributing to the BOSC Community Library! This document provides guidelines and instructions for external contributors to participate effectively in the project.

## Code of Conduct

By participating in this project, you agree to abide by our [Code of Conduct](./CODE_OF_CONDUCT.md). Please read it before contributing.

## Getting Started

### Prerequisites
- Git installed and configured
- GitHub account
- Text editor or IDE of your choice
- Basic understanding of Markdown for documentation contributions

### Development Setup

1. **Fork the Repository**
   ```bash
   Navigate to https://github.com/BOSC-Community-Library and click "Fork"
   ```

2. **Clone Your Fork Locally**
   ```bash
   git clone https://github.com/YOUR_USERNAME/BOSC-Community-Library.git
   cd BOSC-Community-Library
   ```

3. **Add Upstream Remote**
   ```bash
   git remote add upstream https://github.com/BOSC-Community-Library/BOSC-Community-Library.git
   ```

4. **Create a Feature Branch**
   ```bash
   git checkout -b feature/your-feature-name
   # or for bug fixes:
   git checkout -b bugfix/issue-description
   ```

## Contribution Workflow

### 1. Identify or Create an Issue

**Before starting work:**
- Search existing issues to avoid duplicate efforts
- If the issue doesn't exist, create one using the appropriate template:
  - Use "Bug Report" for functional bugs
  - Use "Feature Request" for new functionality
- Wait for maintainer feedback and approval before substantial work

### 2. Work on Your Changes

**Branch Naming Conventions:**
- `feature/descriptive-name` for new features
- `bugfix/issue-number-description` for bug fixes
- `docs/description` for documentation updates
- `refactor/description` for refactoring tasks

**Commit Message Guidelines:**
- Use clear, descriptive commit messages in present tense
- Reference issue numbers: `Fix #123: Add user authentication`
- Keep commits atomic and focused on single changes
- Bad: "Fixed stuff"
- Good: "Add email validation in user registration form (#456)"

### 3. Keep Your Branch Updated

```bash
git fetch upstream
git rebase upstream/main
```

### 4. Submit a Pull Request

**PR Process:**
1. Push your branch to your fork: `git push origin your-branch-name`
2. Go to the original repository and click "New Pull Request"
3. Fill out the PR template completely
4. Link the related issue: "Closes #123" or "Fixes #456"
5. Request review from maintainers
6. Address review comments promptly

**PR Requirements:**
- All automated checks must pass
- At least one maintainer review approval required
- Branch must be up to date with `main`
- No merge conflicts

## Documentation Contributions

### Markdown Standards
- Use proper heading hierarchy (# for title, ## for sections, etc.)
- Include code blocks with language specification
- Add table of contents for longer documents
- Use relative links for internal documentation
- Ensure proper line breaks and spacing

### Documentation Files
- Update [README.md](./README.md) for overview changes
- Add implementation details to [docs/](./docs/) folder
- Include examples and use cases where applicable
- Keep language clear and accessible

## Code Style Guidelines

### General Principles
- Follow existing code style in the repository
- Write self-documenting code with meaningful variable names
- Keep functions focused and reasonably sized
- Include comments for complex logic only

### Resource Contributions
- Place new resources in the [resources/](./resources/) directory
- Include metadata (title, description, URL, category)
- Verify all links are working
- Ensure resources align with project scope

## Review Process

### What Reviewers Look For
1. **Code Quality**: Adherence to style guidelines and best practices
2. **Testing**: Appropriate test coverage for changes
3. **Documentation**: Clear explanations and updated docs
4. **Performance**: No unnecessary complexity or inefficiency
5. **Security**: No introduction of security vulnerabilities

### Addressing Feedback
- Respond constructively to all feedback
- Make requested changes in new commits (don't force-push unless asked)
- Explain your reasoning if you disagree with a suggestion
- Mark conversations as resolved once addressed

## Communication

### Getting Help
- Check [existing issues and discussions](https://github.com/BOSC-Community-Library/issues)
- Ask questions in issue comments or discussions
- Be specific and provide context when seeking help
- Respect maintainers' time—research before asking

### For Maintainers
- Respond to issues within 7 days when possible
- Provide clear feedback on PRs
- Acknowledge good contributions
- Foster an inclusive, respectful community

## Recognition

Contributors will be:
- Added to the CONTRIBUTORS.md file
- Mentioned in release notes for significant contributions
- Acknowledged in the GitHub repository's "Contributors" section

## Legal

By contributing to BOSC Community Library, you agree that:
1. Your contributions are licensed under the Apache License 2.0
2. You have the right to contribute your work
3. Your contribution is original or properly attributed
4. You're not violating any third-party rights

## Questions or Issues?

If you have questions about the contribution process, please:
1. Check this guide thoroughly
2. Search existing discussions
3. Open a new discussion or issue with the "question" label

Thank you for contributing to making BOSC Community Library better!
