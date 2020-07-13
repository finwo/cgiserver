#ifdef __cplusplus
extern "C" {
#endif

#include <string.h>

#include "argparse.h"
#include "http-parser.h"

static const char *const usage[] = {
  "cgiserver [options]",
  NULL,
};

int main(int argc, const char **argv) {

  struct argparse_option options[] = {
    OPT_HELP(),
    OPT_END(),
  };

  struct argparse argparse;
  argparse_init(&argparse, options, usage, 0);
  argparse_describe(&argparse, "\nBrief description", "\nAdditional");
  argc = argparse_parse(&argparse, argc, argv);

  return 42;
}

#ifdef __cplusplus
} // extern "C"
#endif
