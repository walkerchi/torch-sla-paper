# torch-sla: Technical Report

LaTeX source for the technical report: **"torch-sla: Differentiable Sparse Linear Algebra with Sparse Tensor Parallelism and Adjoint Solvers for PyTorch"**

## Quick Start

### Overleaf (Recommended)
1. Create a new project on [Overleaf](https://www.overleaf.com)
2. Upload all files from this repository
3. Set `main.tex` as the main document
4. Compile with pdfLaTeX

### Local Build
Requires a full TeX distribution (TeX Live, MiKTeX, etc.):

```bash
# Full build with bibliography
make

# Quick build (no bibliography)
make quick

# Clean auxiliary files
make clean
```

## Structure

```
torch-sla-paper/
├── main.tex          # Main LaTeX document
├── references.bib    # Bibliography (BibTeX)
├── figures/          # Benchmark visualizations
│   ├── performance.png
│   ├── memory.png
│   ├── distributed_benchmark.png
│   └── accuracy.png
├── Makefile          # Build automation
└── .gitignore        # LaTeX auxiliaries
```

## Key Contributions

1. **Sparse Tensor Parallel**: Distributed sparse matrices with domain decomposition and halo exchange for multi-GPU computing

2. **Adjoint Solvers**: Memory-efficient gradient computation for linear and nonlinear sparse solvers with O(1) computational graph nodes

## Related Links

- **Library**: [https://github.com/walkerchi/torch-sla](https://github.com/walkerchi/torch-sla)
- **Documentation**: [https://walkerchi.github.io/torch-sla/](https://walkerchi.github.io/torch-sla/)
- **PyPI**: [https://pypi.org/project/torch-sla/](https://pypi.org/project/torch-sla/)

## Citation

```bibtex
@techreport{chi2024torchsla,
  title = {torch-sla: Differentiable Sparse Linear Algebra with Sparse Tensor Parallelism and Adjoint Solvers for PyTorch},
  author = {Chi, Zhihao},
  year = {2024},
  institution = {arXiv},
  url = {https://github.com/walkerchi/torch-sla}
}
```

## License

MIT License

