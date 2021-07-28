# GNU Make workspace makefile autogenerated by Premake

.NOTPARALLEL:

ifndef config
  config=debug
endif

ifndef verbose
  SILENT = @
endif

ifeq ($(config),debug)
  Glad_config = debug
  GLFW_config = debug
  ImGui_config = debug
  Yaml_cpp_config = debug
  zxShaderViz_config = debug
endif
ifeq ($(config),release)
  Glad_config = release
  GLFW_config = release
  ImGui_config = release
  Yaml_cpp_config = release
  zxShaderViz_config = release
endif

PROJECTS := Glad GLFW ImGui Yaml-cpp zxShaderViz

.PHONY: all clean help $(PROJECTS) 

all: $(PROJECTS)

Glad:
ifneq (,$(Glad_config))
	@echo "==== Building Glad ($(Glad_config)) ===="
	@${MAKE} --no-print-directory -C build/ThirdParty/Glad -f Makefile config=$(Glad_config)
endif

GLFW:
ifneq (,$(GLFW_config))
	@echo "==== Building GLFW ($(GLFW_config)) ===="
	@${MAKE} --no-print-directory -C build/ThirdParty/GLFW -f Makefile config=$(GLFW_config)
endif

ImGui:
ifneq (,$(ImGui_config))
	@echo "==== Building ImGui ($(ImGui_config)) ===="
	@${MAKE} --no-print-directory -C build/ThirdParty/ImGui -f Makefile config=$(ImGui_config)
endif

Yaml-cpp:
ifneq (,$(Yaml_cpp_config))
	@echo "==== Building Yaml-cpp ($(Yaml_cpp_config)) ===="
	@${MAKE} --no-print-directory -C build/ThirdParty/YAML -f Makefile config=$(Yaml_cpp_config)
endif

zxShaderViz: Glad GLFW ImGui Yaml-cpp
ifneq (,$(zxShaderViz_config))
	@echo "==== Building zxShaderViz ($(zxShaderViz_config)) ===="
	@${MAKE} --no-print-directory -C build -f Makefile config=$(zxShaderViz_config)
endif

clean:
	@${MAKE} --no-print-directory -C build/ThirdParty/Glad -f Makefile clean
	@${MAKE} --no-print-directory -C build/ThirdParty/GLFW -f Makefile clean
	@${MAKE} --no-print-directory -C build/ThirdParty/ImGui -f Makefile clean
	@${MAKE} --no-print-directory -C build/ThirdParty/YAML -f Makefile clean
	@${MAKE} --no-print-directory -C build -f Makefile clean

help:
	@echo "Usage: make [config=name] [target]"
	@echo ""
	@echo "CONFIGURATIONS:"
	@echo "  debug"
	@echo "  release"
	@echo ""
	@echo "TARGETS:"
	@echo "   all (default)"
	@echo "   clean"
	@echo "   Glad"
	@echo "   GLFW"
	@echo "   ImGui"
	@echo "   Yaml-cpp"
	@echo "   zxShaderViz"
	@echo ""
	@echo "For more information, see https://github.com/premake/premake-core/wiki"