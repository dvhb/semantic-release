@echo off

if "%GIT_PARAMS" == "" {
  commitlint -x "@commitlint/config-conventional" $*
} else {
  commitlint -x "@commitlint/config-conventional" $* -e %GIT_PARAMS%
}
