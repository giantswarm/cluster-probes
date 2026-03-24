# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [0.0.2] - 2026-03-24

### Fixed

- Fix service monitor `namespaceSelector` to target the blackbox exporter in the kube-system namespace.

## [0.0.1] - 2026-03-24

### Added

- Initial release of cluster-probes Helm chart
- ServiceMonitor template for monitoring workload cluster API server availability
- Support for dynamic cluster and domain configuration
- Integration with prometheus-blackbox-exporter on management cluster

[Unreleased]: https://github.com/giantswarm/cluster-probes/compare/v0.0.2...HEAD
[0.0.2]: https://github.com/giantswarm/cluster-probes/compare/v0.0.1...v0.0.2
[0.0.1]: https://github.com/giantswarm/cluster-probes/releases/tag/v0.0.1
