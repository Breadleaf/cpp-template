#include <print>
#include <string>
#include <vector>

auto main([[maybe_unused]] int argc, [[maybe_unused]] char **argv, char **envp) -> int {
	auto envp_end = envp;
	while (*envp_end)
		++envp_end;
	std::vector<std::string> env(envp, envp_end);
	std::print("{}\n", env);
	return EXIT_SUCCESS;
}
