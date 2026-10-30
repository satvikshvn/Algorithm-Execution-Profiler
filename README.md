# Algorithm-Execution-Profiler
<br>
Basic Pipeline<br>
Algorithm.jack -> (nand2tetris JackCompiler + Assembler) -> .hack<br>
                                                              |<br>
                                   N, data (--ram-init) ------|<br>
                                                              v<br>
                                                  C++ Emulator + Telemetry<br>
                                                              |<br>
                                          one CSV row per run (N, cycles, ...)<br>
                                                              v<br>
                                                  Python: regression + plot<br>
