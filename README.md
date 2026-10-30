# Algorithm-Execution-Profiler
### **Basic Pipeline**

```text
Algorithm.jack -> (nand2tetris JackCompiler + Assembler) -> .hack
                                                              |
                                   N, data (--ram-init) ------|
                                                              v
                                                  C++ Emulator + Telemetry
                                                              |
                                          one CSV row per run (N, cycles, ...)
                                                              v
                                                  Python: regression + plot
```

### **Repo Layout**

```text
hack-profiler/
├── README.md
├── Makefile                 # builds the emulator; `make bench` runs everything
├── src/
│   ├── cpu.hpp / cpu.cpp    # fetch-decode-execute, ALU
│   ├── telemetry.hpp        # counters (cycles, RAM reads/writes)
│   └── main.cpp             # CLI, fast I/O, --ram-init, CSV output
├── jack/
│   ├── PrefixSum/Main.jack
│   ├── SlidingWindow/Main.jack
│   ├── NextGreater/Main.jack
│   ├── MergeSort/Main.jack
│   ├── BubbleSort/Main.jack # O(N²) control
│   └── ...
├── scripts/
│   ├── gen_input.py         # (optional) seeded input generator
│   ├── run_bench.sh         # loops over N, calls emulator, appends to CSV
│   └── analyze.py           # regression + plots + report
├── tests/
│   └── (Add, Max, Rect .hack files from the course + expected outputs)
├── results/                 # CSVs and plots (committed for the report)
└── docs/
    └── report.md            # final writeup
```