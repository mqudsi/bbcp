project('bbcp', ['cpp'], default_options: ['cpp_std=c++11'])

add_global_arguments(['-isystem/usr/local/include', '-DREENTRANT'], language: ['cpp'])
add_global_link_arguments(['-L/usr/local/lib'], language: ['cpp'])

safe_args = []
# safe_args = ['-Wall', '-Weffc++', '-pedantic',
#     '-pedantic-errors', '-Wextra',  '-Wall', '-Waggregate-return', '-Wcast-align',
#     '-Wcast-qual',  '-Wchar-subscripts',  '-Wcomment', '-Wconversion',
#     '-Wdisabled-optimization',
#     '-Werror', '-Wfloat-equal',  '-Wformat',  '-Wformat=2',
#     '-Wformat-nonliteral', '-Wformat-security',
#     '-Wformat-y2k',
#     '-Wimport',  '-Winit-self',  '-Winline',
#     '-Winvalid-pch',
#     '-Wlong-long', '-Wmissing-braces',
#     '-Wno-missing-field-initializers', '-Wmissing-format-attribute',
#     '-Wmissing-include-dirs', '-Wmissing-noreturn',
#     '-Wpacked',  '-Wparentheses',  '-Wpointer-arith',
#     '-Wredundant-decls', '-Wreturn-type',
#     '-Wsequence-point',  '-Wshadow', '-Wsign-compare',  '-Wstack-protector',
#     '-Wstrict-aliasing', '-Wstrict-aliasing=2', '-Wswitch',  '-Wswitch-default',
#     '-Wswitch-enum', '-Wtrigraphs',  '-Wuninitialized',
#     '-Wunknown-pragmas',  '-Wunreachable-code',
#     '-Wunused-function',  '-Wunused-label', '-Wno-unused-parameter',
#     '-Wunused-value',  '-Wunused-variable',  '-Wvariadic-macros',
#     '-Wvolatile-register-var',  '-Wwrite-strings', '-Wfatal-errors',
#     '-Wno-deprecated-declarations']

project_root = include_directories('src/')

cxx = meson.get_compiler('cpp')

lcrypto = cxx.find_library('crypto', required : false)
lrt = cxx.find_library('rt', required : false)
lz = cxx.find_library('z', required : false)
pthreads = dependency('threads')

executable('bbcp', [
  'src/bbcp.cpp',
  'src/bbcp_Args.cpp',
  'src/bbcp_BuffPool.cpp',
  'src/bbcp_C32.cpp',
  'src/bbcp_ChkSum.cpp',
  'src/bbcp_Config.cpp',
  'src/bbcp_Emsg.cpp',
  'src/bbcp_File.cpp',
  'src/bbcp_FileSpec.cpp',
  'src/bbcp_FileSystem.cpp',
  'src/bbcp_FS_Null.cpp',
  'src/bbcp_FS_Pipe.cpp',
  'src/bbcp_FS_Unix.cpp',
  'src/bbcp_IO.cpp',
  'src/bbcp_IO_Null.cpp',
  'src/bbcp_IO_Pipe.cpp',
  'src/bbcp_Link.cpp',
  'src/bbcp_LogFile.cpp',
  'src/bbcp_MD5.cpp',
  'src/bbcp_MD5_openssl.cpp',
  'src/bbcp_NetAddr.cpp',
  'src/bbcp_NetAddrInfo.cpp',
  'src/bbcp_NetLogger.cpp',
  'src/bbcp_Network.cpp',
  'src/bbcp_Node.cpp',
  'src/bbcp_ProcMon.cpp',
  'src/bbcp_ProgMon.cpp',
  'src/bbcp_Protocol.cpp',
  'src/bbcp_Pthread.cpp',
  'src/bbcp_RTCopy.cpp',
  'src/bbcp_Set.cpp',
  'src/bbcp_Stream.cpp',
  'src/bbcp_System.cpp',
  'src/bbcp_Timer.cpp',
  'src/bbcp_Version.cpp',
  'src/bbcp_ZCX.cpp',
  ],
  include_directories: [
  ],
  link_with: [
  ],
  dependencies: [
    pthreads,
    lrt,
    lz,
    lcrypto
  ],
  cpp_args: [safe_args]
)

