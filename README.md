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
