# Contributing Guide

Thank you for your interest in contributing to this collection of Helm Charts! This guide will help you understand the development workflow and standards.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Getting Started](#getting-started)
- [Development Workflow](#development-workflow)
- [Chart Standards](#chart-standards)
- [Testing](#testing)
- [Submitting Changes](#submitting-changes)
- [Release Process](#release-process)

## Prerequisites

Before contributing, ensure you have the following tools installed:

- [Helm](https://helm.sh/) v3+
- [kubectl](https://kubernetes.io/docs/tasks/tools/)
- [Docker](https://www.docker.com/) (for Kind clusters)
- [asdf](https://asdf-vm.com/) - for tool version management
- [pre-commit](https://pre-commit.com/) - for automated code quality checks
- [Python 3.x](https://www.python.org/)

### Tool Setup

This repository uses `asdf` to manage tool versions. Install required tools:

```bash
# Install asdf plugins
asdf plugin add helm-docs https://github.com/sudermanjr/asdf-helm-docs.git

# Install versions specified in .tool-versions
asdf install
```

Install pre-commit hooks:

```bash
pre-commit install
```

## Getting Started

1. **Fork the repository** on GitHub
2. **Clone your fork**:
   ```bash
   git clone https://github.com/<your-username>/rm3l-helm-charts.git
   cd rm3l-helm-charts
   ```
3. **Add upstream remote**:
   ```bash
   git remote add upstream https://github.com/rm3l/helm-charts.git
   ```
4. **Install pre-commit hooks**:
   ```bash
   pre-commit install
   ```

## Development Workflow

### Creating or Modifying a Chart

1. **Create a new branch**:
   ```bash
   git checkout -b feature/your-chart-name
   ```

2. **Chart structure**:
   ```
   charts/your-chart/
   ├── Chart.yaml           # Chart metadata
   ├── values.yaml          # Default configuration values
   ├── values.schema.json   # JSON schema for values validation
   ├── README.md.gotmpl     # Template for auto-generated README
   ├── .helmignore         # Files to ignore when packaging
   ├── templates/          # Kubernetes manifest templates
   │   ├── _helpers.tpl
   │   ├── deployment.yaml
   │   ├── service.yaml
   │   ├── ingress.yaml
   │   └── ...
   ├── ci/                 # Test values for CI pipeline
   │   ├── default-values.yaml
   │   └── with-feature-values.yaml
   └── tests/             # Helm test templates (optional)
   ```

3. **Update Chart.yaml**:
   - Increment `version` following [Semantic Versioning](https://semver.org/)
   - Update `appVersion` if the upstream application version changes
   - Ensure `maintainers` field is populated
   - Add clear `description`

4. **Document your changes**:
   - Update `README.md.gotmpl` with configuration examples
   - Add comments to `values.yaml` for all options
   - Document breaking changes in Chart.yaml annotations

### Running Pre-commit Hooks

Pre-commit hooks automatically run `helm-docs` to generate README files from templates:

```bash
# Run manually
pre-commit run --all-files
```

### Adding Required Helm Repositories

If your chart depends on external charts, add them to the CI workflow:

```yaml
# In .github/workflows/ci.yml, update "Add Helm repos" step:
helm repo add your-repo https://charts.example.com
```

Also update `ct.yaml`:

```yaml
chart-repos:
  - your-repo=https://charts.example.com
```

## Chart Standards

### Best Practices

1. **Follow Helm Best Practices**: See [Helm Chart Best Practices](https://helm.sh/docs/chart_best_practices/)
2. **Use `_helpers.tpl`**: Define reusable template helpers for common patterns
3. **Provide sensible defaults**: Charts should work out-of-the-box with minimal configuration
4. **Make it configurable**: Expose configuration through `values.yaml` with clear documentation
5. **Security first**: Follow the principle of least privilege
6. **Resource management**: Define reasonable resource requests/limits

### Template Standards

- Use consistent indentation (2 spaces)
- Add resource labels using `_helpers.tpl` functions
- Support all standard Kubernetes features where applicable:
  - Service accounts
  - Security contexts
  - Resource limits/requests
  - Pod annotations/labels
  - Ingress configuration
  - Persistent volumes
  - ConfigMaps/Secrets
  - Health checks (liveness/readiness probes)

### Values.yaml Structure

Organize `values.yaml` logically:

```yaml
# Image configuration
image:
  repository: ""
  tag: ""
  pullPolicy: IfNotPresent

# Service configuration
service:
  type: ClusterIP
  port: 80

# Ingress configuration
ingress:
  enabled: false
  # ...

# Resources
resources: {}
  # limits:
  #   cpu: 100m
  #   memory: 128Mi
  # requests:
  #   cpu: 100m
  #   memory: 128Mi

# Node selection
nodeSelector: {}
tolerations: []
affinity: {}
```

## Testing

### Local Testing

Test chart rendering locally:

```bash
# Lint the chart
helm lint charts/your-chart

# Template and check output
helm template my-release charts/your-chart

# Template with custom values
helm template my-release charts/your-chart -f charts/your-chart/ci/test-values.yaml
```

### CI Test Values

Create test scenarios in the `ci/` directory to verify different configurations:

```bash
charts/your-chart/ci/
├── default-values.yaml              # Minimal/default config
├── with-ingress-values.yaml         # With ingress enabled
├── with-persistence-values.yaml     # With PVC
└── with-autoscaling-values.yaml     # With HPA
```

These test values are automatically used by the CI pipeline to install and test your chart.

### CI Pipeline

The CI pipeline runs automatically on pull requests and includes:

1. **Pre-commit checks**: Validates documentation is up-to-date
2. **Linting**: Runs `ct lint` to validate chart structure
3. **Testing**: Installs charts in Kind clusters with multiple Kubernetes versions
4. **Security scanning**: Runs `kube-linter` on all chart manifests
5. **Release**: Automatically packages and publishes charts on merge to `main`

### Manual Testing with Kind

Test in a local Kubernetes cluster:

```bash
# Create a Kind cluster
kind create cluster

# Install your chart
helm install my-test ./charts/your-chart

# Check the deployment
kubectl get all

# Clean up
helm uninstall my-test
kind delete cluster
```

## Submitting Changes

### Commit Message Format

Follow conventional commit format:

```
<type>(<scope>): <subject>

<body>

<footer>
```

Types:
- `feat`: New feature
- `fix`: Bug fix
- `docs`: Documentation changes
- `chore`: Maintenance tasks
- `refactor`: Code refactoring
- `test`: Test updates

Examples:
```
feat(adguard-home): add support for horizontal pod autoscaling

fix(ntfy): correct ingress path configuration

docs(memos): update README with backup instructions
```

### Pull Request Process

1. **Ensure all tests pass locally**:
   ```bash
   pre-commit run --all-files
   helm lint charts/your-chart
   ```

2. **Update documentation**:
   - Ensure `README.md.gotmpl` is updated
   - Run `helm-docs` or let pre-commit handle it

3. **Bump chart version** in `Chart.yaml`:
   - PATCH version for backwards-compatible bug fixes
   - MINOR version for new backwards-compatible features
   - MAJOR version for breaking changes

4. **Create pull request**:
   - Provide clear description of changes
   - Reference any related issues
   - Include testing steps if applicable

5. **Code review**:
   - Address reviewer feedback
   - Ensure CI checks pass
   - Maintainer (@rm3l) will review and merge

### Pull Request Checklist

- [ ] Chart version bumped in `Chart.yaml`
- [ ] `appVersion` updated if applicable
- [ ] `README.md.gotmpl` updated with new features/changes
- [ ] `values.yaml` has comments for all new options
- [ ] CI test values added for new features
- [ ] Pre-commit hooks pass
- [ ] Chart lints successfully
- [ ] Tested locally with `helm install`
- [ ] No secrets or sensitive data in commits

## Release Process

Releases are automated via GitHub Actions:

1. When a PR is merged to `main`, the CI pipeline:
   - Detects changed charts
   - Validates version bumps
   - Packages the chart
   - Creates a GitHub release
   - Publishes to GitHub Pages (https://helm-charts.rm3l.org)
   - Updates the Artifact Hub listing

2. Users can then install charts:
   ```bash
   helm repo add rm3l https://helm-charts.rm3l.org
   helm repo update
   helm install my-release rm3l/your-chart
   ```

## Additional Resources

- [Helm Documentation](https://helm.sh/docs/)
- [Kubernetes Documentation](https://kubernetes.io/docs/)
- [Chart Testing Tool](https://github.com/helm/chart-testing)
- [Artifact Hub](https://artifacthub.io/packages/search?repo=rm3l)

## Getting Help

- Open an [issue](https://github.com/rm3l/helm-charts/issues) for bugs or feature requests
- Review existing charts as examples
- Contact maintainer: @rm3l

## Code of Conduct

Be respectful and constructive in all interactions. This is a personal collection shared with the community - contributions that improve quality, security, and usability are welcome.

## License

By contributing, you agree that your contributions will be licensed under the MIT License.
