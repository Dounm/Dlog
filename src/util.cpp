/**
* @file util.h
* @author Chong Niu <niuchong893184@gmail.com>
*/

#include "util.h"
#include <unistd.h>
#include <string>
#include <sstream>

namespace dlog {

extern void get_curr_proc_info(std::string* pid, std::string* proc_name) {
    std::stringstream ss;
    ss << getpid();
    ss >> *pid;
    *proc_name = ::__progname;
}

}
