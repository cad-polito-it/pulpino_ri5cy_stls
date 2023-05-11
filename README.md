## Software Test Libraries
Software Test Libraries (STLs)<sup>1</sup> are a powerful resource for a variety of test applications. From manufacturing up to in-field test, functional test stimuli can be proven beneficial for achieving certain reliability thresholds. This becomes more evident especially in the domain of the safety critical applications where the respective standards mandate strict and high fault coverage thresholds to be met.

## Pulpino RI5CY
This collection of STLs was developed for the [pulpino SoC](https://github.com/pulp-platform/pulpino) using `ri5cy` as an underlying processor and **stuck-at** as a fault model. They can be easily ported to the software flow of the pulpino environment structure (i.e., `sw/apps`) and used accordingly with the integrated `CMake` build flow. Each `stl*` package has an abstract description about the development process stemming from the authors of the code acompanied with a table enlisting the achieved fault coverage percentages.

The processor was synthesized using the open [Nangate45nm](https://si2.org/open-cell-library/) technology library and the tests were written by engineers during the MSc course of Testing and Fault Tolerance.

## Citations
You can reference this STL suite by using the following `@misc` entry in Bibtex
```
@misc{misc:pulpino_stls,
    author       = "{CAD Group, Politecnico di Torino}",
    title        = "{Stuck-At STLs for pulpino-ri5cy}",
    howpublished = "\url{https://github.com/cad-polito-it/pulpino_ri5cy_stls}",
    year         = "2023"
}
```

## References
<sup>1</sup> : M. Psarakis, D. Gizopoulos, E. Sanchez and M. Sonza Reorda, "Microprocessor Software-Based Self-Testing," in IEEE Design & Test of Computers, vol. 27, no. 3, pp. 4-19, May-June 2010, doi: [10.1109/MDT.2010.5](https://ieeexplore.ieee.org/document/5396292).

## Contact Information
- [Nick Deligiannis](mailto:nikolaos.deligiannis@polito.it)
- [Riccardo Cantoro](mailto:riccardo.cantoro@polito.it)
- [Matteo Sonza Reorda](mailto:matteo.sonzareorda@polito.it)


![](https://upload.wikimedia.org/wikipedia/it/4/47/Logo_PoliTo_dal_2021_blu.png)
![](https://cad.polito.it/img/CAD_(original).png)

