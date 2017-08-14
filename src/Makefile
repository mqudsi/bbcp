# These are the default value for all archetures. The makefile appears
# cumbersome but only because we wanted to have one makefile that would
# work in a variety of disparate architecture and various release levels.
# Additionally, this make file is easily modifiable for test environments.
#

BINDIR     = ../bin/$(OSVER)

OBJDIR     = ../obj/$(OSVER)

ENVCPPFLAGS = -Dunix -D_BSD -D_ALL_SOURCE $(CPPFLAGS)
ENVCFLAGS  = $(ENVCPPFLAGS) $(CFLAGS)
ENVCXXFLAGS  =    $(ENVCPPFLAGS) -std=c++11 $(CXXFLAGS)

ENVINCLUDE = -I. -I/usr/local/include -I/usr/include 

AIXLIBS    =  -q64 -L/usr/lib -lz -lpthreads

BSDLIBS    =  -L/usr/lib -lz -pthread

LNXLIBS32  =  -lnsl -lpthread -lrt -lz -lcrypto
LNXLIBS64  =  -lnsl -lpthread -lrt -lz -lcrypto

MACLIBS    =  -dynamic -L/usr/lib -lz -lpthread -lcrypto

SUNLIBSA   =  /usr/local/lib/libz.a -lposix4 -lsocket -lnsl -lpthread
SUNLIBS    =  -L/usr/lib -lz -lposix4 -lsocket -lnsl -lpthread

MKPARMS  = doitall

NLGR       = -DNL_THREADSAFE

SUN64      = -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
SUNMT      = -D_REENTRANT -DOO_STD -mt
SUNOPT     = -g -fast $(SUNMT) $(SUN64) $(NLGR) -DSUN

SUNCC      = CC
SUNcc      = cc

S86OPT     = -D_REENTRANT -DOO_STD $(NLGR) -DSUN -DSUNX86 -Wno-deprecated
S86OPT     = $(SUNOPT) -DSUNX86 

S86CC      = CC
S86cc      = gcc

SUNGCC64   = -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
SUNGCCMT   = -D_REENTRANT -DOO_STD
SUNGCCOPT  = -L/usr/local/lib -g \
             $(SUNGCCMT) $(SUNGCC64) $(NLGR) -DSUN

SUNGCC     = g++
SUNGcc     = gcc

LNXOPT     = $(SUN64) $(NLGR) -D_REENTRANT -DOO_STD -DLINUX -Wno-deprecated \
             -D_GNU_SOURCE -g
LNXOPT_B   = $(SUN64) $(NLGR) -D_REENTRANT -DOO_STD -DLINUX \
             -D_GNU_SOURCE -g

LNXCC      = g++
LNXcc      = gcc

BSDOPT     = $(SUN64) $(NLGR) -D_REENTRANT -DOO_STD -DFREEBSD -pthread

BSDCC      = clang++
BSDcc      = clang

MACOPT     = $(SUN64) $(NLGR) -D_REENTRANT -DOO_STD -DMACOS -Wno-deprecated -g

MACCC      = g++
MACcc      = gcc

AIXCC      = xlC
AIXcc      = xlc

AIXOPT     = -q64 $(SUN64) $(NLGR) -D_REENTRANT -DOO_STD -DAIX -g

SOURCE =      \
     bbcp.cpp \
     bbcp_Args.cpp \
     bbcp_BuffPool.cpp \
     bbcp_C32.cpp \
     bbcp_ChkSum.cpp \
     bbcp_Config.cpp \
     bbcp_Emsg.cpp \
     bbcp_File.cpp \
     bbcp_FileSpec.cpp \
     bbcp_FileSystem.cpp \
     bbcp_FS_Null.cpp \
     bbcp_FS_Pipe.cpp \
     bbcp_FS_Unix.cpp \
     bbcp_IO.cpp \
     bbcp_IO_Null.cpp \
     bbcp_IO_Pipe.cpp \
     bbcp_Link.cpp \
     bbcp_LogFile.cpp \
     bbcp_MD5.cpp \
     bbcp_MD5_openssl.cpp \
     bbcp_NetAddr.cpp \
     bbcp_NetAddrInfo.cpp \
     bbcp_NetLogger.cpp \
     bbcp_Network.cpp \
     bbcp_Node.cpp \
     bbcp_ProcMon.cpp \
     bbcp_ProgMon.cpp \
     bbcp_Protocol.cpp \
     bbcp_Pthread.cpp \
     bbcp_RTCopy.cpp \
     bbcp_Set.cpp \
     bbcp_Stream.cpp \
     bbcp_System.cpp \
     bbcp_Timer.cpp \
     bbcp_Version.cpp \
     bbcp_ZCX.cpp \
     NetLogger.c

OBJECT =      \
     $(OBJDIR)/bbcp.o \
     $(OBJDIR)/bbcp_Args.o \
     $(OBJDIR)/bbcp_BuffPool.o \
     $(OBJDIR)/bbcp_C32.o \
     $(OBJDIR)/bbcp_ChkSum.o \
     $(OBJDIR)/bbcp_Config.o \
     $(OBJDIR)/bbcp_Emsg.o \
     $(OBJDIR)/bbcp_File.o \
     $(OBJDIR)/bbcp_FileSpec.o \
     $(OBJDIR)/bbcp_FileSystem.o \
     $(OBJDIR)/bbcp_FS_Null.o \
     $(OBJDIR)/bbcp_FS_Pipe.o \
     $(OBJDIR)/bbcp_FS_Unix.o \
     $(OBJDIR)/bbcp_IO.o \
     $(OBJDIR)/bbcp_IO_Null.o \
     $(OBJDIR)/bbcp_IO_Pipe.o \
     $(OBJDIR)/bbcp_Link.o \
     $(OBJDIR)/bbcp_LogFile.o \
     $(OBJDIR)/bbcp_MD5.o \
     $(OBJMD5) \
     $(OBJDIR)/bbcp_NetLogger.o \
     $(OBJDIR)/bbcp_NetAddr.o \
     $(OBJDIR)/bbcp_NetAddrInfo.o \
     $(OBJDIR)/bbcp_Network.o \
     $(OBJDIR)/bbcp_Node.o \
     $(OBJDIR)/bbcp_ProcMon.o \
     $(OBJDIR)/bbcp_ProgMon.o \
     $(OBJDIR)/bbcp_Protocol.o \
     $(OBJDIR)/bbcp_Pthread.o \
     $(OBJDIR)/bbcp_RTCopy.o \
     $(OBJDIR)/bbcp_Set.o \
     $(OBJDIR)/bbcp_Stream.o \
     $(OBJDIR)/bbcp_System.o \
     $(OBJDIR)/bbcp_Timer.o \
     $(OBJDIR)/bbcp_Version.o \
     $(OBJDIR)/bbcp_ZCX.o \
     $(OBJDIR)/NetLogger.o

TARGET  = $(BINDIR)/bbcp


all:
	@+make `uname` OSVER=`../MakeSname` RELEASE=`../MakeSname -r`
	@echo Make done.

doitall: $(TARGET)

clean:
	@+make cleanall OSVER=`../MakeSname`

cleanall:
	@rm -f $(OBJECT) $(BINDIR)/core $(TARGET) $(OBJDIR)/*

usage:
	@echo "Usage: make [echo | usage] [OPT=-DSUN6] [Sungcc]"

echo:		
	@for f in $(SOURCE); do \
	echo $$f ;\
	done

AIX:
	@+make $(MKPARMS) \
	CC=$(AIXCC) \
	BB=$(AIXcc) \
	CFLAGS="$(ENVCFLAGS) $(AIXOPT)" \
	CXXFLAGS="$(ENVCXXFLAGS) $(AIXOPT)" \
	INCLUDE="$(ENVINCLUDE)"  \
	LIBS="$(AIXLIBS)"

FreeBSD:
	@+make $(MKPARMS)  \
	CC=$(BSDCC) \
	BB=$(BSDcc) \
	CXXFLAGS="$(ENVCXXFLAGS) $(BSDOPT) $(OPT)" \
	INCLUDE="$(ENVINCLUDE)" \
	LIBS="$(BSDLIBS)"

Linux:
	@+make makeLinux`/bin/uname -m` \
	MD5HEADER=bbcp_MD5_openssl.h \
	OBJMD5="$(OBJDIR)/bbcp_MD5_openssl.o"

makeLinuxi686:
makeLinuxi386:
	@+make $(MKPARMS)  \
	CC=$(LNXCC) \
	BB=$(LNXcc) \
	CXXFLAGS="$(ENVCXXFLAGS) $(LNXOPT)" \
	CFLAGS="$(ENVCFLAGS) $(LNXOPT_B)" \
	INCLUDE="$(ENVINCLUDE)" \
	LIBS="$(LNXLIBS32)"

makeLinuxx86_64:
	echo "$(LNXLIBS64)"
	@+make $(MKPARMS) RR=$(RELNUM) \
	CC=$(LNXCC) \
	BB=$(LNXcc) \
	CXXFLAGS="$(ENVCXXFLAGS) $(LNXOPT)" \
	CFLAGS="$(ENVCFLAGS) $(LNXOPT_B)" \
	INCLUDE="$(ENVINCLUDE)" \
	LIBS="$(LNXLIBS64)"

Darwin:
	@MACOSX_DEPLOYMENT_TARGET=10.5;\
	+make $(MKPARMS)  \
	CC=$(MACCC) \
	BB=$(MACcc) \
	CXXFLAGS="$(ENVCXXFLAGS) $(MACOPT) $(OPT)" \
	INCLUDE="$(ENVINCLUDE)" \
	LIBS="$(MACLIBS)" \
	MD5HEADER=bbcp_MD5_openssl.h \
	OBJMD5="$(OBJDIR)/bbcp_MD5_openssl.o"


UNICOS/mp:
	@+make $(MKPARMS)  \
	CC=$(LNXCC) \
	BB=$(LNXcc) \
	CXXFLAGS="$(ENVCXXFLAGS) $(LNXOPT)" \
	CFLAGS="$(ENVCFLAGS) $(LNXOPT_B)" \
	INCLUDE="$(ENVINCLUDE)" \
	LIBS="$(LNXLIBS)"

SunOS:
	@+make $(MKPARMS) \
	CC=$(SUNCC) \
	BB=$(SUNcc) \
	CXXFLAGS="$(ENVCXXFLAGS) $(SUNOPT) $(OPT) -DRELEASE=$(RELEASE)" \
	INCLUDE="$(ENVINCLUDE)" \
	LIBS="$(SUNLIBS)"

SunX86:
	@+make $(MKPARMS) \
	CC=$(S86CC) \
	BB=$(S86cc) \
	CXXFLAGS="$(ENVCXXFLAGS) $(S86OPT) $(OPT) -DRELEASE=$(RELEASE)" \
	INCLUDE="$(ENVINCLUDE)" \
	LIBS="$(SUNLIBS)"

Sungcc:
	@+make $(MKPARMS) \
	CC=$(SUNGCC) \
	BB=$(SUNGcc) \
	CXXFLAGS="$(ENVCXXFLAGS) $(SUNGCCOPT) $(OPT) -DRELEASE=$(RELEASE)" \
	INCLUDE="$(ENVINCLUDE)" \
	LIBS="$(SUNLIBS)" \
	OSVER=`../MakeSname`

$(TARGET): $(OBJECT)
	@echo Creating executable $(TARGET) ...
	@$(CC) $(OBJECT) $(LIBS) -o $(TARGET)

$(OBJDIR)/bbcp.o: bbcp.cpp bbcp_Args.h bbcp_Config.h bbcp_Debug.h bbcp_FileSpec.h \
                  bbcp_LogFile.h bbcp_Node.h bbcp_Protocol.h bbcp_System.h \
                  bbcp_Headers.h
	@echo Compiling bbcp.cpp
	@$(CC) -c $(CXXFLAGS) $(INCLUDE) $(*F).cpp -o $(OBJDIR)/$(*F).o

$(OBJDIR)/bbcp_Args.o: bbcp_Args.cpp bbcp_Args.h bbcp_Config.h bbcp_Stream.h
	@echo Compiling bbcp_Args.cpp
	@$(CC) -c $(CXXFLAGS) $(INCLUDE) $(*F).cpp -o $(OBJDIR)/$(*F).o

$(OBJDIR)/bbcp_BuffPool.o: bbcp_BuffPool.cpp bbcp_BuffPool.h bbcp_Debug.h \
                           bbcp_Emsg.h bbcp_Pthread.h bbcp_Headers.h
	@echo Compiling bbcp_BuffPool.cpp
	@$(CC) -c $(CXXFLAGS) $(INCLUDE) $(*F).cpp -o $(OBJDIR)/$(*F).o

$(OBJDIR)/bbcp_C32.o: bbcp_C32.cpp bbcp_C32.h bbcp_ChkSum.h bbcp_Endian.h
	@echo Compiling bbcp_C32.cpp
	@$(CC) -c $(CXXFLAGS) $(INCLUDE) $(*F).cpp -o $(OBJDIR)/$(*F).o

$(OBJDIR)/bbcp_ChkSum.o: bbcp_ChkSum.cpp bbcp_ChkSum.h bbcp_Endian.h \
                         bbcp_A32.h bbcp_A32_zlib.h bbcp_C32.h bbcp_MD5.h $(MD5HEADER)
	@echo Compiling bbcp_ChkSum.cpp
	@$(CC) -c $(CXXFLAGS) $(INCLUDE) $(*F).cpp -o $(OBJDIR)/$(*F).o

$(OBJDIR)/bbcp_Config.o: bbcp_Config.cpp bbcp_Config.h bbcp_Args.h \
                         bbcp_Debug.h bbcp_Emsg.h bbcp_FileSpec.h bbcp_LogFile.h \
                         bbcp_NetLogger.h bbcp_Network.h bbcp_Platform.h \
                         bbcp_Stream.h bbcp_System.h bbcp_Version.h \
                         bbcp_Headers.h  bbcp_Pthread.h
	@echo Compiling bbcp_Config.cpp
	@$(CC) -c $(CXXFLAGS) $(INCLUDE) $(*F).cpp -o $(OBJDIR)/$(*F).o

$(OBJDIR)/bbcp_Emsg.o: bbcp_Emsg.cpp bbcp_Emsg.h bbcp_Debug.h bbcp_Platform.h \
                       bbcp_Headers.h
	@echo Compiling bbcp_Emsg.cpp
	@$(CC) -c $(CXXFLAGS) $(INCLUDE) $(*F).cpp -o $(OBJDIR)/$(*F).o

$(OBJDIR)/bbcp_File.o: bbcp_File.cpp bbcp_File.h bbcp_IO.h bbcp_BuffPool.h \
                       bbcp_Config.h bbcp_Debug.h bbcp_Emsg.h bbcp_Pthread.h \
                       bbcp_Platform.h bbcp_Headers.h bbcp_ChkSum.h \
                       bbcp_RTCopy.h
	@echo Compiling bbcp_File.cpp
	@$(CC) -c $(CXXFLAGS) $(INCLUDE) $(*F).cpp -o $(OBJDIR)/$(*F).o

$(OBJDIR)/bbcp_FileSpec.o: bbcp_FileSpec.cpp bbcp_FileSpec.h bbcp_Config.h \
                           bbcp_Emsg.h bbcp_FileSystem.h bbcp_FS_Unix.h \
                           bbcp_Pthread.h
	@echo Compiling bbcp_FileSpec.cpp
	@$(CC) -c $(CXXFLAGS) $(INCLUDE) $(*F).cpp -o $(OBJDIR)/$(*F).o

$(OBJDIR)/bbcp_FileSystem.o: bbcp_FileSystem.cpp bbcp_FileSystem.h \
                             bbcp_FS_Null.h bbcp_FS_Pipe.h bbcp_FS_Unix.h
	@echo Compiling bbcp_FileSystem.cpp
	@$(CC) -c $(CXXFLAGS) $(INCLUDE) $(*F).cpp -o $(OBJDIR)/$(*F).o

$(OBJDIR)/bbcp_FS_Null.o: bbcp_FS_Null.cpp bbcp_FS_Null.h \
                          bbcp_IO_Null.h bbcp_FileSystem.h bbcp_System.h \
                          bbcp_Platform.h bbcp_Pthread.h
	@echo Compiling bbcp_FS_Null.cpp
	@$(CC) -c $(CXXFLAGS) $(INCLUDE) $(*F).cpp -o $(OBJDIR)/$(*F).o

$(OBJDIR)/bbcp_FS_Pipe.o: bbcp_FS_Pipe.cpp  bbcp_FS_Pipe.h    bbcp_FS_Unix.h\
                          bbcp_IO_Pipe.h  bbcp_FileSystem.h bbcp_System.h \
                          bbcp_Platform.h bbcp_Pthread.h    bbcp_Emsg.h
	@echo Compiling bbcp_FS_Pipe.cpp
	@$(CC) -c $(CXXFLAGS) $(INCLUDE) $(*F).cpp -o $(OBJDIR)/$(*F).o

$(OBJDIR)/bbcp_FS_Unix.o: bbcp_FS_Unix.cpp bbcp_FS_Unix.h bbcp_FileSystem.h \
                          bbcp_Config.h  bbcp_IO.h      bbcp_IO_Null.h \
                          bbcp_Platform.h bbcp_System.h bbcp_Pthread.h
	@echo Compiling bbcp_FS_Unix.cpp
	@$(CC) -c $(CXXFLAGS) $(INCLUDE) $(*F).cpp -o $(OBJDIR)/$(*F).o

$(OBJDIR)/bbcp_IO.o: bbcp_IO.cpp bbcp_IO.h bbcp_NetLogger.h bbcp_Timer.h
	@echo Compiling bbcp_IO.cpp
	@$(CC) -c $(CXXFLAGS) $(INCLUDE) $(*F).cpp -o $(OBJDIR)/$(*F).o

$(OBJDIR)/bbcp_IO_Null.o: bbcp_IO_Null.cpp bbcp_IO_Null.h bbcp_IO.h
	@echo Compiling bbcp_IO_Null.cpp
	@$(CC) -c $(CXXFLAGS) $(INCLUDE) $(*F).cpp -o $(OBJDIR)/$(*F).o

$(OBJDIR)/bbcp_IO_Pipe.o: bbcp_IO_Pipe.cpp bbcp_IO_Pipe.h bbcp_IO.h \
                          bbcp_System.h
	@echo Compiling bbcp_IO_Pipe.cpp
	@$(CC) -c $(CXXFLAGS) $(INCLUDE) $(*F).cpp -o $(OBJDIR)/$(*F).o

$(OBJDIR)/bbcp_Link.o:  bbcp_Link.cpp bbcp_Link.h bbcp_File.h bbcp_IO.h \
                        bbcp_BuffPool.h bbcp_ChkSum.h  bbcp_Config.h \
                        bbcp_Debug.h bbcp_Emsg.h \
                        bbcp_Link.h bbcp_Network.h bbcp_Platform.h \
                        bbcp_Timer.h
	@echo Compiling bbcp_Link.cpp
	@$(CC) -c $(CXXFLAGS) $(INCLUDE) $(*F).cpp -o $(OBJDIR)/$(*F).o

$(OBJDIR)/bbcp_LogFile.o:  bbcp_LogFile.cpp bbcp_LogFile.h bbcp_Pthread.h \
                           bbcp_Debug.h bbcp_Emsg.h bbcp_Platform.h \
                           bbcp_Headers.h bbcp_Timer.h
	@echo Compiling bbcp_LogFile.cpp
	@$(CC) -c $(CXXFLAGS) $(INCLUDE) $(*F).cpp -o $(OBJDIR)/$(*F).o

$(OBJDIR)/bbcp_MD5.o: bbcp_MD5.cpp bbcp_MD5.h bbcp_ChkSum.h bbcp_Endian.h
	@echo Compiling bbcp_MD5.cpp
	@$(CC) -c $(CXXFLAGS) $(INCLUDE) $(*F).cpp -o $(OBJDIR)/$(*F).o

$(OBJDIR)/bbcp_MD5_openssl.o: bbcp_MD5_openssl.cpp bbcp_MD5_openssl.h bbcp_ChkSum.h bbcp_Endian.h
	@echo Compiling bbcp_MD5_openssl.cpp
	@$(CC) -c $(CXXFLAGS) $(INCLUDE) $(*F).cpp -o $(OBJDIR)/$(*F).o

$(OBJDIR)/bbcp_NetLogger.o:  bbcp_NetLogger.cpp bbcp_NetLogger.h NetLogger.h
	@echo Compiling bbcp_Netlogger.c
	@$(CC) -c $(CXXFLAGS) $(INCLUDE) $(*F).cpp -o $(OBJDIR)/$(*F).o

$(OBJDIR)/bbcp_NetAddr.o:  bbcp_NetAddr.cpp bbcp_NetAddr.h bbcp_NetAddrInfo.h \
                           bbcp_NetSockAddr.h
	@echo Compiling bbcp_NetAddr.cpp
	@$(CC) -c $(CXXFLAGS) $(INCLUDE) $(*F).cpp -o $(OBJDIR)/$(*F).o

$(OBJDIR)/bbcp_NetAddrInfo.o:  bbcp_NetAddrInfo.cpp bbcp_NetAddrInfo.h \
                               bbcp_NetSockAddr.h
	@echo Compiling bbcp_NetAddrInfo.cpp
	@$(CC) -c $(CXXFLAGS) $(INCLUDE) $(*F).cpp -o $(OBJDIR)/$(*F).o

$(OBJDIR)/bbcp_Network.o:  bbcp_Network.cpp bbcp_Network.h bbcp_Debug.h \
                           bbcp_Emsg.h bbcp_Link.h bbcp_Pthread.h \
                           bbcp_NetAddr.h bbcp_NetAddrInfo.h  bbcp_Platform.h
	@echo Compiling bbcp_Network.cpp
	@$(CC) -c $(CXXFLAGS) $(INCLUDE) $(*F).cpp -o $(OBJDIR)/$(*F).o

$(OBJDIR)/bbcp_Node.o: bbcp_Node.cpp bbcp_Node.h bbcp_Config.h bbcp_Emsg.h \
                       bbcp_Debug.h bbcp_File.h bbcp_FileSpec.h bbcp_Link.h \
                       bbcp_BuffPool.h bbcp_Network.h bbcp_Protocol.h \
                       bbcp_ProcMon.h bbcp_ProgMon.h bbcp_Stream.h \
                       bbcp_System.h bbcp_ZCX.h bbcp_Headers.h
	@echo Compiling bbcp_Node.cpp
	@$(CC) -c $(CXXFLAGS) $(INCLUDE) $(*F).cpp -o $(OBJDIR)/$(*F).o

$(OBJDIR)/bbcp_ProcMon.o: bbcp_ProcMon.cpp bbcp_ProcMon.h bbcp_Debug.h \
                          bbcp_Emsg.h bbcp_File.h bbcp_Pthread.h bbcp_Headers.h
	@echo Compiling bbcp_ProcMon.cpp
	@$(CC) -c $(CXXFLAGS) $(INCLUDE) $(*F).cpp -o $(OBJDIR)/$(*F).o

$(OBJDIR)/bbcp_ProgMon.o: bbcp_ProgMon.cpp bbcp_ProgMon.h bbcp_Config.h \
                          bbcp_Debug.h bbcp_File.h bbcp_Headers.h \
                          bbcp_Pthread.h bbcp_Timer.h bbcp_ZCX.h
	@echo Compiling bbcp_ProgMon.cpp
	@$(CC) -c $(CXXFLAGS) $(INCLUDE) $(*F).cpp -o $(OBJDIR)/$(*F).o

$(OBJDIR)/bbcp_Protocol.o: bbcp_Protocol.cpp bbcp_Protocol.h bbcp_Config.h  \
                           bbcp_Node.h bbcp_FileSpec.h bbcp_FileSystem.h  \
                           bbcp_IO.h bbcp_File.h bbcp_Link.h bbcp_Debug.h \
                           bbcp_Pthread.h bbcp_Stream.h bbcp_Emsg.h \
                           bbcp_Network.h bbcp_Version.h bbcp_Headers.h
	@echo Compiling bbcp_Protocol.cpp
	@$(CC) -c $(CXXFLAGS) $(INCLUDE) $(*F).cpp -o $(OBJDIR)/$(*F).o

$(OBJDIR)/bbcp_Pthread.o: bbcp_Pthread.cpp bbcp_Pthread.h
	@echo Compiling bbcp_Pthread.cpp
	@$(CC) -c $(CXXFLAGS) $(INCLUDE) $(*F).cpp -o $(OBJDIR)/$(*F).o

$(OBJDIR)/bbcp_RTCopy.o: bbcp_RTCopy.cpp bbcp_RTCopy.h bbcp_Config.h \
                         bbcp_Emsg.h bbcp_FileSystem.h bbcp_Pthread.h
	@echo Compiling bbcp_RTCopy.cpp
	@$(CC) -c $(CXXFLAGS) $(INCLUDE) $(*F).cpp -o $(OBJDIR)/$(*F).o

$(OBJDIR)/bbcp_Set.o: bbcp_Set.cpp bbcp_C32.h
	@echo Compiling bbcp_Set.cpp
	@$(CC) -c $(CXXFLAGS) $(INCLUDE) $(*F).cpp -o $(OBJDIR)/$(*F).o

$(OBJDIR)/bbcp_Stream.o: bbcp_Stream.cpp bbcp_Stream.h bbcp_Config.h bbcp_Debug.h \
                         bbcp_Emsg.h bbcp_System.h
	@echo Compiling bbcp_Stream.cpp
	@$(CC) -c $(CXXFLAGS) $(INCLUDE) $(*F).cpp -o $(OBJDIR)/$(*F).o

$(OBJDIR)/bbcp_System.o: bbcp_System.cpp bbcp_System.h bbcp_Config.h \
                         bbcp_Debug.h bbcp_Emsg.h bbcp_Platform.h bbcp_Pthread.h
	@echo Compiling bbcp_System.cpp
	@$(CC) -c $(CXXFLAGS) $(INCLUDE) $(*F).cpp -o $(OBJDIR)/$(*F).o

$(OBJDIR)/bbcp_Timer.o: bbcp_Timer.cpp bbcp_Timer.h
	@echo Compiling bbcp_Timer.cpp
	@$(CC) -c $(CXXFLAGS) $(INCLUDE) $(*F).cpp -o $(OBJDIR)/$(*F).o

$(OBJDIR)/bbcp_Version.o: bbcp_Version.cpp bbcp_Version.h bbcp_Config.h bbcp_Emsg.h
	@echo Compiling bbcp_Version.cpp
	@$(CC) -c $(CXXFLAGS) $(INCLUDE) $(*F).cpp -o $(OBJDIR)/$(*F).o

$(OBJDIR)/bbcp_ZCX.o: bbcp_ZCX.cpp bbcp_ZCX.h bbcp_BuffPool.h bbcp_Emsg.h
	@echo Compiling bbcp_ZCX.cpp
	@$(CC) -c $(CXXFLAGS) $(INCLUDE) $(*F).cpp -o $(OBJDIR)/$(*F).o

$(OBJDIR)/NetLogger.o: NetLogger.c NetLogger.h
	@echo Compiling NetLogger.c
	@$(BB) -c $(CFLAGS) $(INCLUDE) $(*F).c -o $(OBJDIR)/$(*F).o
