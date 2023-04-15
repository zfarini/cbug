# 1 "main.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 362 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "main.c" 2
# 13 "main.c"
# 1 "./cbug.h" 1
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/stdio.h" 1 3 4
# 64 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/stdio.h" 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_stdio.h" 1 3 4
# 68 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_stdio.h" 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h" 1 3 4
# 608 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h" 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h" 1 3 4
# 609 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h" 2 3 4
# 674 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h" 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_posix_availability.h" 1 3 4
# 675 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h" 2 3 4
# 69 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_stdio.h" 2 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h" 1 3 4
# 242 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h" 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h" 1 3 4
# 243 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h" 2 3 4
# 70 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_stdio.h" 2 3 4

# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types.h" 1 3 4
# 27 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types.h" 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types.h" 1 3 4
# 33 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types.h" 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/_types.h" 1 3 4
# 32 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/_types.h" 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/_types.h" 1 3 4
# 37 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/_types.h" 3 4
typedef signed char __int8_t;



typedef unsigned char __uint8_t;
typedef short __int16_t;
typedef unsigned short __uint16_t;
typedef int __int32_t;
typedef unsigned int __uint32_t;
typedef long long __int64_t;
typedef unsigned long long __uint64_t;

typedef long __darwin_intptr_t;
typedef unsigned int __darwin_natural_t;
# 70 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/_types.h" 3 4
typedef int __darwin_ct_rune_t;





typedef union {
 char __mbstate8[128];
 long long _mbstateL;
} __mbstate_t;

typedef __mbstate_t __darwin_mbstate_t;


typedef long int __darwin_ptrdiff_t;







typedef long unsigned int __darwin_size_t;





typedef __builtin_va_list __darwin_va_list;





typedef int __darwin_wchar_t;




typedef __darwin_wchar_t __darwin_rune_t;


typedef int __darwin_wint_t;




typedef unsigned long __darwin_clock_t;
typedef __uint32_t __darwin_socklen_t;
typedef long __darwin_ssize_t;
typedef long __darwin_time_t;
# 33 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/_types.h" 2 3 4
# 34 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types.h" 2 3 4
# 55 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types.h" 3 4
typedef __int64_t __darwin_blkcnt_t;
typedef __int32_t __darwin_blksize_t;
typedef __int32_t __darwin_dev_t;
typedef unsigned int __darwin_fsblkcnt_t;
typedef unsigned int __darwin_fsfilcnt_t;
typedef __uint32_t __darwin_gid_t;
typedef __uint32_t __darwin_id_t;
typedef __uint64_t __darwin_ino64_t;

typedef __darwin_ino64_t __darwin_ino_t;



typedef __darwin_natural_t __darwin_mach_port_name_t;
typedef __darwin_mach_port_name_t __darwin_mach_port_t;
typedef __uint16_t __darwin_mode_t;
typedef __int64_t __darwin_off_t;
typedef __int32_t __darwin_pid_t;
typedef __uint32_t __darwin_sigset_t;
typedef __int32_t __darwin_suseconds_t;
typedef __uint32_t __darwin_uid_t;
typedef __uint32_t __darwin_useconds_t;
typedef unsigned char __darwin_uuid_t[16];
typedef char __darwin_uuid_string_t[37];


# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_types.h" 1 3 4
# 57 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_types.h" 3 4
struct __darwin_pthread_handler_rec {
 void (*__routine)(void *);
 void *__arg;
 struct __darwin_pthread_handler_rec *__next;
};

struct _opaque_pthread_attr_t {
 long __sig;
 char __opaque[56];
};

struct _opaque_pthread_cond_t {
 long __sig;
 char __opaque[40];
};

struct _opaque_pthread_condattr_t {
 long __sig;
 char __opaque[8];
};

struct _opaque_pthread_mutex_t {
 long __sig;
 char __opaque[56];
};

struct _opaque_pthread_mutexattr_t {
 long __sig;
 char __opaque[8];
};

struct _opaque_pthread_once_t {
 long __sig;
 char __opaque[8];
};

struct _opaque_pthread_rwlock_t {
 long __sig;
 char __opaque[192];
};

struct _opaque_pthread_rwlockattr_t {
 long __sig;
 char __opaque[16];
};

struct _opaque_pthread_t {
 long __sig;
 struct __darwin_pthread_handler_rec *__cleanup_stack;
 char __opaque[8176];
};

typedef struct _opaque_pthread_attr_t __darwin_pthread_attr_t;
typedef struct _opaque_pthread_cond_t __darwin_pthread_cond_t;
typedef struct _opaque_pthread_condattr_t __darwin_pthread_condattr_t;
typedef unsigned long __darwin_pthread_key_t;
typedef struct _opaque_pthread_mutex_t __darwin_pthread_mutex_t;
typedef struct _opaque_pthread_mutexattr_t __darwin_pthread_mutexattr_t;
typedef struct _opaque_pthread_once_t __darwin_pthread_once_t;
typedef struct _opaque_pthread_rwlock_t __darwin_pthread_rwlock_t;
typedef struct _opaque_pthread_rwlockattr_t __darwin_pthread_rwlockattr_t;
typedef struct _opaque_pthread_t *__darwin_pthread_t;
# 81 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types.h" 2 3 4
# 28 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types.h" 2 3 4
# 40 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types.h" 3 4
typedef int __darwin_nl_item;
typedef int __darwin_wctrans_t;

typedef __uint32_t __darwin_wctype_t;
# 72 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_stdio.h" 2 3 4



# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_va_list.h" 1 3 4
# 31 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_va_list.h" 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/types.h" 1 3 4
# 35 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/types.h" 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/types.h" 1 3 4
# 76 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/types.h" 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int8_t.h" 1 3 4
# 30 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int8_t.h" 3 4
typedef signed char int8_t;
# 77 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/types.h" 2 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int16_t.h" 1 3 4
# 30 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int16_t.h" 3 4
typedef short int16_t;
# 78 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/types.h" 2 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int32_t.h" 1 3 4
# 30 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int32_t.h" 3 4
typedef int int32_t;
# 79 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/types.h" 2 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int64_t.h" 1 3 4
# 30 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int64_t.h" 3 4
typedef long long int64_t;
# 80 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/types.h" 2 3 4

# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int8_t.h" 1 3 4
# 30 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int8_t.h" 3 4
typedef unsigned char u_int8_t;
# 82 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/types.h" 2 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int16_t.h" 1 3 4
# 30 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int16_t.h" 3 4
typedef unsigned short u_int16_t;
# 83 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/types.h" 2 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int32_t.h" 1 3 4
# 30 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int32_t.h" 3 4
typedef unsigned int u_int32_t;
# 84 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/types.h" 2 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int64_t.h" 1 3 4
# 30 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int64_t.h" 3 4
typedef unsigned long long u_int64_t;
# 85 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/types.h" 2 3 4


typedef int64_t register_t;





# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_intptr_t.h" 1 3 4
# 30 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_intptr_t.h" 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/types.h" 1 3 4
# 31 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_intptr_t.h" 2 3 4

typedef __darwin_intptr_t intptr_t;
# 93 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/types.h" 2 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_uintptr_t.h" 1 3 4
# 30 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_uintptr_t.h" 3 4
typedef unsigned long uintptr_t;
# 94 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/types.h" 2 3 4



typedef u_int64_t user_addr_t;
typedef u_int64_t user_size_t;
typedef int64_t user_ssize_t;
typedef int64_t user_long_t;
typedef u_int64_t user_ulong_t;
typedef int64_t user_time_t;
typedef int64_t user_off_t;







typedef u_int64_t syscall_arg_t;
# 36 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/types.h" 2 3 4
# 32 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_va_list.h" 2 3 4
typedef __darwin_va_list va_list;
# 76 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_stdio.h" 2 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h" 1 3 4
# 31 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h" 3 4
typedef __darwin_size_t size_t;
# 77 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_stdio.h" 2 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_null.h" 1 3 4
# 78 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_stdio.h" 2 3 4

# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/stdio.h" 1 3 4
# 39 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/stdio.h" 3 4
int renameat(int, const char *, int, const char *) __attribute__((availability(macosx,introduced=10.10)));






int renamex_np(const char *, const char *, unsigned int) __attribute__((availability(macosx,introduced=10.12))) __attribute__((availability(ios,introduced=10.0))) __attribute__((availability(tvos,introduced=10.0))) __attribute__((availability(watchos,introduced=3.0)));
int renameatx_np(int, const char *, int, const char *, unsigned int) __attribute__((availability(macosx,introduced=10.12))) __attribute__((availability(ios,introduced=10.0))) __attribute__((availability(tvos,introduced=10.0))) __attribute__((availability(watchos,introduced=3.0)));
# 80 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_stdio.h" 2 3 4

typedef __darwin_off_t fpos_t;
# 92 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_stdio.h" 3 4
struct __sbuf {
 unsigned char *_base;
 int _size;
};


struct __sFILEX;
# 126 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_stdio.h" 3 4
typedef struct __sFILE {
 unsigned char *_p;
 int _r;
 int _w;
 short _flags;
 short _file;
 struct __sbuf _bf;
 int _lbfsize;


 void *_cookie;
 int (* _Nullable _close)(void *);
 int (* _Nullable _read) (void *, char *, int);
 fpos_t (* _Nullable _seek) (void *, fpos_t, int);
 int (* _Nullable _write)(void *, const char *, int);


 struct __sbuf _ub;
 struct __sFILEX *_extra;
 int _ur;


 unsigned char _ubuf[3];
 unsigned char _nbuf[1];


 struct __sbuf _lb;


 int _blksize;
 fpos_t _offset;
} FILE;
# 65 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/stdio.h" 2 3 4


extern FILE *__stdinp;
extern FILE *__stdoutp;
extern FILE *__stderrp;
# 142 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/stdio.h" 3 4
void clearerr(FILE *);
int fclose(FILE *);
int feof(FILE *);
int ferror(FILE *);
int fflush(FILE *);
int fgetc(FILE *);
int fgetpos(FILE * restrict, fpos_t *);
char *fgets(char * restrict, int, FILE *);



FILE *fopen(const char * restrict __filename, const char * restrict __mode) __asm("_" "fopen" );

int fprintf(FILE * restrict, const char * restrict, ...) __attribute__((__format__ (__printf__, 2, 3)));
int fputc(int, FILE *);
int fputs(const char * restrict, FILE * restrict) __asm("_" "fputs" );
size_t fread(void * restrict __ptr, size_t __size, size_t __nitems, FILE * restrict __stream);
FILE *freopen(const char * restrict, const char * restrict,
                 FILE * restrict) __asm("_" "freopen" );
int fscanf(FILE * restrict, const char * restrict, ...) __attribute__((__format__ (__scanf__, 2, 3)));
int fseek(FILE *, long, int);
int fsetpos(FILE *, const fpos_t *);
long ftell(FILE *);
size_t fwrite(const void * restrict __ptr, size_t __size, size_t __nitems, FILE * restrict __stream) __asm("_" "fwrite" );
int getc(FILE *);
int getchar(void);
char *gets(char *);
void perror(const char *);
int printf(const char * restrict, ...) __attribute__((__format__ (__printf__, 1, 2)));
int putc(int, FILE *);
int putchar(int);
int puts(const char *);
int remove(const char *);
int rename (const char *__old, const char *__new);
void rewind(FILE *);
int scanf(const char * restrict, ...) __attribute__((__format__ (__scanf__, 1, 2)));
void setbuf(FILE * restrict, char * restrict);
int setvbuf(FILE * restrict, char * restrict, int, size_t);
int sprintf(char * restrict, const char * restrict, ...) __attribute__((__format__ (__printf__, 2, 3))) __attribute__((__availability__(swift, unavailable, message="Use snprintf instead.")));
int sscanf(const char * restrict, const char * restrict, ...) __attribute__((__format__ (__scanf__, 2, 3)));
FILE *tmpfile(void);

__attribute__((__availability__(swift, unavailable, message="Use mkstemp(3) instead.")))

__attribute__((deprecated("This function is provided for compatibility reasons only.  Due to security concerns inherent in the design of tmpnam(3), it is highly recommended that you use mkstemp(3) instead.")))

char *tmpnam(char *);
int ungetc(int, FILE *);
int vfprintf(FILE * restrict, const char * restrict, va_list) __attribute__((__format__ (__printf__, 2, 0)));
int vprintf(const char * restrict, va_list) __attribute__((__format__ (__printf__, 1, 0)));
int vsprintf(char * restrict, const char * restrict, va_list) __attribute__((__format__ (__printf__, 2, 0))) __attribute__((__availability__(swift, unavailable, message="Use vsnprintf instead.")));
# 208 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/stdio.h" 3 4
char *ctermid(char *);





FILE *fdopen(int, const char *) __asm("_" "fdopen" );

int fileno(FILE *);
# 232 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/stdio.h" 3 4
int pclose(FILE *) __attribute__((__availability__(swift, unavailable, message="Use posix_spawn APIs or NSTask instead.")));



FILE *popen(const char *, const char *) __asm("_" "popen" ) __attribute__((__availability__(swift, unavailable, message="Use posix_spawn APIs or NSTask instead.")));
# 253 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/stdio.h" 3 4
int __srget(FILE *);
int __svfscanf(FILE *, const char *, va_list) __attribute__((__format__ (__scanf__, 2, 0)));
int __swbuf(int, FILE *);
# 264 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/stdio.h" 3 4
inline __attribute__ ((__always_inline__)) int __sputc(int _c, FILE *_p) {
 if (--_p->_w >= 0 || (_p->_w >= _p->_lbfsize && (char)_c != '\n'))
  return (*_p->_p++ = _c);
 else
  return (__swbuf(_c, _p));
}
# 290 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/stdio.h" 3 4
void flockfile(FILE *);
int ftrylockfile(FILE *);
void funlockfile(FILE *);
int getc_unlocked(FILE *);
int getchar_unlocked(void);
int putc_unlocked(int, FILE *);
int putchar_unlocked(int);



int getw(FILE *);
int putw(int, FILE *);


__attribute__((__availability__(swift, unavailable, message="Use mkstemp(3) instead.")))

__attribute__((deprecated("This function is provided for compatibility reasons only.  Due to security concerns inherent in the design of tempnam(3), it is highly recommended that you use mkstemp(3) instead.")))

char *tempnam(const char *__dir, const char *__prefix) __asm("_" "tempnam" );
# 328 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/stdio.h" 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_off_t.h" 1 3 4
# 31 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_off_t.h" 3 4
typedef __darwin_off_t off_t;
# 329 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/stdio.h" 2 3 4


int fseeko(FILE * __stream, off_t __offset, int __whence);
off_t ftello(FILE * __stream);





int snprintf(char * restrict __str, size_t __size, const char * restrict __format, ...) __attribute__((__format__ (__printf__, 3, 4)));
int vfscanf(FILE * restrict __stream, const char * restrict __format, va_list) __attribute__((__format__ (__scanf__, 2, 0)));
int vscanf(const char * restrict __format, va_list) __attribute__((__format__ (__scanf__, 1, 0)));
int vsnprintf(char * restrict __str, size_t __size, const char * restrict __format, va_list) __attribute__((__format__ (__printf__, 3, 0)));
int vsscanf(const char * restrict __str, const char * restrict __format, va_list) __attribute__((__format__ (__scanf__, 2, 0)));
# 353 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/stdio.h" 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_ssize_t.h" 1 3 4
# 31 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_ssize_t.h" 3 4
typedef __darwin_ssize_t ssize_t;
# 354 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/stdio.h" 2 3 4


int dprintf(int, const char * restrict, ...) __attribute__((__format__ (__printf__, 2, 3))) __attribute__((availability(macosx,introduced=10.7)));
int vdprintf(int, const char * restrict, va_list) __attribute__((__format__ (__printf__, 2, 0))) __attribute__((availability(macosx,introduced=10.7)));
ssize_t getdelim(char ** restrict __linep, size_t * restrict __linecapp, int __delimiter, FILE * restrict __stream) __attribute__((availability(macosx,introduced=10.7)));
ssize_t getline(char ** restrict __linep, size_t * restrict __linecapp, FILE * restrict __stream) __attribute__((availability(macosx,introduced=10.7)));
FILE *fmemopen(void * restrict __buf, size_t __size, const char * restrict __mode) __attribute__((availability(macos,introduced=10.13))) __attribute__((availability(ios,introduced=11.0))) __attribute__((availability(tvos,introduced=11.0))) __attribute__((availability(watchos,introduced=4.0)));
FILE *open_memstream(char **__bufp, size_t *__sizep) __attribute__((availability(macos,introduced=10.13))) __attribute__((availability(ios,introduced=11.0))) __attribute__((availability(tvos,introduced=11.0))) __attribute__((availability(watchos,introduced=4.0)));
# 371 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/stdio.h" 3 4
extern const int sys_nerr;
extern const char *const sys_errlist[];

int asprintf(char ** restrict, const char * restrict, ...) __attribute__((__format__ (__printf__, 2, 3)));
char *ctermid_r(char *);
char *fgetln(FILE *, size_t *);
const char *fmtcheck(const char *, const char *);
int fpurge(FILE *);
void setbuffer(FILE *, char *, int);
int setlinebuf(FILE *);
int vasprintf(char ** restrict, const char * restrict, va_list) __attribute__((__format__ (__printf__, 2, 0)));
FILE *zopen(const char *, const char *, int);





FILE *funopen(const void *,
                 int (* _Nullable)(void *, char *, int),
                 int (* _Nullable)(void *, const char *, int),
                 fpos_t (* _Nullable)(void *, fpos_t, int),
                 int (* _Nullable)(void *));
# 411 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/stdio.h" 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/secure/_stdio.h" 1 3 4
# 31 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/secure/_stdio.h" 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/secure/_common.h" 1 3 4
# 32 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/secure/_stdio.h" 2 3 4
# 42 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/secure/_stdio.h" 3 4
extern int __sprintf_chk (char * restrict, int, size_t,
     const char * restrict, ...);
# 52 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/secure/_stdio.h" 3 4
extern int __snprintf_chk (char * restrict, size_t, int, size_t,
      const char * restrict, ...);







extern int __vsprintf_chk (char * restrict, int, size_t,
      const char * restrict, va_list);







extern int __vsnprintf_chk (char * restrict, size_t, int, size_t,
       const char * restrict, va_list);
# 412 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/stdio.h" 2 3 4
# 2 "./cbug.h" 2
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/unistd.h" 1 3 4
# 72 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/unistd.h" 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/unistd.h" 1 3 4
# 84 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/unistd.h" 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_posix_vdisable.h" 1 3 4
# 85 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/unistd.h" 2 3 4
# 122 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/unistd.h" 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_seek_set.h" 1 3 4
# 123 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/unistd.h" 2 3 4
# 132 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/unistd.h" 3 4
struct accessx_descriptor {
 unsigned int ad_name_offset;
 int ad_flags;
 int ad_pad[2];
};
# 181 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/unistd.h" 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types/_uint64_t.h" 1 3 4
# 31 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types/_uint64_t.h" 3 4
typedef unsigned long long uint64_t;
# 182 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/unistd.h" 2 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types/_uint32_t.h" 1 3 4
# 31 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types/_uint32_t.h" 3 4
typedef unsigned int uint32_t;
# 183 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/unistd.h" 2 3 4




int getattrlistbulk(int, void *, void *, size_t, uint64_t) __attribute__((availability(macosx,introduced=10.10)));
int getattrlistat(int, const char *, void *, void *, size_t, unsigned long) __attribute__((availability(macosx,introduced=10.10)));
int setattrlistat(int, const char *, void *, void *, size_t, uint32_t) __attribute__((availability(macosx,introduced=10.13))) __attribute__((availability(ios,introduced=11.0))) __attribute__((availability(tvos,introduced=11.0))) __attribute__((availability(watchos,introduced=4.0)));
# 201 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/unistd.h" 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_uid_t.h" 1 3 4
# 31 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_uid_t.h" 3 4
typedef __darwin_uid_t uid_t;
# 202 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/unistd.h" 2 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_gid_t.h" 1 3 4
# 31 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_gid_t.h" 3 4
typedef __darwin_gid_t gid_t;
# 203 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/unistd.h" 2 3 4




int faccessat(int, const char *, int, int) __attribute__((availability(macosx,introduced=10.10)));
int fchownat(int, const char *, uid_t, gid_t, int) __attribute__((availability(macosx,introduced=10.10)));
int linkat(int, const char *, int, const char *, int) __attribute__((availability(macosx,introduced=10.10)));
ssize_t readlinkat(int, const char *, char *, size_t) __attribute__((availability(macosx,introduced=10.10)));
int symlinkat(const char *, int, const char *) __attribute__((availability(macosx,introduced=10.10)));
int unlinkat(int, const char *, int) __attribute__((availability(macosx,introduced=10.10)));
# 73 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/unistd.h" 2 3 4




# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_pid_t.h" 1 3 4
# 31 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_pid_t.h" 3 4
typedef __darwin_pid_t pid_t;
# 78 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/unistd.h" 2 3 4





# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_useconds_t.h" 1 3 4
# 31 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_useconds_t.h" 3 4
typedef __darwin_useconds_t useconds_t;
# 84 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/unistd.h" 2 3 4
# 429 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/unistd.h" 3 4
void _exit(int) __attribute__((noreturn));
int access(const char *, int);
unsigned int
  alarm(unsigned int);
int chdir(const char *);
int chown(const char *, uid_t, gid_t);

int close(int) __asm("_" "close" );

int dup(int);
int dup2(int, int);
int execl(const char * __path, const char * __arg0, ...) __attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)));
int execle(const char * __path, const char * __arg0, ...) __attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)));
int execlp(const char * __file, const char * __arg0, ...) __attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)));
int execv(const char * __path, char * const * __argv) __attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)));
int execve(const char * __file, char * const * __argv, char * const * __envp) __attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)));
int execvp(const char * __file, char * const * __argv) __attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)));
pid_t fork(void) __attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)));
long fpathconf(int, int);
char *getcwd(char *, size_t);
gid_t getegid(void);
uid_t geteuid(void);
gid_t getgid(void);



int getgroups(int, gid_t []);

char *getlogin(void);
pid_t getpgrp(void);
pid_t getpid(void);
pid_t getppid(void);
uid_t getuid(void);
int isatty(int);
int link(const char *, const char *);
off_t lseek(int, off_t, int);
long pathconf(const char *, int);

int pause(void) __asm("_" "pause" );

int pipe(int [2]);

ssize_t read(int, void *, size_t) __asm("_" "read" );

int rmdir(const char *);
int setgid(gid_t);
int setpgid(pid_t, pid_t);
pid_t setsid(void);
int setuid(uid_t);

unsigned int
  sleep(unsigned int) __asm("_" "sleep" );

long sysconf(int);
pid_t tcgetpgrp(int);
int tcsetpgrp(int, pid_t);
char *ttyname(int);


int ttyname_r(int, char *, size_t) __asm("_" "ttyname_r" );




int unlink(const char *);

ssize_t write(int __fd, const void * __buf, size_t __nbyte) __asm("_" "write" );
# 506 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/unistd.h" 3 4
size_t confstr(int, char *, size_t) __asm("_" "confstr" );

int getopt(int, char * const [], const char *) __asm("_" "getopt" );

extern char *optarg;
extern int optind, opterr, optopt;
# 536 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/unistd.h" 3 4
__attribute__((deprecated)) __attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)))

void *brk(const void *);
int chroot(const char *) ;


char *crypt(const char *, const char *);






void encrypt(char *, int) __asm("_" "encrypt" );



int fchdir(int);
long gethostid(void);
pid_t getpgid(pid_t);
pid_t getsid(pid_t);



int getdtablesize(void) ;
int getpagesize(void) __attribute__((const)) ;
char *getpass(const char *) ;




char *getwd(char *) ;


int lchown(const char *, uid_t, gid_t) __asm("_" "lchown" );

int lockf(int, int, off_t) __asm("_" "lockf" );

int nice(int) __asm("_" "nice" );

ssize_t pread(int __fd, void * __buf, size_t __nbyte, off_t __offset) __asm("_" "pread" );

ssize_t pwrite(int __fd, const void * __buf, size_t __nbyte, off_t __offset) __asm("_" "pwrite" );






__attribute__((deprecated)) __attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)))

void *sbrk(int);



pid_t setpgrp(void) __asm("_" "setpgrp" );




int setregid(gid_t, gid_t) __asm("_" "setregid" );

int setreuid(uid_t, uid_t) __asm("_" "setreuid" );

void swab(const void * restrict, void * restrict, ssize_t);
void sync(void);
int truncate(const char *, off_t);
useconds_t ualarm(useconds_t, useconds_t);
int usleep(useconds_t) __asm("_" "usleep" );
pid_t vfork(void) __attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)));


int fsync(int) __asm("_" "fsync" );

int ftruncate(int, off_t);
int getlogin_r(char *, size_t);
# 624 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/unistd.h" 3 4
int fchown(int, uid_t, gid_t);
int gethostname(char *, size_t);
ssize_t readlink(const char * restrict, char * restrict, size_t);
int setegid(gid_t);
int seteuid(uid_t);
int symlink(const char *, const char *);
# 638 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/unistd.h" 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/select.h" 1 3 4
# 66 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/select.h" 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/appleapiopts.h" 1 3 4
# 67 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/select.h" 2 3 4








# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_fd_def.h" 1 3 4
# 49 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_fd_def.h" 3 4
typedef struct fd_set {
 __int32_t fds_bits[((((1024) % ((sizeof(__int32_t) * 8))) == 0) ? ((1024) / ((sizeof(__int32_t) * 8))) : (((1024) / ((sizeof(__int32_t) * 8))) + 1))];
} fd_set;



static __inline int
__darwin_fd_isset(int _n, const struct fd_set *_p)
{
 return _p->fds_bits[(unsigned long)_n / (sizeof(__int32_t) * 8)] & ((__int32_t)(((unsigned long)1) << ((unsigned long)_n % (sizeof(__int32_t) * 8))));
}
# 76 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/select.h" 2 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_timespec.h" 1 3 4
# 33 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_timespec.h" 3 4
struct timespec
{
 __darwin_time_t tv_sec;
 long tv_nsec;
};
# 77 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/select.h" 2 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_timeval.h" 1 3 4
# 34 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_timeval.h" 3 4
struct timeval
{
 __darwin_time_t tv_sec;
 __darwin_suseconds_t tv_usec;
};
# 78 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/select.h" 2 3 4






# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_time_t.h" 1 3 4
# 31 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_time_t.h" 3 4
typedef __darwin_time_t time_t;
# 85 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/select.h" 2 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_suseconds_t.h" 1 3 4
# 31 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_suseconds_t.h" 3 4
typedef __darwin_suseconds_t suseconds_t;
# 86 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/select.h" 2 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_sigset_t.h" 1 3 4
# 31 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_sigset_t.h" 3 4
typedef __darwin_sigset_t sigset_t;
# 87 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/select.h" 2 3 4
# 100 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/select.h" 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_fd_setsize.h" 1 3 4
# 101 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/select.h" 2 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_fd_set.h" 1 3 4
# 102 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/select.h" 2 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_fd_clr.h" 1 3 4
# 103 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/select.h" 2 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_fd_isset.h" 1 3 4
# 104 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/select.h" 2 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_fd_zero.h" 1 3 4
# 105 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/select.h" 2 3 4


# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_fd_copy.h" 1 3 4
# 108 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/select.h" 2 3 4






int pselect(int, fd_set * restrict, fd_set * restrict,
    fd_set * restrict, const struct timespec * restrict,
    const sigset_t * restrict)




__asm("_" "pselect" "$1050")




;



# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_select.h" 1 3 4
# 39 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_select.h" 3 4
int select(int, fd_set * restrict, fd_set * restrict,
    fd_set * restrict, struct timeval * restrict)




__asm("_" "select" "$1050")




;
# 130 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/select.h" 2 3 4
# 639 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/unistd.h" 2 3 4

# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_dev_t.h" 1 3 4
# 31 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_dev_t.h" 3 4
typedef __darwin_dev_t dev_t;
# 641 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/unistd.h" 2 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_mode_t.h" 1 3 4
# 31 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_mode_t.h" 3 4
typedef __darwin_mode_t mode_t;
# 642 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/unistd.h" 2 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_uuid_t.h" 1 3 4
# 31 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_uuid_t.h" 3 4
typedef __darwin_uuid_t uuid_t;
# 643 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/unistd.h" 2 3 4


void _Exit(int) __attribute__((noreturn));
int accessx_np(const struct accessx_descriptor *, size_t, int *, uid_t);
int acct(const char *);
int add_profil(char *, size_t, unsigned long, unsigned int) __attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)));
void endusershell(void);
int execvP(const char * __file, const char * __searchpath, char * const * __argv) __attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)));
char *fflagstostr(unsigned long);
int getdomainname(char *, int);
int getgrouplist(const char *, int, int *, int *);





# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/gethostuuid.h" 1 3 4
# 39 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/gethostuuid.h" 3 4
int gethostuuid(uuid_t, const struct timespec *) __attribute__((availability(macosx,introduced=10.5)));
# 659 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/unistd.h" 2 3 4




mode_t getmode(const void *, mode_t);
int getpeereid(int, uid_t *, gid_t *);
int getsgroups_np(int *, uuid_t);
char *getusershell(void);
int getwgroups_np(int *, uuid_t);
int initgroups(const char *, int);
int issetugid(void);
char *mkdtemp(char *);
int mknod(const char *, mode_t, dev_t);
int mkpath_np(const char *path, mode_t omode) __attribute__((availability(macosx,introduced=10.8)));
int mkpathat_np(int dfd, const char *path, mode_t omode)
  __attribute__((availability(macosx,introduced=10.12))) __attribute__((availability(ios,introduced=10.0)))
  __attribute__((availability(tvos,introduced=10.0))) __attribute__((availability(watchos,introduced=3.0)));
int mkstemp(char *);
int mkstemps(char *, int);
char *mktemp(char *);
int mkostemp(char *path, int oflags)
  __attribute__((availability(macosx,introduced=10.12))) __attribute__((availability(ios,introduced=10.0)))
  __attribute__((availability(tvos,introduced=10.0))) __attribute__((availability(watchos,introduced=3.0)));
int mkostemps(char *path, int slen, int oflags)
  __attribute__((availability(macosx,introduced=10.12))) __attribute__((availability(ios,introduced=10.0)))
  __attribute__((availability(tvos,introduced=10.0))) __attribute__((availability(watchos,introduced=3.0)));

int mkstemp_dprotected_np(char *path, int dpclass, int dpflags)
  __attribute__((availability(macosx,unavailable))) __attribute__((availability(ios,introduced=10.0)))
  __attribute__((availability(tvos,introduced=10.0))) __attribute__((availability(watchos,introduced=3.0)));
char *mkdtempat_np(int dfd, char *path)
  __attribute__((availability(macosx,introduced=10.13))) __attribute__((availability(ios,introduced=11.0)))
  __attribute__((availability(tvos,introduced=11.0))) __attribute__((availability(watchos,introduced=4.0)));
int mkstempsat_np(int dfd, char *path, int slen)
  __attribute__((availability(macosx,introduced=10.13))) __attribute__((availability(ios,introduced=11.0)))
  __attribute__((availability(tvos,introduced=11.0))) __attribute__((availability(watchos,introduced=4.0)));
int mkostempsat_np(int dfd, char *path, int slen, int oflags)
  __attribute__((availability(macosx,introduced=10.13))) __attribute__((availability(ios,introduced=11.0)))
  __attribute__((availability(tvos,introduced=11.0))) __attribute__((availability(watchos,introduced=4.0)));
int nfssvc(int, void *);
int profil(char *, size_t, unsigned long, unsigned int);

__attribute__((deprecated("Use of per-thread security contexts is error-prone and discouraged.")))
int pthread_setugid_np(uid_t, gid_t);
int pthread_getugid_np( uid_t *, gid_t *);

int reboot(int);
int revoke(const char *);

__attribute__((deprecated)) int rcmd(char **, int, const char *, const char *, const char *, int *);
__attribute__((deprecated)) int rcmd_af(char **, int, const char *, const char *, const char *, int *,
  int);
__attribute__((deprecated)) int rresvport(int *);
__attribute__((deprecated)) int rresvport_af(int *, int);
__attribute__((deprecated)) int iruserok(unsigned long, int, const char *, const char *);
__attribute__((deprecated)) int iruserok_sa(const void *, int, int, const char *, const char *);
__attribute__((deprecated)) int ruserok(const char *, int, const char *, const char *);

int setdomainname(const char *, int);
int setgroups(int, const gid_t *);
void sethostid(long);
int sethostname(const char *, int);

void setkey(const char *) __asm("_" "setkey" );



int setlogin(const char *);
void *setmode(const char *) __asm("_" "setmode" );
int setrgid(gid_t);
int setruid(uid_t);
int setsgroups_np(int, const uuid_t);
void setusershell(void);
int setwgroups_np(int, const uuid_t);
int strtofflags(char **, unsigned long *, unsigned long *);
int swapon(const char *);
int ttyslot(void);
int undelete(const char *);
int unwhiteout(const char *);
void *valloc(size_t);

__attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)))
__attribute__((availability(ios,deprecated=10.0,message="syscall(2) is unsupported; " "please switch to a supported interface. For SYS_kdebug_trace use kdebug_signpost().")))

__attribute__((availability(macosx,deprecated=10.12,message="syscall(2) is unsupported; " "please switch to a supported interface. For SYS_kdebug_trace use kdebug_signpost().")))

int syscall(int, ...);

extern char *suboptarg;
int getsubopt(char **, char * const *, char **);



int fgetattrlist(int,void*,void*,size_t,unsigned int) __attribute__((availability(macosx,introduced=10.6)));
int fsetattrlist(int,void*,void*,size_t,unsigned int) __attribute__((availability(macosx,introduced=10.6)));
int getattrlist(const char*,void*,void*,size_t,unsigned int) __asm("_" "getattrlist" );
int setattrlist(const char*,void*,void*,size_t,unsigned int) __asm("_" "setattrlist" );
int exchangedata(const char*,const char*,unsigned int) __attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)));
int getdirentriesattr(int,void*,void*,size_t,unsigned int*,unsigned int*,unsigned int*,unsigned int) __attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)));
# 772 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/unistd.h" 3 4
struct fssearchblock;
struct searchstate;

int searchfs(const char *, struct fssearchblock *, unsigned long *, unsigned int, unsigned int, struct searchstate *) __attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)));
int fsctl(const char *,unsigned long,void*,unsigned int);
int ffsctl(int,unsigned long,void*,unsigned int) __attribute__((availability(macosx,introduced=10.6)));




int fsync_volume_np(int, int) __attribute__((availability(macosx,introduced=10.8)));
int sync_volume_np(const char *, int) __attribute__((availability(macosx,introduced=10.8)));

extern int optreset;
# 3 "./cbug.h" 2
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/stdlib.h" 1 3 4
# 66 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/stdlib.h" 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/wait.h" 1 3 4
# 79 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/wait.h" 3 4
typedef enum {
 P_ALL,
 P_PID,
 P_PGID
} idtype_t;







# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_id_t.h" 1 3 4
# 31 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_id_t.h" 3 4
typedef __darwin_id_t id_t;
# 91 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/wait.h" 2 3 4
# 109 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/wait.h" 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/signal.h" 1 3 4
# 82 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/signal.h" 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/signal.h" 1 3 4
# 32 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/signal.h" 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/signal.h" 1 3 4
# 39 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/signal.h" 3 4
typedef int sig_atomic_t;
# 33 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/signal.h" 2 3 4
# 83 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/signal.h" 2 3 4
# 146 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/signal.h" 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/_mcontext.h" 1 3 4
# 29 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/_mcontext.h" 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/_mcontext.h" 1 3 4
# 34 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/_mcontext.h" 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/mach/machine/_structs.h" 1 3 4
# 33 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/mach/machine/_structs.h" 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h" 1 3 4
# 46 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h" 3 4
struct __darwin_i386_thread_state
{
    unsigned int __eax;
    unsigned int __ebx;
    unsigned int __ecx;
    unsigned int __edx;
    unsigned int __edi;
    unsigned int __esi;
    unsigned int __ebp;
    unsigned int __esp;
    unsigned int __ss;
    unsigned int __eflags;
    unsigned int __eip;
    unsigned int __cs;
    unsigned int __ds;
    unsigned int __es;
    unsigned int __fs;
    unsigned int __gs;
};
# 92 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h" 3 4
struct __darwin_fp_control
{
    unsigned short __invalid :1,
        __denorm :1,
    __zdiv :1,
    __ovrfl :1,
    __undfl :1,
    __precis :1,
      :2,
    __pc :2,





    __rc :2,






             :1,
      :3;
};
typedef struct __darwin_fp_control __darwin_fp_control_t;
# 150 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h" 3 4
struct __darwin_fp_status
{
    unsigned short __invalid :1,
        __denorm :1,
    __zdiv :1,
    __ovrfl :1,
    __undfl :1,
    __precis :1,
    __stkflt :1,
    __errsumm :1,
    __c0 :1,
    __c1 :1,
    __c2 :1,
    __tos :3,
    __c3 :1,
    __busy :1;
};
typedef struct __darwin_fp_status __darwin_fp_status_t;
# 194 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h" 3 4
struct __darwin_mmst_reg
{
 char __mmst_reg[10];
 char __mmst_rsrv[6];
};
# 213 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h" 3 4
struct __darwin_xmm_reg
{
 char __xmm_reg[16];
};
# 229 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h" 3 4
struct __darwin_ymm_reg
{
 char __ymm_reg[32];
};
# 245 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h" 3 4
struct __darwin_zmm_reg
{
 char __zmm_reg[64];
};
# 259 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h" 3 4
struct __darwin_opmask_reg
{
 char __opmask_reg[8];
};
# 281 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h" 3 4
struct __darwin_i386_float_state
{
 int __fpu_reserved[2];
 struct __darwin_fp_control __fpu_fcw;
 struct __darwin_fp_status __fpu_fsw;
 __uint8_t __fpu_ftw;
 __uint8_t __fpu_rsrv1;
 __uint16_t __fpu_fop;
 __uint32_t __fpu_ip;
 __uint16_t __fpu_cs;
 __uint16_t __fpu_rsrv2;
 __uint32_t __fpu_dp;
 __uint16_t __fpu_ds;
 __uint16_t __fpu_rsrv3;
 __uint32_t __fpu_mxcsr;
 __uint32_t __fpu_mxcsrmask;
 struct __darwin_mmst_reg __fpu_stmm0;
 struct __darwin_mmst_reg __fpu_stmm1;
 struct __darwin_mmst_reg __fpu_stmm2;
 struct __darwin_mmst_reg __fpu_stmm3;
 struct __darwin_mmst_reg __fpu_stmm4;
 struct __darwin_mmst_reg __fpu_stmm5;
 struct __darwin_mmst_reg __fpu_stmm6;
 struct __darwin_mmst_reg __fpu_stmm7;
 struct __darwin_xmm_reg __fpu_xmm0;
 struct __darwin_xmm_reg __fpu_xmm1;
 struct __darwin_xmm_reg __fpu_xmm2;
 struct __darwin_xmm_reg __fpu_xmm3;
 struct __darwin_xmm_reg __fpu_xmm4;
 struct __darwin_xmm_reg __fpu_xmm5;
 struct __darwin_xmm_reg __fpu_xmm6;
 struct __darwin_xmm_reg __fpu_xmm7;
 char __fpu_rsrv4[14*16];
 int __fpu_reserved1;
};


struct __darwin_i386_avx_state
{
 int __fpu_reserved[2];
 struct __darwin_fp_control __fpu_fcw;
 struct __darwin_fp_status __fpu_fsw;
 __uint8_t __fpu_ftw;
 __uint8_t __fpu_rsrv1;
 __uint16_t __fpu_fop;
 __uint32_t __fpu_ip;
 __uint16_t __fpu_cs;
 __uint16_t __fpu_rsrv2;
 __uint32_t __fpu_dp;
 __uint16_t __fpu_ds;
 __uint16_t __fpu_rsrv3;
 __uint32_t __fpu_mxcsr;
 __uint32_t __fpu_mxcsrmask;
 struct __darwin_mmst_reg __fpu_stmm0;
 struct __darwin_mmst_reg __fpu_stmm1;
 struct __darwin_mmst_reg __fpu_stmm2;
 struct __darwin_mmst_reg __fpu_stmm3;
 struct __darwin_mmst_reg __fpu_stmm4;
 struct __darwin_mmst_reg __fpu_stmm5;
 struct __darwin_mmst_reg __fpu_stmm6;
 struct __darwin_mmst_reg __fpu_stmm7;
 struct __darwin_xmm_reg __fpu_xmm0;
 struct __darwin_xmm_reg __fpu_xmm1;
 struct __darwin_xmm_reg __fpu_xmm2;
 struct __darwin_xmm_reg __fpu_xmm3;
 struct __darwin_xmm_reg __fpu_xmm4;
 struct __darwin_xmm_reg __fpu_xmm5;
 struct __darwin_xmm_reg __fpu_xmm6;
 struct __darwin_xmm_reg __fpu_xmm7;
 char __fpu_rsrv4[14*16];
 int __fpu_reserved1;
 char __avx_reserved1[64];
 struct __darwin_xmm_reg __fpu_ymmh0;
 struct __darwin_xmm_reg __fpu_ymmh1;
 struct __darwin_xmm_reg __fpu_ymmh2;
 struct __darwin_xmm_reg __fpu_ymmh3;
 struct __darwin_xmm_reg __fpu_ymmh4;
 struct __darwin_xmm_reg __fpu_ymmh5;
 struct __darwin_xmm_reg __fpu_ymmh6;
 struct __darwin_xmm_reg __fpu_ymmh7;
};


struct __darwin_i386_avx512_state
{
 int __fpu_reserved[2];
 struct __darwin_fp_control __fpu_fcw;
 struct __darwin_fp_status __fpu_fsw;
 __uint8_t __fpu_ftw;
 __uint8_t __fpu_rsrv1;
 __uint16_t __fpu_fop;
 __uint32_t __fpu_ip;
 __uint16_t __fpu_cs;
 __uint16_t __fpu_rsrv2;
 __uint32_t __fpu_dp;
 __uint16_t __fpu_ds;
 __uint16_t __fpu_rsrv3;
 __uint32_t __fpu_mxcsr;
 __uint32_t __fpu_mxcsrmask;
 struct __darwin_mmst_reg __fpu_stmm0;
 struct __darwin_mmst_reg __fpu_stmm1;
 struct __darwin_mmst_reg __fpu_stmm2;
 struct __darwin_mmst_reg __fpu_stmm3;
 struct __darwin_mmst_reg __fpu_stmm4;
 struct __darwin_mmst_reg __fpu_stmm5;
 struct __darwin_mmst_reg __fpu_stmm6;
 struct __darwin_mmst_reg __fpu_stmm7;
 struct __darwin_xmm_reg __fpu_xmm0;
 struct __darwin_xmm_reg __fpu_xmm1;
 struct __darwin_xmm_reg __fpu_xmm2;
 struct __darwin_xmm_reg __fpu_xmm3;
 struct __darwin_xmm_reg __fpu_xmm4;
 struct __darwin_xmm_reg __fpu_xmm5;
 struct __darwin_xmm_reg __fpu_xmm6;
 struct __darwin_xmm_reg __fpu_xmm7;
 char __fpu_rsrv4[14*16];
 int __fpu_reserved1;
 char __avx_reserved1[64];
 struct __darwin_xmm_reg __fpu_ymmh0;
 struct __darwin_xmm_reg __fpu_ymmh1;
 struct __darwin_xmm_reg __fpu_ymmh2;
 struct __darwin_xmm_reg __fpu_ymmh3;
 struct __darwin_xmm_reg __fpu_ymmh4;
 struct __darwin_xmm_reg __fpu_ymmh5;
 struct __darwin_xmm_reg __fpu_ymmh6;
 struct __darwin_xmm_reg __fpu_ymmh7;
 struct __darwin_opmask_reg __fpu_k0;
 struct __darwin_opmask_reg __fpu_k1;
 struct __darwin_opmask_reg __fpu_k2;
 struct __darwin_opmask_reg __fpu_k3;
 struct __darwin_opmask_reg __fpu_k4;
 struct __darwin_opmask_reg __fpu_k5;
 struct __darwin_opmask_reg __fpu_k6;
 struct __darwin_opmask_reg __fpu_k7;
 struct __darwin_ymm_reg __fpu_zmmh0;
 struct __darwin_ymm_reg __fpu_zmmh1;
 struct __darwin_ymm_reg __fpu_zmmh2;
 struct __darwin_ymm_reg __fpu_zmmh3;
 struct __darwin_ymm_reg __fpu_zmmh4;
 struct __darwin_ymm_reg __fpu_zmmh5;
 struct __darwin_ymm_reg __fpu_zmmh6;
 struct __darwin_ymm_reg __fpu_zmmh7;
};
# 575 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h" 3 4
struct __darwin_i386_exception_state
{
 __uint16_t __trapno;
 __uint16_t __cpu;
 __uint32_t __err;
 __uint32_t __faultvaddr;
};
# 595 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h" 3 4
struct __darwin_x86_debug_state32
{
 unsigned int __dr0;
 unsigned int __dr1;
 unsigned int __dr2;
 unsigned int __dr3;
 unsigned int __dr4;
 unsigned int __dr5;
 unsigned int __dr6;
 unsigned int __dr7;
};
# 627 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h" 3 4
struct __darwin_x86_thread_state64
{
 __uint64_t __rax;
 __uint64_t __rbx;
 __uint64_t __rcx;
 __uint64_t __rdx;
 __uint64_t __rdi;
 __uint64_t __rsi;
 __uint64_t __rbp;
 __uint64_t __rsp;
 __uint64_t __r8;
 __uint64_t __r9;
 __uint64_t __r10;
 __uint64_t __r11;
 __uint64_t __r12;
 __uint64_t __r13;
 __uint64_t __r14;
 __uint64_t __r15;
 __uint64_t __rip;
 __uint64_t __rflags;
 __uint64_t __cs;
 __uint64_t __fs;
 __uint64_t __gs;
};
# 685 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h" 3 4
struct __darwin_x86_thread_full_state64
{
 struct __darwin_x86_thread_state64 ss64;
 __uint64_t __ds;
 __uint64_t __es;
 __uint64_t __ss;
 __uint64_t __gsbase;
};
# 708 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h" 3 4
struct __darwin_x86_float_state64
{
 int __fpu_reserved[2];
 struct __darwin_fp_control __fpu_fcw;
 struct __darwin_fp_status __fpu_fsw;
 __uint8_t __fpu_ftw;
 __uint8_t __fpu_rsrv1;
 __uint16_t __fpu_fop;


 __uint32_t __fpu_ip;
 __uint16_t __fpu_cs;

 __uint16_t __fpu_rsrv2;


 __uint32_t __fpu_dp;
 __uint16_t __fpu_ds;

 __uint16_t __fpu_rsrv3;
 __uint32_t __fpu_mxcsr;
 __uint32_t __fpu_mxcsrmask;
 struct __darwin_mmst_reg __fpu_stmm0;
 struct __darwin_mmst_reg __fpu_stmm1;
 struct __darwin_mmst_reg __fpu_stmm2;
 struct __darwin_mmst_reg __fpu_stmm3;
 struct __darwin_mmst_reg __fpu_stmm4;
 struct __darwin_mmst_reg __fpu_stmm5;
 struct __darwin_mmst_reg __fpu_stmm6;
 struct __darwin_mmst_reg __fpu_stmm7;
 struct __darwin_xmm_reg __fpu_xmm0;
 struct __darwin_xmm_reg __fpu_xmm1;
 struct __darwin_xmm_reg __fpu_xmm2;
 struct __darwin_xmm_reg __fpu_xmm3;
 struct __darwin_xmm_reg __fpu_xmm4;
 struct __darwin_xmm_reg __fpu_xmm5;
 struct __darwin_xmm_reg __fpu_xmm6;
 struct __darwin_xmm_reg __fpu_xmm7;
 struct __darwin_xmm_reg __fpu_xmm8;
 struct __darwin_xmm_reg __fpu_xmm9;
 struct __darwin_xmm_reg __fpu_xmm10;
 struct __darwin_xmm_reg __fpu_xmm11;
 struct __darwin_xmm_reg __fpu_xmm12;
 struct __darwin_xmm_reg __fpu_xmm13;
 struct __darwin_xmm_reg __fpu_xmm14;
 struct __darwin_xmm_reg __fpu_xmm15;
 char __fpu_rsrv4[6*16];
 int __fpu_reserved1;
};


struct __darwin_x86_avx_state64
{
 int __fpu_reserved[2];
 struct __darwin_fp_control __fpu_fcw;
 struct __darwin_fp_status __fpu_fsw;
 __uint8_t __fpu_ftw;
 __uint8_t __fpu_rsrv1;
 __uint16_t __fpu_fop;


 __uint32_t __fpu_ip;
 __uint16_t __fpu_cs;

 __uint16_t __fpu_rsrv2;


 __uint32_t __fpu_dp;
 __uint16_t __fpu_ds;

 __uint16_t __fpu_rsrv3;
 __uint32_t __fpu_mxcsr;
 __uint32_t __fpu_mxcsrmask;
 struct __darwin_mmst_reg __fpu_stmm0;
 struct __darwin_mmst_reg __fpu_stmm1;
 struct __darwin_mmst_reg __fpu_stmm2;
 struct __darwin_mmst_reg __fpu_stmm3;
 struct __darwin_mmst_reg __fpu_stmm4;
 struct __darwin_mmst_reg __fpu_stmm5;
 struct __darwin_mmst_reg __fpu_stmm6;
 struct __darwin_mmst_reg __fpu_stmm7;
 struct __darwin_xmm_reg __fpu_xmm0;
 struct __darwin_xmm_reg __fpu_xmm1;
 struct __darwin_xmm_reg __fpu_xmm2;
 struct __darwin_xmm_reg __fpu_xmm3;
 struct __darwin_xmm_reg __fpu_xmm4;
 struct __darwin_xmm_reg __fpu_xmm5;
 struct __darwin_xmm_reg __fpu_xmm6;
 struct __darwin_xmm_reg __fpu_xmm7;
 struct __darwin_xmm_reg __fpu_xmm8;
 struct __darwin_xmm_reg __fpu_xmm9;
 struct __darwin_xmm_reg __fpu_xmm10;
 struct __darwin_xmm_reg __fpu_xmm11;
 struct __darwin_xmm_reg __fpu_xmm12;
 struct __darwin_xmm_reg __fpu_xmm13;
 struct __darwin_xmm_reg __fpu_xmm14;
 struct __darwin_xmm_reg __fpu_xmm15;
 char __fpu_rsrv4[6*16];
 int __fpu_reserved1;
 char __avx_reserved1[64];
 struct __darwin_xmm_reg __fpu_ymmh0;
 struct __darwin_xmm_reg __fpu_ymmh1;
 struct __darwin_xmm_reg __fpu_ymmh2;
 struct __darwin_xmm_reg __fpu_ymmh3;
 struct __darwin_xmm_reg __fpu_ymmh4;
 struct __darwin_xmm_reg __fpu_ymmh5;
 struct __darwin_xmm_reg __fpu_ymmh6;
 struct __darwin_xmm_reg __fpu_ymmh7;
 struct __darwin_xmm_reg __fpu_ymmh8;
 struct __darwin_xmm_reg __fpu_ymmh9;
 struct __darwin_xmm_reg __fpu_ymmh10;
 struct __darwin_xmm_reg __fpu_ymmh11;
 struct __darwin_xmm_reg __fpu_ymmh12;
 struct __darwin_xmm_reg __fpu_ymmh13;
 struct __darwin_xmm_reg __fpu_ymmh14;
 struct __darwin_xmm_reg __fpu_ymmh15;
};


struct __darwin_x86_avx512_state64
{
 int __fpu_reserved[2];
 struct __darwin_fp_control __fpu_fcw;
 struct __darwin_fp_status __fpu_fsw;
 __uint8_t __fpu_ftw;
 __uint8_t __fpu_rsrv1;
 __uint16_t __fpu_fop;


 __uint32_t __fpu_ip;
 __uint16_t __fpu_cs;

 __uint16_t __fpu_rsrv2;


 __uint32_t __fpu_dp;
 __uint16_t __fpu_ds;

 __uint16_t __fpu_rsrv3;
 __uint32_t __fpu_mxcsr;
 __uint32_t __fpu_mxcsrmask;
 struct __darwin_mmst_reg __fpu_stmm0;
 struct __darwin_mmst_reg __fpu_stmm1;
 struct __darwin_mmst_reg __fpu_stmm2;
 struct __darwin_mmst_reg __fpu_stmm3;
 struct __darwin_mmst_reg __fpu_stmm4;
 struct __darwin_mmst_reg __fpu_stmm5;
 struct __darwin_mmst_reg __fpu_stmm6;
 struct __darwin_mmst_reg __fpu_stmm7;
 struct __darwin_xmm_reg __fpu_xmm0;
 struct __darwin_xmm_reg __fpu_xmm1;
 struct __darwin_xmm_reg __fpu_xmm2;
 struct __darwin_xmm_reg __fpu_xmm3;
 struct __darwin_xmm_reg __fpu_xmm4;
 struct __darwin_xmm_reg __fpu_xmm5;
 struct __darwin_xmm_reg __fpu_xmm6;
 struct __darwin_xmm_reg __fpu_xmm7;
 struct __darwin_xmm_reg __fpu_xmm8;
 struct __darwin_xmm_reg __fpu_xmm9;
 struct __darwin_xmm_reg __fpu_xmm10;
 struct __darwin_xmm_reg __fpu_xmm11;
 struct __darwin_xmm_reg __fpu_xmm12;
 struct __darwin_xmm_reg __fpu_xmm13;
 struct __darwin_xmm_reg __fpu_xmm14;
 struct __darwin_xmm_reg __fpu_xmm15;
 char __fpu_rsrv4[6*16];
 int __fpu_reserved1;
 char __avx_reserved1[64];
 struct __darwin_xmm_reg __fpu_ymmh0;
 struct __darwin_xmm_reg __fpu_ymmh1;
 struct __darwin_xmm_reg __fpu_ymmh2;
 struct __darwin_xmm_reg __fpu_ymmh3;
 struct __darwin_xmm_reg __fpu_ymmh4;
 struct __darwin_xmm_reg __fpu_ymmh5;
 struct __darwin_xmm_reg __fpu_ymmh6;
 struct __darwin_xmm_reg __fpu_ymmh7;
 struct __darwin_xmm_reg __fpu_ymmh8;
 struct __darwin_xmm_reg __fpu_ymmh9;
 struct __darwin_xmm_reg __fpu_ymmh10;
 struct __darwin_xmm_reg __fpu_ymmh11;
 struct __darwin_xmm_reg __fpu_ymmh12;
 struct __darwin_xmm_reg __fpu_ymmh13;
 struct __darwin_xmm_reg __fpu_ymmh14;
 struct __darwin_xmm_reg __fpu_ymmh15;
 struct __darwin_opmask_reg __fpu_k0;
 struct __darwin_opmask_reg __fpu_k1;
 struct __darwin_opmask_reg __fpu_k2;
 struct __darwin_opmask_reg __fpu_k3;
 struct __darwin_opmask_reg __fpu_k4;
 struct __darwin_opmask_reg __fpu_k5;
 struct __darwin_opmask_reg __fpu_k6;
 struct __darwin_opmask_reg __fpu_k7;
 struct __darwin_ymm_reg __fpu_zmmh0;
 struct __darwin_ymm_reg __fpu_zmmh1;
 struct __darwin_ymm_reg __fpu_zmmh2;
 struct __darwin_ymm_reg __fpu_zmmh3;
 struct __darwin_ymm_reg __fpu_zmmh4;
 struct __darwin_ymm_reg __fpu_zmmh5;
 struct __darwin_ymm_reg __fpu_zmmh6;
 struct __darwin_ymm_reg __fpu_zmmh7;
 struct __darwin_ymm_reg __fpu_zmmh8;
 struct __darwin_ymm_reg __fpu_zmmh9;
 struct __darwin_ymm_reg __fpu_zmmh10;
 struct __darwin_ymm_reg __fpu_zmmh11;
 struct __darwin_ymm_reg __fpu_zmmh12;
 struct __darwin_ymm_reg __fpu_zmmh13;
 struct __darwin_ymm_reg __fpu_zmmh14;
 struct __darwin_ymm_reg __fpu_zmmh15;
 struct __darwin_zmm_reg __fpu_zmm16;
 struct __darwin_zmm_reg __fpu_zmm17;
 struct __darwin_zmm_reg __fpu_zmm18;
 struct __darwin_zmm_reg __fpu_zmm19;
 struct __darwin_zmm_reg __fpu_zmm20;
 struct __darwin_zmm_reg __fpu_zmm21;
 struct __darwin_zmm_reg __fpu_zmm22;
 struct __darwin_zmm_reg __fpu_zmm23;
 struct __darwin_zmm_reg __fpu_zmm24;
 struct __darwin_zmm_reg __fpu_zmm25;
 struct __darwin_zmm_reg __fpu_zmm26;
 struct __darwin_zmm_reg __fpu_zmm27;
 struct __darwin_zmm_reg __fpu_zmm28;
 struct __darwin_zmm_reg __fpu_zmm29;
 struct __darwin_zmm_reg __fpu_zmm30;
 struct __darwin_zmm_reg __fpu_zmm31;
};
# 1166 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h" 3 4
struct __darwin_x86_exception_state64
{
    __uint16_t __trapno;
    __uint16_t __cpu;
    __uint32_t __err;
    __uint64_t __faultvaddr;
};
# 1186 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h" 3 4
struct __darwin_x86_debug_state64
{
 __uint64_t __dr0;
 __uint64_t __dr1;
 __uint64_t __dr2;
 __uint64_t __dr3;
 __uint64_t __dr4;
 __uint64_t __dr5;
 __uint64_t __dr6;
 __uint64_t __dr7;
};
# 1214 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h" 3 4
struct __darwin_x86_cpmu_state64
{
 __uint64_t __ctrs[16];
};
# 34 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/mach/machine/_structs.h" 2 3 4
# 35 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/_mcontext.h" 2 3 4




struct __darwin_mcontext32
{
 struct __darwin_i386_exception_state __es;
 struct __darwin_i386_thread_state __ss;
 struct __darwin_i386_float_state __fs;
};


struct __darwin_mcontext_avx32
{
 struct __darwin_i386_exception_state __es;
 struct __darwin_i386_thread_state __ss;
 struct __darwin_i386_avx_state __fs;
};



struct __darwin_mcontext_avx512_32
{
 struct __darwin_i386_exception_state __es;
 struct __darwin_i386_thread_state __ss;
 struct __darwin_i386_avx512_state __fs;
};
# 97 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/_mcontext.h" 3 4
struct __darwin_mcontext64
{
 struct __darwin_x86_exception_state64 __es;
 struct __darwin_x86_thread_state64 __ss;
 struct __darwin_x86_float_state64 __fs;
};


struct __darwin_mcontext64_full
{
 struct __darwin_x86_exception_state64 __es;
 struct __darwin_x86_thread_full_state64 __ss;
 struct __darwin_x86_float_state64 __fs;
};


struct __darwin_mcontext_avx64
{
 struct __darwin_x86_exception_state64 __es;
 struct __darwin_x86_thread_state64 __ss;
 struct __darwin_x86_avx_state64 __fs;
};


struct __darwin_mcontext_avx64_full
{
 struct __darwin_x86_exception_state64 __es;
 struct __darwin_x86_thread_full_state64 __ss;
 struct __darwin_x86_avx_state64 __fs;
};



struct __darwin_mcontext_avx512_64
{
 struct __darwin_x86_exception_state64 __es;
 struct __darwin_x86_thread_state64 __ss;
 struct __darwin_x86_avx512_state64 __fs;
};


struct __darwin_mcontext_avx512_64_full
{
 struct __darwin_x86_exception_state64 __es;
 struct __darwin_x86_thread_full_state64 __ss;
 struct __darwin_x86_avx512_state64 __fs;
};
# 204 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/_mcontext.h" 3 4
typedef struct __darwin_mcontext64 *mcontext_t;
# 30 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/_mcontext.h" 2 3 4
# 147 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/signal.h" 2 3 4

# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_attr_t.h" 1 3 4
# 31 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_attr_t.h" 3 4
typedef __darwin_pthread_attr_t pthread_attr_t;
# 149 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/signal.h" 2 3 4

# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_sigaltstack.h" 1 3 4
# 42 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_sigaltstack.h" 3 4
struct __darwin_sigaltstack
{
 void *ss_sp;
 __darwin_size_t ss_size;
 int ss_flags;
};
typedef struct __darwin_sigaltstack stack_t;
# 151 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/signal.h" 2 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_ucontext.h" 1 3 4
# 39 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_ucontext.h" 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/_mcontext.h" 1 3 4
# 40 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_ucontext.h" 2 3 4


struct __darwin_ucontext
{
 int uc_onstack;
 __darwin_sigset_t uc_sigmask;
 struct __darwin_sigaltstack uc_stack;
 struct __darwin_ucontext *uc_link;
 __darwin_size_t uc_mcsize;
 struct __darwin_mcontext64 *uc_mcontext;



};


typedef struct __darwin_ucontext ucontext_t;
# 152 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/signal.h" 2 3 4






union sigval {

 int sival_int;
 void *sival_ptr;
};





struct sigevent {
 int sigev_notify;
 int sigev_signo;
 union sigval sigev_value;
 void (*sigev_notify_function)(union sigval);
 pthread_attr_t *sigev_notify_attributes;
};


typedef struct __siginfo {
 int si_signo;
 int si_errno;
 int si_code;
 pid_t si_pid;
 uid_t si_uid;
 int si_status;
 void *si_addr;
 union sigval si_value;
 long si_band;
 unsigned long __pad[7];
} siginfo_t;
# 269 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/signal.h" 3 4
union __sigaction_u {
 void (*__sa_handler)(int);
 void (*__sa_sigaction)(int, struct __siginfo *,
     void *);
};


struct __sigaction {
 union __sigaction_u __sigaction_u;
 void (*sa_tramp)(void *, int, int, siginfo_t *, void *);
 sigset_t sa_mask;
 int sa_flags;
};




struct sigaction {
 union __sigaction_u __sigaction_u;
 sigset_t sa_mask;
 int sa_flags;
};
# 331 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/signal.h" 3 4
typedef void (*sig_t)(int);
# 348 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/signal.h" 3 4
struct sigvec {
 void (*sv_handler)(int);
 int sv_mask;
 int sv_flags;
};
# 367 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/signal.h" 3 4
struct sigstack {
 char *ss_sp;
 int ss_onstack;
};
# 390 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/signal.h" 3 4
    void(*signal(int, void (*)(int)))(int);
# 110 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/wait.h" 2 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/resource.h" 1 3 4
# 72 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/resource.h" 3 4
# 1 "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/11.0.0/include/stdint.h" 1 3 4
# 63 "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/11.0.0/include/stdint.h" 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/stdint.h" 1 3 4
# 23 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/stdint.h" 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types/_uint8_t.h" 1 3 4
# 31 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types/_uint8_t.h" 3 4
typedef unsigned char uint8_t;
# 24 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/stdint.h" 2 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types/_uint16_t.h" 1 3 4
# 31 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types/_uint16_t.h" 3 4
typedef unsigned short uint16_t;
# 25 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/stdint.h" 2 3 4




typedef int8_t int_least8_t;
typedef int16_t int_least16_t;
typedef int32_t int_least32_t;
typedef int64_t int_least64_t;
typedef uint8_t uint_least8_t;
typedef uint16_t uint_least16_t;
typedef uint32_t uint_least32_t;
typedef uint64_t uint_least64_t;



typedef int8_t int_fast8_t;
typedef int16_t int_fast16_t;
typedef int32_t int_fast32_t;
typedef int64_t int_fast64_t;
typedef uint8_t uint_fast8_t;
typedef uint16_t uint_fast16_t;
typedef uint32_t uint_fast32_t;
typedef uint64_t uint_fast64_t;
# 58 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/stdint.h" 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types/_intmax_t.h" 1 3 4
# 32 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types/_intmax_t.h" 3 4
typedef long int intmax_t;
# 59 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/stdint.h" 2 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types/_uintmax_t.h" 1 3 4
# 32 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types/_uintmax_t.h" 3 4
typedef long unsigned int uintmax_t;
# 60 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/stdint.h" 2 3 4
# 64 "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/11.0.0/include/stdint.h" 2 3 4
# 73 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/resource.h" 2 3 4
# 89 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/resource.h" 3 4
typedef __uint64_t rlim_t;
# 152 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/resource.h" 3 4
struct rusage {
 struct timeval ru_utime;
 struct timeval ru_stime;
# 163 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/resource.h" 3 4
 long ru_maxrss;

 long ru_ixrss;
 long ru_idrss;
 long ru_isrss;
 long ru_minflt;
 long ru_majflt;
 long ru_nswap;
 long ru_inblock;
 long ru_oublock;
 long ru_msgsnd;
 long ru_msgrcv;
 long ru_nsignals;
 long ru_nvcsw;
 long ru_nivcsw;


};
# 193 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/resource.h" 3 4
typedef void *rusage_info_t;

struct rusage_info_v0 {
 uint8_t ri_uuid[16];
 uint64_t ri_user_time;
 uint64_t ri_system_time;
 uint64_t ri_pkg_idle_wkups;
 uint64_t ri_interrupt_wkups;
 uint64_t ri_pageins;
 uint64_t ri_wired_size;
 uint64_t ri_resident_size;
 uint64_t ri_phys_footprint;
 uint64_t ri_proc_start_abstime;
 uint64_t ri_proc_exit_abstime;
};

struct rusage_info_v1 {
 uint8_t ri_uuid[16];
 uint64_t ri_user_time;
 uint64_t ri_system_time;
 uint64_t ri_pkg_idle_wkups;
 uint64_t ri_interrupt_wkups;
 uint64_t ri_pageins;
 uint64_t ri_wired_size;
 uint64_t ri_resident_size;
 uint64_t ri_phys_footprint;
 uint64_t ri_proc_start_abstime;
 uint64_t ri_proc_exit_abstime;
 uint64_t ri_child_user_time;
 uint64_t ri_child_system_time;
 uint64_t ri_child_pkg_idle_wkups;
 uint64_t ri_child_interrupt_wkups;
 uint64_t ri_child_pageins;
 uint64_t ri_child_elapsed_abstime;
};

struct rusage_info_v2 {
 uint8_t ri_uuid[16];
 uint64_t ri_user_time;
 uint64_t ri_system_time;
 uint64_t ri_pkg_idle_wkups;
 uint64_t ri_interrupt_wkups;
 uint64_t ri_pageins;
 uint64_t ri_wired_size;
 uint64_t ri_resident_size;
 uint64_t ri_phys_footprint;
 uint64_t ri_proc_start_abstime;
 uint64_t ri_proc_exit_abstime;
 uint64_t ri_child_user_time;
 uint64_t ri_child_system_time;
 uint64_t ri_child_pkg_idle_wkups;
 uint64_t ri_child_interrupt_wkups;
 uint64_t ri_child_pageins;
 uint64_t ri_child_elapsed_abstime;
 uint64_t ri_diskio_bytesread;
 uint64_t ri_diskio_byteswritten;
};

struct rusage_info_v3 {
 uint8_t ri_uuid[16];
 uint64_t ri_user_time;
 uint64_t ri_system_time;
 uint64_t ri_pkg_idle_wkups;
 uint64_t ri_interrupt_wkups;
 uint64_t ri_pageins;
 uint64_t ri_wired_size;
 uint64_t ri_resident_size;
 uint64_t ri_phys_footprint;
 uint64_t ri_proc_start_abstime;
 uint64_t ri_proc_exit_abstime;
 uint64_t ri_child_user_time;
 uint64_t ri_child_system_time;
 uint64_t ri_child_pkg_idle_wkups;
 uint64_t ri_child_interrupt_wkups;
 uint64_t ri_child_pageins;
 uint64_t ri_child_elapsed_abstime;
 uint64_t ri_diskio_bytesread;
 uint64_t ri_diskio_byteswritten;
 uint64_t ri_cpu_time_qos_default;
 uint64_t ri_cpu_time_qos_maintenance;
 uint64_t ri_cpu_time_qos_background;
 uint64_t ri_cpu_time_qos_utility;
 uint64_t ri_cpu_time_qos_legacy;
 uint64_t ri_cpu_time_qos_user_initiated;
 uint64_t ri_cpu_time_qos_user_interactive;
 uint64_t ri_billed_system_time;
 uint64_t ri_serviced_system_time;
};

struct rusage_info_v4 {
 uint8_t ri_uuid[16];
 uint64_t ri_user_time;
 uint64_t ri_system_time;
 uint64_t ri_pkg_idle_wkups;
 uint64_t ri_interrupt_wkups;
 uint64_t ri_pageins;
 uint64_t ri_wired_size;
 uint64_t ri_resident_size;
 uint64_t ri_phys_footprint;
 uint64_t ri_proc_start_abstime;
 uint64_t ri_proc_exit_abstime;
 uint64_t ri_child_user_time;
 uint64_t ri_child_system_time;
 uint64_t ri_child_pkg_idle_wkups;
 uint64_t ri_child_interrupt_wkups;
 uint64_t ri_child_pageins;
 uint64_t ri_child_elapsed_abstime;
 uint64_t ri_diskio_bytesread;
 uint64_t ri_diskio_byteswritten;
 uint64_t ri_cpu_time_qos_default;
 uint64_t ri_cpu_time_qos_maintenance;
 uint64_t ri_cpu_time_qos_background;
 uint64_t ri_cpu_time_qos_utility;
 uint64_t ri_cpu_time_qos_legacy;
 uint64_t ri_cpu_time_qos_user_initiated;
 uint64_t ri_cpu_time_qos_user_interactive;
 uint64_t ri_billed_system_time;
 uint64_t ri_serviced_system_time;
 uint64_t ri_logical_writes;
 uint64_t ri_lifetime_max_phys_footprint;
 uint64_t ri_instructions;
 uint64_t ri_cycles;
 uint64_t ri_billed_energy;
 uint64_t ri_serviced_energy;
 uint64_t ri_interval_max_phys_footprint;

 uint64_t ri_unused[1];
};

typedef struct rusage_info_v4 rusage_info_current;
# 366 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/resource.h" 3 4
struct rlimit {
 rlim_t rlim_cur;
 rlim_t rlim_max;
};
# 401 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/resource.h" 3 4
struct proc_rlimit_control_wakeupmon {
 uint32_t wm_flags;
 int32_t wm_rate;
};
# 437 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/resource.h" 3 4
int getpriority(int, id_t);

int getiopolicy_np(int, int) __attribute__((availability(macosx,introduced=10.5)));

int getrlimit(int, struct rlimit *) __asm("_" "getrlimit" );
int getrusage(int, struct rusage *);
int setpriority(int, id_t, int);

int setiopolicy_np(int, int, int) __attribute__((availability(macosx,introduced=10.5)));

int setrlimit(int, const struct rlimit *) __asm("_" "setrlimit" );
# 111 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/wait.h" 2 3 4
# 186 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/wait.h" 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/endian.h" 1 3 4
# 35 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/endian.h" 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/endian.h" 1 3 4
# 99 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/endian.h" 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_endian.h" 1 3 4
# 130 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_endian.h" 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/libkern/_OSByteOrder.h" 1 3 4
# 66 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/libkern/_OSByteOrder.h" 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/libkern/i386/_OSByteOrder.h" 1 3 4
# 44 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/libkern/i386/_OSByteOrder.h" 3 4
static inline
__uint16_t
_OSSwapInt16(
 __uint16_t _data
 )
{
 return (__uint16_t)((_data << 8) | (_data >> 8));
}

static inline
__uint32_t
_OSSwapInt32(
 __uint32_t _data
 )
{

 return __builtin_bswap32(_data);




}


static inline
__uint64_t
_OSSwapInt64(
 __uint64_t _data
 )
{
 return __builtin_bswap64(_data);
}
# 67 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/libkern/_OSByteOrder.h" 2 3 4
# 131 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_endian.h" 2 3 4
# 100 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/endian.h" 2 3 4
# 36 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/endian.h" 2 3 4
# 187 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/wait.h" 2 3 4







union wait {
 int w_status;



 struct {

  unsigned int w_Termsig:7,
      w_Coredump:1,
      w_Retcode:8,
      w_Filler:16;







 } w_T;





 struct {

  unsigned int w_Stopval:8,
      w_Stopsig:8,
      w_Filler:16;






 } w_S;
};
# 248 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/wait.h" 3 4
pid_t wait(int *) __asm("_" "wait" );
pid_t waitpid(pid_t, int *, int) __asm("_" "waitpid" );

int waitid(idtype_t, id_t, siginfo_t *, int) __asm("_" "waitid" );


pid_t wait3(int *, int, struct rusage *);
pid_t wait4(pid_t, int *, int, struct rusage *);
# 67 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/stdlib.h" 2 3 4

# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/alloca.h" 1 3 4
# 32 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/alloca.h" 3 4
void *alloca(size_t);
# 69 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/stdlib.h" 2 3 4








# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_ct_rune_t.h" 1 3 4
# 32 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_ct_rune_t.h" 3 4
typedef __darwin_ct_rune_t ct_rune_t;
# 78 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/stdlib.h" 2 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_rune_t.h" 1 3 4
# 31 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_rune_t.h" 3 4
typedef __darwin_rune_t rune_t;
# 79 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/stdlib.h" 2 3 4


# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_wchar_t.h" 1 3 4
# 34 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_wchar_t.h" 3 4
typedef __darwin_wchar_t wchar_t;
# 82 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/stdlib.h" 2 3 4

typedef struct {
 int quot;
 int rem;
} div_t;

typedef struct {
 long quot;
 long rem;
} ldiv_t;


typedef struct {
 long long quot;
 long long rem;
} lldiv_t;
# 118 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/stdlib.h" 3 4
extern int __mb_cur_max;
# 128 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/stdlib.h" 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/malloc/_malloc.h" 1 3 4
# 40 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/malloc/_malloc.h" 3 4
void *malloc(size_t __size) __attribute__((__warn_unused_result__)) __attribute__((alloc_size(1)));
void *calloc(size_t __count, size_t __size) __attribute__((__warn_unused_result__)) __attribute__((alloc_size(1,2)));
void free(void *);
void *realloc(void *__ptr, size_t __size) __attribute__((__warn_unused_result__)) __attribute__((alloc_size(2)));

void *valloc(size_t) __attribute__((alloc_size(1)));

int posix_memalign(void **__memptr, size_t __alignment, size_t __size) __attribute__((availability(macosx,introduced=10.6)));
# 129 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/stdlib.h" 2 3 4


void abort(void) __attribute__((noreturn));
int abs(int) __attribute__((const));
int atexit(void (* _Nonnull)(void));
double atof(const char *);
int atoi(const char *);
long atol(const char *);

long long
  atoll(const char *);

void *bsearch(const void *__key, const void *__base, size_t __nel,
     size_t __width, int (* _Nonnull __compar)(const void *, const void *));

div_t div(int, int) __attribute__((const));
void exit(int) __attribute__((noreturn));

char *getenv(const char *);
long labs(long) __attribute__((const));
ldiv_t ldiv(long, long) __attribute__((const));

long long
  llabs(long long);
lldiv_t lldiv(long long, long long);


int mblen(const char *__s, size_t __n);
size_t mbstowcs(wchar_t * restrict , const char * restrict, size_t);
int mbtowc(wchar_t * restrict, const char * restrict, size_t);

void qsort(void *__base, size_t __nel, size_t __width,
     int (* _Nonnull __compar)(const void *, const void *));
int rand(void) __attribute__((__availability__(swift, unavailable, message="Use arc4random instead.")));

void srand(unsigned) __attribute__((__availability__(swift, unavailable, message="Use arc4random instead.")));
double strtod(const char *, char **) __asm("_" "strtod" );
float strtof(const char *, char **) __asm("_" "strtof" );
long strtol(const char *__str, char **__endptr, int __base);
long double
  strtold(const char *, char **);

long long
  strtoll(const char *__str, char **__endptr, int __base);

unsigned long
  strtoul(const char *__str, char **__endptr, int __base);

unsigned long long
  strtoull(const char *__str, char **__endptr, int __base);
# 187 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/stdlib.h" 3 4
__attribute__((__availability__(swift, unavailable, message="Use posix_spawn APIs or NSTask instead.")))
__attribute__((availability(macos,introduced=10.0))) __attribute__((availability(ios,unavailable)))
__attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)))
int system(const char *) __asm("_" "system" );



size_t wcstombs(char * restrict, const wchar_t * restrict, size_t);
int wctomb(char *, wchar_t);


void _Exit(int) __attribute__((noreturn));
long a64l(const char *);
double drand48(void);
char *ecvt(double, int, int *restrict, int *restrict);
double erand48(unsigned short[3]);
char *fcvt(double, int, int *restrict, int *restrict);
char *gcvt(double, int, char *);
int getsubopt(char **, char * const *, char **);
int grantpt(int);

char *initstate(unsigned, char *, size_t);



long jrand48(unsigned short[3]) __attribute__((__availability__(swift, unavailable, message="Use arc4random instead.")));
char *l64a(long);
void lcong48(unsigned short[7]);
long lrand48(void) __attribute__((__availability__(swift, unavailable, message="Use arc4random instead.")));
char *mktemp(char *);
int mkstemp(char *);
long mrand48(void) __attribute__((__availability__(swift, unavailable, message="Use arc4random instead.")));
long nrand48(unsigned short[3]) __attribute__((__availability__(swift, unavailable, message="Use arc4random instead.")));
int posix_openpt(int);
char *ptsname(int);


int ptsname_r(int fildes, char *buffer, size_t buflen) __attribute__((availability(macos,introduced=10.13.4))) __attribute__((availability(ios,introduced=11.3))) __attribute__((availability(tvos,introduced=11.3))) __attribute__((availability(watchos,introduced=4.3)));


int putenv(char *) __asm("_" "putenv" );
long random(void) __attribute__((__availability__(swift, unavailable, message="Use arc4random instead.")));
int rand_r(unsigned *) __attribute__((__availability__(swift, unavailable, message="Use arc4random instead.")));

char *realpath(const char * restrict, char * restrict) __asm("_" "realpath" "$DARWIN_EXTSN");



unsigned short
 *seed48(unsigned short[3]);
int setenv(const char * __name, const char * __value, int __overwrite) __asm("_" "setenv" );

void setkey(const char *) __asm("_" "setkey" );



char *setstate(const char *);
void srand48(long);

void srandom(unsigned);



int unlockpt(int);

int unsetenv(const char *) __asm("_" "unsetenv" );
# 265 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/stdlib.h" 3 4
uint32_t arc4random(void);
void arc4random_addrandom(unsigned char * , int )
    __attribute__((availability(macosx,introduced=10.0))) __attribute__((availability(macosx,deprecated=10.12,message="use arc4random_stir")))
    __attribute__((availability(ios,introduced=2.0))) __attribute__((availability(ios,deprecated=10.0,message="use arc4random_stir")))
    __attribute__((availability(tvos,introduced=2.0))) __attribute__((availability(tvos,deprecated=10.0,message="use arc4random_stir")))
    __attribute__((availability(watchos,introduced=1.0))) __attribute__((availability(watchos,deprecated=3.0,message="use arc4random_stir")));
void arc4random_buf(void * __buf, size_t __nbytes) __attribute__((availability(macosx,introduced=10.7)));
void arc4random_stir(void);
uint32_t
  arc4random_uniform(uint32_t __upper_bound) __attribute__((availability(macosx,introduced=10.7)));

int atexit_b(void (^ _Nonnull)(void)) __attribute__((availability(macosx,introduced=10.6)));
void *bsearch_b(const void *__key, const void *__base, size_t __nel,
     size_t __width, int (^ _Nonnull __compar)(const void *, const void *)) __attribute__((availability(macosx,introduced=10.6)));



char *cgetcap(char *, const char *, int);
int cgetclose(void);
int cgetent(char **, char **, const char *);
int cgetfirst(char **, char **);
int cgetmatch(const char *, const char *);
int cgetnext(char **, char **);
int cgetnum(char *, const char *, long *);
int cgetset(const char *);
int cgetstr(char *, const char *, char **);
int cgetustr(char *, const char *, char **);

int daemon(int, int) __asm("_" "daemon" "$1050") __attribute__((availability(macosx,introduced=10.0,deprecated=10.5,message="Use posix_spawn APIs instead."))) __attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)));
char *devname(dev_t, mode_t);
char *devname_r(dev_t, mode_t, char *buf, int len);
char *getbsize(int *, long *);
int getloadavg(double [], int);
const char
 *getprogname(void);

int heapsort(void *__base, size_t __nel, size_t __width,
     int (* _Nonnull __compar)(const void *, const void *));

int heapsort_b(void *__base, size_t __nel, size_t __width,
     int (^ _Nonnull __compar)(const void *, const void *)) __attribute__((availability(macosx,introduced=10.6)));

int mergesort(void *__base, size_t __nel, size_t __width,
     int (* _Nonnull __compar)(const void *, const void *));

int mergesort_b(void *__base, size_t __nel, size_t __width,
     int (^ _Nonnull __compar)(const void *, const void *)) __attribute__((availability(macosx,introduced=10.6)));

void psort(void *__base, size_t __nel, size_t __width,
     int (* _Nonnull __compar)(const void *, const void *)) __attribute__((availability(macosx,introduced=10.6)));

void psort_b(void *__base, size_t __nel, size_t __width,
     int (^ _Nonnull __compar)(const void *, const void *)) __attribute__((availability(macosx,introduced=10.6)));

void psort_r(void *__base, size_t __nel, size_t __width, void *,
     int (* _Nonnull __compar)(void *, const void *, const void *)) __attribute__((availability(macosx,introduced=10.6)));

void qsort_b(void *__base, size_t __nel, size_t __width,
     int (^ _Nonnull __compar)(const void *, const void *)) __attribute__((availability(macosx,introduced=10.6)));

void qsort_r(void *__base, size_t __nel, size_t __width, void *,
     int (* _Nonnull __compar)(void *, const void *, const void *));
int radixsort(const unsigned char **__base, int __nel, const unsigned char *__table,
     unsigned __endbyte);
void setprogname(const char *);
int sradixsort(const unsigned char **__base, int __nel, const unsigned char *__table,
     unsigned __endbyte);
void sranddev(void);
void srandomdev(void);
void *reallocf(void *__ptr, size_t __size) __attribute__((alloc_size(2)));

long long
  strtoq(const char *__str, char **__endptr, int __base);
unsigned long long
  strtouq(const char *__str, char **__endptr, int __base);

extern char *suboptarg;
# 4 "./cbug.h" 2
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/fcntl.h" 1 3 4
# 23 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/fcntl.h" 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/fcntl.h" 1 3 4
# 116 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/fcntl.h" 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_o_sync.h" 1 3 4
# 117 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/fcntl.h" 2 3 4
# 157 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/fcntl.h" 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_o_dsync.h" 1 3 4
# 158 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/fcntl.h" 2 3 4
# 310 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/fcntl.h" 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_seek_set.h" 1 3 4
# 311 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/fcntl.h" 2 3 4





# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_s_ifmt.h" 1 3 4
# 317 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/fcntl.h" 2 3 4
# 335 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/fcntl.h" 3 4
struct flock {
 off_t l_start;
 off_t l_len;
 pid_t l_pid;
 short l_type;
 short l_whence;
};
# 350 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/fcntl.h" 3 4
struct flocktimeout {
 struct flock fl;
 struct timespec timeout;
};
# 363 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/fcntl.h" 3 4
struct radvisory {
 off_t ra_offset;
 int ra_count;
};



typedef struct fcodeblobs {
 void *f_cd_hash;
 size_t f_hash_size;
 void *f_cd_buffer;
 size_t f_cd_size;
 unsigned int *f_out_size;
 int f_arch;
 int __padding;
} fcodeblobs_t;
# 387 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/fcntl.h" 3 4
typedef struct fsignatures {
 off_t fs_file_start;
 void *fs_blob_start;
 size_t fs_blob_size;
} fsignatures_t;
# 403 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/fcntl.h" 3 4
typedef struct fchecklv {
 off_t lv_file_start;
 size_t lv_error_message_size;
 void *lv_error_message;
} fchecklv_t;
# 419 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/fcntl.h" 3 4
typedef struct fstore {
 unsigned int fst_flags;
 int fst_posmode;
 off_t fst_offset;
 off_t fst_length;
 off_t fst_bytesalloc;
} fstore_t;


typedef struct fpunchhole {
 unsigned int fp_flags;
 unsigned int reserved;
 off_t fp_offset;
 off_t fp_length;
} fpunchhole_t;


typedef struct ftrimactivefile {
 off_t fta_offset;
 off_t fta_length;
} ftrimactivefile_t;



typedef struct fbootstraptransfer {
 off_t fbt_offset;
 size_t fbt_length;
 void *fbt_buffer;
} fbootstraptransfer_t;
# 471 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/fcntl.h" 3 4
#pragma pack(4)

struct log2phys {
 unsigned int l2p_flags;
 off_t l2p_contigbytes;


 off_t l2p_devoffset;


};

#pragma pack()
# 494 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/fcntl.h" 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_filesec_t.h" 1 3 4
# 30 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_filesec_t.h" 3 4
struct _filesec;
typedef struct _filesec *filesec_t;
# 495 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/fcntl.h" 2 3 4

typedef enum {
 FILESEC_OWNER = 1,
 FILESEC_GROUP = 2,
 FILESEC_UUID = 3,
 FILESEC_MODE = 4,
 FILESEC_ACL = 5,
 FILESEC_GRPUUID = 6,


 FILESEC_ACL_RAW = 100,
 FILESEC_ACL_ALLOCSIZE = 101
} filesec_property_t;






int open(const char *, int, ...) __asm("_" "open" );

int openat(int, const char *, int, ...) __asm("_" "openat" ) __attribute__((availability(macosx,introduced=10.10)));

int creat(const char *, mode_t) __asm("_" "creat" );
int fcntl(int, int, ...) __asm("_" "fcntl" );


int openx_np(const char *, int, filesec_t);




int open_dprotected_np( const char *, int, int, int, ...);
int flock(int, int);
filesec_t filesec_init(void);
filesec_t filesec_dup(filesec_t);
void filesec_free(filesec_t);
int filesec_get_property(filesec_t, filesec_property_t, void *);
int filesec_query_property(filesec_t, filesec_property_t, int *);
int filesec_set_property(filesec_t, filesec_property_t, const void *);
int filesec_unset_property(filesec_t, filesec_property_t) __attribute__((availability(macosx,introduced=10.6)));
# 24 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/fcntl.h" 2 3 4
# 5 "./cbug.h" 2
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/assert.h" 1 3 4
# 76 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/assert.h" 3 4
void __assert_rtn(const char *, const char *, int, const char *) __attribute__((noreturn)) __attribute__((__disable_tail_calls__));
# 6 "./cbug.h" 2
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/string.h" 1 3 4
# 70 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/string.h" 3 4
void *memchr(const void *__s, int __c, size_t __n);
int memcmp(const void *__s1, const void *__s2, size_t __n);
void *memcpy(void *__dst, const void *__src, size_t __n);
void *memmove(void *__dst, const void *__src, size_t __len);
void *memset(void *__b, int __c, size_t __len);
char *strcat(char *__s1, const char *__s2);
char *strchr(const char *__s, int __c);
int strcmp(const char *__s1, const char *__s2);
int strcoll(const char *__s1, const char *__s2);
char *strcpy(char *__dst, const char *__src);
size_t strcspn(const char *__s, const char *__charset);
char *strerror(int __errnum) __asm("_" "strerror" );
size_t strlen(const char *__s);
char *strncat(char *__s1, const char *__s2, size_t __n);
int strncmp(const char *__s1, const char *__s2, size_t __n);
char *strncpy(char *__dst, const char *__src, size_t __n);
char *strpbrk(const char *__s, const char *__charset);
char *strrchr(const char *__s, int __c);
size_t strspn(const char *__s, const char *__charset);
char *strstr(const char *__big, const char *__little);
char *strtok(char *__str, const char *__sep);
size_t strxfrm(char *__s1, const char *__s2, size_t __n);
# 104 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/string.h" 3 4
char *strtok_r(char *__str, const char *__sep, char **__lasts);
# 116 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/string.h" 3 4
int strerror_r(int __errnum, char *__strerrbuf, size_t __buflen);
char *strdup(const char *__s1);
void *memccpy(void *__dst, const void *__src, int __c, size_t __n);
# 130 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/string.h" 3 4
char *stpcpy(char *__dst, const char *__src);
char *stpncpy(char *__dst, const char *__src, size_t __n) __attribute__((availability(macosx,introduced=10.7)));
char *strndup(const char *__s1, size_t __n) __attribute__((availability(macosx,introduced=10.7)));
size_t strnlen(const char *__s1, size_t __n) __attribute__((availability(macosx,introduced=10.7)));
char *strsignal(int __sig);







# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_rsize_t.h" 1 3 4
# 31 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_rsize_t.h" 3 4
typedef __darwin_size_t rsize_t;
# 142 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/string.h" 2 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_errno_t.h" 1 3 4
# 30 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_errno_t.h" 3 4
typedef int errno_t;
# 143 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/string.h" 2 3 4


errno_t memset_s(void *__s, rsize_t __smax, int __c, rsize_t __n) __attribute__((availability(macosx,introduced=10.9)));
# 155 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/string.h" 3 4
void *memmem(const void *__big, size_t __big_len, const void *__little, size_t __little_len) __attribute__((availability(macosx,introduced=10.7)));
void memset_pattern4(void *__b, const void *__pattern4, size_t __len) __attribute__((availability(macosx,introduced=10.5)));
void memset_pattern8(void *__b, const void *__pattern8, size_t __len) __attribute__((availability(macosx,introduced=10.5)));
void memset_pattern16(void *__b, const void *__pattern16, size_t __len) __attribute__((availability(macosx,introduced=10.5)));

char *strcasestr(const char *__big, const char *__little);
char *strnstr(const char *__big, const char *__little, size_t __len);
size_t strlcat(char *__dst, const char *__source, size_t __size);
size_t strlcpy(char *__dst, const char *__source, size_t __size);
void strmode(int __mode, char *__bp);
char *strsep(char **__stringp, const char *__delim);


void swab(const void * restrict, void * restrict, ssize_t);

__attribute__((availability(macosx,introduced=10.12.1))) __attribute__((availability(ios,introduced=10.1)))
__attribute__((availability(tvos,introduced=10.0.1))) __attribute__((availability(watchos,introduced=3.1)))
int timingsafe_bcmp(const void *__b1, const void *__b2, size_t __len);








# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/strings.h" 1 3 4
# 70 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/strings.h" 3 4
int bcmp(const void *, const void *, size_t) ;
void bcopy(const void *, void *, size_t) ;
void bzero(void *, size_t) ;
char *index(const char *, int) ;
char *rindex(const char *, int) ;


int ffs(int);
int strcasecmp(const char *, const char *);
int strncasecmp(const char *, const char *, size_t);





int ffsl(long) __attribute__((availability(macosx,introduced=10.5)));
int ffsll(long long) __attribute__((availability(macosx,introduced=10.9)));
int fls(int) __attribute__((availability(macosx,introduced=10.5)));
int flsl(long) __attribute__((availability(macosx,introduced=10.5)));
int flsll(long long) __attribute__((availability(macosx,introduced=10.9)));



# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/string.h" 1 3 4
# 93 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/strings.h" 2 3 4




# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/secure/_strings.h" 1 3 4
# 98 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/strings.h" 2 3 4
# 181 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/string.h" 2 3 4
# 190 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/string.h" 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/secure/_string.h" 1 3 4
# 191 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/string.h" 2 3 4
# 7 "./cbug.h" 2
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/ctype.h" 1 3 4
# 69 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/ctype.h" 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_ctype.h" 1 3 4
# 70 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_ctype.h" 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/runetype.h" 1 3 4
# 49 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/runetype.h" 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_wchar_t.h" 1 3 4
# 50 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/runetype.h" 2 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_wint_t.h" 1 3 4
# 32 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_wint_t.h" 3 4
typedef __darwin_wint_t wint_t;
# 51 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/runetype.h" 2 3 4
# 60 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/runetype.h" 3 4
typedef struct {
 __darwin_rune_t __min;
 __darwin_rune_t __max;
 __darwin_rune_t __map;
 __uint32_t *__types;
} _RuneEntry;

typedef struct {
 int __nranges;
 _RuneEntry *__ranges;
} _RuneRange;

typedef struct {
 char __name[14];
 __uint32_t __mask;
} _RuneCharClass;

typedef struct {
 char __magic[8];
 char __encoding[32];

 __darwin_rune_t (*__sgetrune)(const char *, __darwin_size_t, char const **);
 int (*__sputrune)(__darwin_rune_t, char *, __darwin_size_t, char **);
 __darwin_rune_t __invalid_rune;

 __uint32_t __runetype[(1 <<8 )];
 __darwin_rune_t __maplower[(1 <<8 )];
 __darwin_rune_t __mapupper[(1 <<8 )];






 _RuneRange __runetype_ext;
 _RuneRange __maplower_ext;
 _RuneRange __mapupper_ext;

 void *__variable;
 int __variable_len;




 int __ncharclasses;
 _RuneCharClass *__charclasses;
} _RuneLocale;




extern _RuneLocale _DefaultRuneLocale;
extern _RuneLocale *_CurrentRuneLocale;
# 71 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_ctype.h" 2 3 4
# 129 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_ctype.h" 3 4
unsigned long ___runetype(__darwin_ct_rune_t);
__darwin_ct_rune_t ___tolower(__darwin_ct_rune_t);
__darwin_ct_rune_t ___toupper(__darwin_ct_rune_t);


inline int
isascii(int _c)
{
 return ((_c & ~0x7F) == 0);
}
# 148 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_ctype.h" 3 4
int __maskrune(__darwin_ct_rune_t, unsigned long);



inline int
__istype(__darwin_ct_rune_t _c, unsigned long _f)
{



 return (isascii(_c) ? !!(_DefaultRuneLocale.__runetype[_c] & _f)
  : !!__maskrune(_c, _f));

}

inline __darwin_ct_rune_t
__isctype(__darwin_ct_rune_t _c, unsigned long _f)
{



 return (_c < 0 || _c >= (1 <<8 )) ? 0 :
  !!(_DefaultRuneLocale.__runetype[_c] & _f);

}
# 188 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_ctype.h" 3 4
__darwin_ct_rune_t __toupper(__darwin_ct_rune_t);
__darwin_ct_rune_t __tolower(__darwin_ct_rune_t);



inline int
__wcwidth(__darwin_ct_rune_t _c)
{
 unsigned int _x;

 if (_c == 0)
  return (0);
 _x = (unsigned int)__maskrune(_c, 0xe0000000L|0x00040000L);
 if ((_x & 0xe0000000L) != 0)
  return ((_x & 0xe0000000L) >> 30);
 return ((_x & 0x00040000L) != 0 ? 1 : -1);
}






inline int
isalnum(int _c)
{
 return (__istype(_c, 0x00000100L|0x00000400L));
}

inline int
isalpha(int _c)
{
 return (__istype(_c, 0x00000100L));
}

inline int
isblank(int _c)
{
 return (__istype(_c, 0x00020000L));
}

inline int
iscntrl(int _c)
{
 return (__istype(_c, 0x00000200L));
}


inline int
isdigit(int _c)
{
 return (__isctype(_c, 0x00000400L));
}

inline int
isgraph(int _c)
{
 return (__istype(_c, 0x00000800L));
}

inline int
islower(int _c)
{
 return (__istype(_c, 0x00001000L));
}

inline int
isprint(int _c)
{
 return (__istype(_c, 0x00040000L));
}

inline int
ispunct(int _c)
{
 return (__istype(_c, 0x00002000L));
}

inline int
isspace(int _c)
{
 return (__istype(_c, 0x00004000L));
}

inline int
isupper(int _c)
{
 return (__istype(_c, 0x00008000L));
}


inline int
isxdigit(int _c)
{
 return (__isctype(_c, 0x00010000L));
}

inline int
toascii(int _c)
{
 return (_c & 0x7F);
}

inline int
tolower(int _c)
{
        return (__tolower(_c));
}

inline int
toupper(int _c)
{
        return (__toupper(_c));
}


inline int
digittoint(int _c)
{
 return (__maskrune(_c, 0x0F));
}

inline int
ishexnumber(int _c)
{
 return (__istype(_c, 0x00010000L));
}

inline int
isideogram(int _c)
{
 return (__istype(_c, 0x00080000L));
}

inline int
isnumber(int _c)
{
 return (__istype(_c, 0x00000400L));
}

inline int
isphonogram(int _c)
{
 return (__istype(_c, 0x00200000L));
}

inline int
isrune(int _c)
{
 return (__istype(_c, 0xFFFFFFF0L));
}

inline int
isspecial(int _c)
{
 return (__istype(_c, 0x00100000L));
}
# 70 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/ctype.h" 2 3 4
# 8 "./cbug.h" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/11.0.0/include/stdarg.h" 1 3 4
# 30 "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/11.0.0/include/stdarg.h" 3 4
typedef __builtin_va_list va_list;
# 48 "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/11.0.0/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 9 "./cbug.h" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/11.0.0/include/limits.h" 1 3 4
# 37 "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/11.0.0/include/limits.h" 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/limits.h" 1 3 4
# 64 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/limits.h" 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/limits.h" 1 3 4





# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/limits.h" 1 3 4
# 40 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/limits.h" 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/_limits.h" 1 3 4
# 41 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/limits.h" 2 3 4
# 7 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/limits.h" 2 3 4
# 65 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/limits.h" 2 3 4
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/syslimits.h" 1 3 4
# 66 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/limits.h" 2 3 4
# 38 "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/11.0.0/include/limits.h" 2 3 4
# 10 "./cbug.h" 2




typedef struct Token Token;
typedef struct Node Node;
typedef struct Var Var;
typedef struct Type Type;
typedef struct Func Func;

enum Token_Type {
 TOKEN_INTEGER = 256,
 TOKEN_IDENTIFIER,
 TOKEN_LOGICAL_AND,
 TOKEN_LOGICAL_OR,
 TOKEN_EQUAL,
 TOKEN_NOT_EQUAL,
 TOKEN_LESS_OR_EQUAL,
 TOKEN_GREATER_OR_EQUAL,
 TOKEN_RETURN,
 TOKEN_IF,
 TOKEN_ELSE,
 TOKEN_WHILE,
 TOKEN_FOR,
 TOKEN_INT,
 TOKEN_VOID,
 TOKEN_CHAR,
 TOKEN_SHORT,
 TOKEN_LONG,
 TOKEN_STRING,
 TOKEN_INC,
 TOKEN_DEC,
 TOKEN_BREAK,
 TOKEN_CONTINUE,
 TOKEN_UNSIGNED,
 TOKEN_SIGNED,
 TOKEN_SIZEOF,
 TOKEN_ADD_ASSIGN,
 TOKEN_SUB_ASSIGN,
 TOKEN_MUL_ASSIGN,
 TOKEN_DIV_ASSIGN,
 TOKEN_STRUCT,
 TOKEN_UNION,
 TOKEN_ARROW,
};

struct Token {
 int type;
 long long int_val;
 char *name;
 int line;
 int col;
 char *str;
};

enum Node_Type {
 NODE_NONE,
 NODE_PROGRAM,
 NODE_VAR,
 NODE_INT,
 NODE_BINARY,
 NODE_ASSIGN,
 NODE_NEG,
 NODE_RETURN,
 NODE_IF,
 NODE_WHILE,
 NODE_FOR,
 NODE_BLOCK,
 NODE_FUNC_CALL,
 NODE_UNARY,
 NODE_FUNC_DEF,
 NODE_DEREF,
 NODE_ADDR,
 NODE_VAR_DECL,
 NODE_STRING,
 NODE_CONTINUE,
 NODE_BREAK,
 NODE_CAST,
 NODE_QUESTION,
 NODE_MEMBER,
};

struct Node {
 int type;
 Var *var;
 Token *tok;
 Node *left;
 Node *right;
 Node *next_stmt;
 Node *body;
 Node *condition;
 Node *init;
 Node *inc;
 Node *next_in_block;
 Node *next_in_decl;
 Node *first_stmt;
 Node *next_in_comma;
 Type *cast_type;

 Type *ret_type;
 Node *else_;
 Type *t;
 Func *func;
 int member_idx;
 union {
  Node *args[100];
  Node *params[100];
 };
 int arg_count;
 int param_count;
 int stack_size;
};

struct Type {
 enum {INT, PTR, VOID, ARRAY, SHORT, CHAR, LONG, STRUCT} t;
 struct Type *ptr_to;
 int array_size;
 int size;
 int is_unsigned;
 char *name;
 Type *field_type[20];
 char *field_name[20];
 int field_offset[20];
 int field_count;
};

typedef struct Scope Scope;
struct Scope {
 Scope *parent;
 Scope *prev;
 Scope *child;
 Scope *next;
 Var *vars[100];
 int var_count;
};

struct Var {
 Type *type;
 char *name;
 int offset;
 Token *token;
 int global;
 Node *decl;
};

struct Func {
 Type *ret_type;
 char *name;
};

Type *parse_type();
Node *parse();
Node *function();
Node *decl();
Node *statement();
Node *expr();
Node *assign();
Node *conditional();
Node *logical_or();
Node *logical_and();
Node *equality();
Node *relational();
Node *add();
Node *mul();
Node *cast();
Node *unary();
Node *postfix();
Node *primary();
# 14 "main.c" 2
# 34 "main.c"
char *filename;
char *program_str;
FILE *f;

Type types[10000];
int type_count;
Type *types_declared[1000];
int types_declared_count;

char *strings_literal[10000];
int strings_literal_count;

Type *type_long = &(Type){.t = LONG, .size = 8};
Type *type_int = &(Type){.t = INT, .size = 4};
Type *type_short = &(Type){.t = SHORT, .size = 2};
Type *type_char = &(Type){.t = CHAR, .size = 1};
Type *type_void = &(Type){.t = VOID, .size = 0};

Func funcs[10000];
int func_count = 0;

Scope scopes[100000];
int scope_count = 0;
Scope *curr_scope = 0;

Token tokens[100000];
int ct;

Node _nodes[100000];
int _curr_node;

Var vars[10000];
int var_count = 0;

Node *curr_func = 0;

void error(char *fmt, ...)
{
 va_list ap;
 __builtin_va_start(ap, fmt);
 fprintf(__stderrp, "\033[1;31merror:\033[1m ");
 vfprintf(__stderrp, fmt, ap);
 fprintf(__stderrp, "\033[0m\n");
 __builtin_va_end(ap);
 exit(1);
}

void error_token(Token *token, char *fmt, ...)
{
 va_list ap;
 __builtin_va_start(ap, fmt);
 fprintf(__stderrp, "\033[1m%s:%d:%d: \033[1;31merror: \033[0m\033[1m",
   filename, token->line, token->col);
 vfprintf(__stderrp, fmt, ap);
 fprintf(__stderrp, "\033[0m\n");
 __builtin_va_end(ap);
 exit(1);
}


# 1 "./tokenize.c" 1
# 1 "./cbug.h" 1



# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/fcntl.h" 1 3 4
# 5 "./cbug.h" 2
# 1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/assert.h" 1 3 4
# 76 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/assert.h" 3 4
void __assert_rtn(const char *, const char *, int, const char *) __attribute__((noreturn)) __attribute__((__disable_tail_calls__));
# 6 "./cbug.h" 2
# 2 "./tokenize.c" 2

struct {
 char *name;
 int type;
} multi_char_tokens_type[] = {
 {"==", TOKEN_EQUAL},
 {"!=", TOKEN_NOT_EQUAL},
 {"<=", TOKEN_LESS_OR_EQUAL},
 {">=", TOKEN_GREATER_OR_EQUAL},
 {"&&", TOKEN_LOGICAL_AND},
 {"||", TOKEN_LOGICAL_OR},
 {"++", TOKEN_INC},
 {"--", TOKEN_DEC},
 {"+=", TOKEN_ADD_ASSIGN},
 {"-=", TOKEN_SUB_ASSIGN},
 {"*=", TOKEN_MUL_ASSIGN},
 {"/=", TOKEN_DIV_ASSIGN},
 {"->", TOKEN_ARROW},
 {0, 0},
};

struct {
 char *name;
 int type;
} keywords[] = {
 {"return", TOKEN_RETURN},
 {"for", TOKEN_FOR},
 {"while", TOKEN_WHILE},
 {"if", TOKEN_IF},
 {"else", TOKEN_ELSE},
 {"int", TOKEN_INT},
 {"void", TOKEN_VOID},
 {"char", TOKEN_CHAR},
 {"short", TOKEN_SHORT},
 {"long", TOKEN_LONG},
 {"unsigned", TOKEN_UNSIGNED},
 {"signed", TOKEN_SIGNED},
 {"break", TOKEN_BREAK},
 {"continue", TOKEN_CONTINUE},
 {"sizeof", TOKEN_SIZEOF},
 {"long", TOKEN_LONG},
 {"struct", TOKEN_STRUCT},
 {"union", TOKEN_UNION},
 {0, 0},
};

char *token_type_name(int type)
{
 static char *c[255];
 if (type == TOKEN_INTEGER)
  return "int";
 else if (type == TOKEN_IDENTIFIER)
  return "identifier";
 else if (type == TOKEN_STRING)
  return "string";
 else if (type < 255)
 {
  if (!c[type])
  {
   c[type] = malloc(2);
   c[type][0] = type;
   c[type][1] = 0;
  }
  return c[type];
 }
 else
 {
  for (int i = 0; multi_char_tokens_type[i].name; i++)
  {
   if (multi_char_tokens_type[i].type == type)
    return multi_char_tokens_type[i].name;
  }
  for (int i = 0; keywords[i].name; i++)
  {
   if (keywords[i].type == type)
    return keywords[i].name;
  }
 }
 (__builtin_expect(!(0), 0) ? __assert_rtn(__func__, "./tokenize.c", 80, "0") : (void)0);
}

Token *new_temp_token(int type)
{
 Token *t = calloc(sizeof(Token), 1);
 t->type = type;
 t->line = -1;
 t->col = -1;
 return t;
}

char get_backspace_char(char c)
{
 switch (c)
 {
  case 'n': return '\n';
  case 't': return '\t';
  case 'r': return '\r';
  case 'v': return '\v';
  case 'f': return '\f';
  case 'a': return '\a';
  case 'b': return '\b';
  default: return c;
 }
}

Token *tokenize(char *s)
{
 int i = 0, j = 0;
 int line = 1;
 int col = 1;
 (__builtin_expect(!(s), 0) ? __assert_rtn(__func__, "./tokenize.c", 112, "s") : (void)0);
 while (s[i])
 {
  Token *token = &tokens[j];
  token->type = 0;
  while (isspace(s[i]))
  {
   if (s[i] == '\n')
   {
    line++;
    col = 1;
   }
   else
    col++;
   i++;
  }
  if (!s[i])
   break;
  if (s[i] == '/' && s[i + 1] == '/')
  {
   while (s[i] && s[i] != '\n')
    i++;
   continue;
  }
  if (s[i] == '/' && s[i + 1] == '*')
  {
   i += 2;

   while (s[i] && (s[i] != '*' || s[i + 1] != '/'))
    i++;
   if (s[i])
    i += 2;
   else
    error("unclosed comment");
   continue;
  }
  token->str = s + i;
  token->line = line;
  token->col = col;
  int last = i;
  if (isdigit(s[i]))
  {

   token->type = TOKEN_INTEGER;
   token->int_val = 0;
   while (isdigit(s[i]))
   {
    token->int_val = token->int_val * 10 + (s[i] - '0');
    i++;
   }
  }
  else if (s[i] == '\'')
  {
   i++;
   token->type = TOKEN_INTEGER;
   if (s[i] == '\\')
   {
    i++;
    token->int_val = get_backspace_char(s[i]);
   }
   else
    token->int_val = s[i];
   i++;
   if (s[i] != '\'')
    error_token(token, "missing terminating ' character");
   i++;
  }
  else if (s[i] == '"')
  {
   i++;
   token->type = TOKEN_STRING;
   int k = i;
   while (s[i] && (s[i] != '"' || s[i - 1] == '\\'))
    i++;

   if (s[i] != '"')
    error_token(token, "missing terminating \" character");
   char *name = malloc(i - k + 1);
   __builtin___memcpy_chk (name, s + k, i - k, __builtin_object_size (name, 0));
   name[i - k] = 0;
   token->name = name;
   i++;
  }
  else if (isalpha(s[i]) || s[i] == '_')
  {
   int k = i;
   while (isalnum(s[i]) || s[i] == '_')
    i++;
   char *name = malloc(i - k + 1);
   __builtin___memcpy_chk (name, s + k, i - k, __builtin_object_size (name, 0));
   name[i - k] = 0;
   token->type = TOKEN_IDENTIFIER;
   for (int l = 0; keywords[l].name; l++)
   {
    if (!strcmp(name, keywords[l].name))
    {
     token->type = keywords[l].type;
     break;
    }
   }
   token->name = name;
  }
  else
  {
   for (int k = 0; multi_char_tokens_type[k].name; k++)
   {
    if (!strncmp(s + i, multi_char_tokens_type[k].name,
       strlen(multi_char_tokens_type[k].name)))
    {
     token->type = multi_char_tokens_type[k].type;
     i += strlen(multi_char_tokens_type[k].name);
     break;
    }
   }
   if (!token->type)
   {
    if (strchr("+-*/%()=;,<>{}&[]?:.!", s[i]))
    {
     token->type = s[i];
     i++;
    }
    else
    {
     error_token(token, "unknown token `%c`", s[i]);
    }
   }
  }
  col += i - last;
  j++;
 }
 tokens[j].type = 0;
 tokens[j].line = line, tokens[j].col = col;
 tokens[j].str = s + i;
 if (s[i - 1] == '\n')
  tokens[j].line--, tokens[j].col = 1;
# 260 "./tokenize.c"
 return tokens;
}
# 94 "main.c" 2

int align(int n, int a)
{
 return (n + a - 1) / a * a;
}

char *find(char *s, char c)
{
 int i;

 i = 0;
 while (s[i])
 {
  if (s[i] == c)
   return (s + i);
  i++;
 }
 return (0);
}


# 1 "./parse.c" 1
Scope *new_scope()
{
 Scope *scope = &scopes[scope_count++];
 return scope;
}

void enter_scope()
{
 Scope *scope = new_scope();
 scope->parent = curr_scope;
 curr_scope = scope;
}

void leave_scope()
{
 curr_scope = curr_scope->parent;
}

Type *new_type(int t)
{
 Type *type = &types[type_count++];
 type->t = t;
 if (t == PTR || t == ARRAY)
  type->is_unsigned = 1;
 if (t == PTR || t == ARRAY || t == LONG)
  type->size = 8;
 else if (type->t == INT)
  type->size = 4;
 else if (type->t == SHORT)
  type->size = 2;
 else if (type->t == CHAR)
  type->size = 1;
 return type;
}

int types_are_equal(Type *t1, Type *t2)
{
 if (!t1 || !t2)
  return (0);
 if (t1 == t2)
  return 1;
 if (t1->is_unsigned != t2->is_unsigned)
  return 0;
 if (t1->t != t2->t)
  return 0;
 if (!t1->ptr_to)
  return (t2->ptr_to == 0);
 return types_are_equal(t1->ptr_to, t2->ptr_to);
}

Func *add_func(char *name, Type *ret_type)
{
 Func *fn = &funcs[func_count++];
 fn->name = name;
 fn->ret_type = ret_type;
 return fn;
}

Func *find_func(char *name)
{
 for (int i = 0; i < func_count; i++)
 {
  if (!strcmp(name, funcs[i].name))
   return &funcs[i];
 }
 return 0;
}

Node *new_node(int type)
{
 Node *node = &_nodes[_curr_node++];
 node->type = type;
 node->tok = &tokens[ct];
 return (node);
}

Var *find_var(char *name)
{
 Scope *scope = curr_scope;
 while (scope)
 {
  for (int i = 0; i < scope->var_count; i++)
  {
   if (!strcmp(scope->vars[i]->name, name))
    return scope->vars[i];
  }
  scope = scope->parent;
 }
 return (0);
}

Var *new_var(Type *type, char *name)
{
 for (int i = 0; i < curr_scope->var_count; i++)
 {
  if (!strcmp(curr_scope->vars[i]->name, name))
   error_token(&tokens[ct], "redeclaration of variable \"%s\"\n", name);
 }
 Var *v = &vars[var_count++];
 v->name = name;
 v->token = &tokens[ct];
 (__builtin_expect(!(v->token->type == TOKEN_IDENTIFIER && v->token->name == v->name), 0) ? __assert_rtn(__func__, "./parse.c", 103, "v->token->type == TOKEN_IDENTIFIER && v->token->name == v->name") : (void)0);

 v->type = type;
 curr_scope->vars[curr_scope->var_count++] = v;
 if (!type->size)
  error_token(&tokens[ct], "type with size 0?");
 if (curr_func)
 {
  if (type->t == ARRAY)
  {
   curr_func->stack_size += type->ptr_to->size * type->array_size;
  }
  else
   curr_func->stack_size += type->size;
  curr_func->stack_size = align(curr_func->stack_size, v->type->size);
  v->offset = curr_func->stack_size;
  (__builtin_expect(!(v->offset % v->type->size == 0), 0) ? __assert_rtn(__func__, "./parse.c", 118, "v->offset % v->type->size == 0") : (void)0);
 }
 return (v);
}

int type_match(int type, ...)
{
 va_list ap;
 __builtin_va_start(ap, type);
 while (1)
 {
  int t = __builtin_va_arg(ap, int);
  if (t < 0)
   break ;
  if (t == type)
   return (1);
 }
 return (0);
}

Node *binary(Node *(*func)(), ...)
{
 va_list ap;
 __builtin_va_start(ap, func);
 int matches[100];
 int count = 0;
 while (1)
 {
  int t = __builtin_va_arg(ap, int);
  if (t < 0)
   break;
  matches[count++] = t;
 }
 __builtin_va_end(ap);
 Node *left = func();
 while (1)
 {
  int ok = 0;
  for (int j = 0; j < count && !ok; j++)
  {
   if (tokens[ct].type == matches[j])
    ok = 1;
  }
  if (!ok)
   break;
  Node *node = new_node(NODE_BINARY);
  node->left = left;
  ct++;
  node->right = func();
  left = node;
 }
 return left;
}

void skip(int type)
{
 if (tokens[ct].type != type)
  error_token(&tokens[ct], "expected `%s`", token_type_name(type));
 ct++;
}

int is_typename(Token *tok)
{
 if (type_match(tok->type, TOKEN_INT, TOKEN_VOID, TOKEN_CHAR, TOKEN_SHORT, TOKEN_LONG, TOKEN_UNSIGNED, TOKEN_SIGNED, -1))
  return 1;
 if (tok->type == TOKEN_IDENTIFIER)
 {
  for (int i = 0; i < types_declared_count; i++)
  {
   if (!strcmp(types_declared[i]->name, tok->name))
    return 1;
  }
 }
 return 0;
}

Type *find_binary_op_type(Type *t1, Type *t2)
{
 if (types_are_equal(t1, t2))
  return t1;
 if (t1->ptr_to && !t2->ptr_to)
  ;

 return 0;
}

char *strjoin(char *s1, char *s2)
{
 int l1 = strlen(s1);
 int l2 = strlen(s2);
 char *s = malloc(l1 + l2 + 1);
 __builtin___memcpy_chk (s, s1, l1, __builtin_object_size (s, 0));
 __builtin___memcpy_chk (s + l1, s2, l2, __builtin_object_size (s + l1, 0));
 s[l1 + l2] = 0;
 return s;
}

char *get_type_str(Type *type)
{
 if (type->t == STRUCT)
 {
  return strjoin("struct ", type->name);
 }
 if (type->t == PTR)
 {
  return strjoin(get_type_str(type->ptr_to), "*");
 }
 else if (type->t == ARRAY)
 {
  return strjoin(get_type_str(type->ptr_to), "[]");
 }
 switch(type->t)
 {
  case VOID: return "void";
  case CHAR: return "char";
  case INT: return "int";
  case SHORT: return "short";
  case LONG: return "long";
  default: (__builtin_expect(!(0), 0) ? __assert_rtn(__func__, "./parse.c", 236, "0") : (void)0);
 }
 return "";
}

Type *add_type(Node *node);

void implicit_cast(Node **node, Type *type)
{
 add_type(*node);
 if (types_are_equal(type, (*node)->t))
  return ;
 Node *cast = new_node(NODE_CAST);
 cast->left = *node;
 cast->t = type;
 *node = cast;
}

Type *find_common_type(Type *t1, Type *t2)
{
 if (t1->ptr_to)
  return t1;
 if (t2->ptr_to)
  return t2;
 if (t1->size < 4)
  t1 = type_int;
 if (t2->size < 4)
  t2 = type_int;
 if (t1->size != t2->size)
  return(t1->size < t2->size) ? t2 : t1;
 return t2->is_unsigned ? t2 : t1;
}

Type *add_type(Node *node)
{
 Type *t = type_void;

 if (!node)
  return t;
 if (node->t)
  t = node->t;
 else if (node->type == NODE_INT)
 {
  if (node->tok->int_val > 2147483647 || node->tok->int_val < (-2147483647 -1))
   t = type_long;
  else
   t = type_int;
 }
 else if (node->type == NODE_UNARY)
 {
  if (node->tok->type == TOKEN_INC || node->tok->type == TOKEN_DEC)
  {
   t = add_type(node->left);
   if (t->t == VOID)
    error_token(node->tok, "invalid operand for '%s' operator", token_type_name(node->tok->type));
  }
  else if (node->tok->type == '!')
  {
   add_type(node->left);
   t = type_int;
  }
  else
   (__builtin_expect(!(0), 0) ? __assert_rtn(__func__, "./parse.c", 298, "0") : (void)0);
 }
 else if (node->type == NODE_STRING)
 {
  t = new_type(PTR);
  t->ptr_to = type_char;
 }
 else if (node->type == NODE_VAR)
  t = node->var->type;
 else if (node->type == NODE_FUNC_CALL)
  t = node->func->ret_type;
 else if (node->type == NODE_ADDR)
 {
  t = new_type(PTR);
  t->ptr_to = add_type(node->left);
  if (t->ptr_to->t == VOID)
   error_token(node->tok, "invalid operand for '&'");
 }
 else if (node->type == NODE_DEREF)
 {
  Type *tt = add_type(node->left);
  if (!tt->ptr_to)
   error_token(node->tok, "derefrencing a non-pointer");
  if (tt->ptr_to->t == VOID)
   error_token(node->tok, "derefrencing a void pointer");
  t = tt->ptr_to;
 }
 else if (node->type == NODE_NEG)
 {

  t = add_type(node->left);
  if (t->t == VOID)
   error_token(node->tok, "invalid operand for '-'");
 }
 else if (node->type == NODE_CAST)
 {
  t = node->cast_type;
  add_type(node->left);
 }
 else if (node->type == NODE_BINARY)
 {
  int tok = node->tok->type;
  add_type(node->left);
  add_type(node->right);

  Type *t1 = node->left->t;
  Type *t2 = node->right->t;
  if (t1->t == VOID || t2->t == VOID)
   (__builtin_expect(!(0), 0) ? __assert_rtn(__func__, "./parse.c", 346, "0") : (void)0);

  if (t1->ptr_to || t2->ptr_to)
  {
   if (type_match(tok, '*', '/', '%', -1) || (!t1->ptr_to && tok == '-')
    || (t1->ptr_to && t2->ptr_to && tok == '+')
    || (t1->ptr_to && t2->ptr_to && tok == '-' && !types_are_equal(t1, t2)))
    error_token(node->tok, "invalid operands to binary expression ('%s' and '%s')", get_type_str(t1), get_type_str(t2));
   if (t1->ptr_to && !t2->ptr_to && (tok == '+' || tok == '-'))
    t = t1;
   else if (t2->ptr_to && !t1->ptr_to && tok == '+')
    t = t2;
   else
    t = type_int;
  }
  else
  {
   Type *tt = find_common_type(node->left->t, node->right->t);
   implicit_cast(&node->left, tt);
   implicit_cast(&node->right, tt);
   if (type_match(node->tok->type, '+', '-', '*', '/', '%', -1))
    t = node->left->t;
   else
    t = type_int;
  }
 }
 else if (node->type == NODE_ASSIGN)
 {
  t = add_type(node->left);
  (__builtin_expect(!(t->t != VOID), 0) ? __assert_rtn(__func__, "./parse.c", 375, "t->t != VOID") : (void)0);
  add_type(node->right);
  implicit_cast(&node->right, t);
 }
 else if (node->type == NODE_QUESTION)
 {
  add_type(node->condition);
  add_type(node->left);
  add_type(node->right);
  Type *tt = find_common_type(node->left->t, node->right->t);
  implicit_cast(&node->left, tt);
  implicit_cast(&node->right, tt);
  t = tt;
 }
 else
  (__builtin_expect(!(0), 0) ? __assert_rtn(__func__, "./parse.c", 390, "0") : (void)0);
 node->t = t;
 add_type(node->next_in_comma);
 return t;
}

Node *parse(char *s)
{
 add_func("ASSERT", type_void);
 tokenize(s);
 ct = 0;
 Node *prog = new_node(NODE_PROGRAM);

 curr_scope = new_scope();
 curr_scope->parent = 0;

 Node *curr = prog;
 while (tokens[ct].type)
 {
  int save = ct;

  if (tokens[ct].type == TOKEN_STRUCT)
  {
   Type *type = new_type(STRUCT);

   ct++;
   type->name = tokens[ct].name;
   skip(TOKEN_IDENTIFIER);

   skip('{');
   int i = 0;
   int size = 0;
   while (tokens[ct].type && tokens[ct].type != '}')
   {
    Node *node = decl(1);
    node = node->next_in_decl;
    while (node)
    {
     type->field_name[i] = node->var->name;
     type->field_type[i] = node->var->type;
     size = align(size, node->var->type->size);
     type->field_offset[i] = size;
     if (node->var->type->t == ARRAY)
      size += node->var->type->size * node->var->type->array_size;
     size += node->var->type->size;
     i++;
     node = node->next_in_decl;
    }
    skip(';');
   }
   type->size = size;
   type->field_count = i;
   types_declared[types_declared_count++] = type;
   skip('}');
   skip(';');
   printf("declared struct '%s': (size=%d)\n", type->name, type->size);
   for( int j = 0; j < type->field_count; j++)
    printf("\t%s %s\n", get_type_str(type->field_type[j]), type->field_name[j]);
   continue;
  }
  if (!is_typename(&tokens[ct]))
   error_token(&tokens[ct], "expected a function or variable declaration");
  else

  {
   parse_type();
   skip(TOKEN_IDENTIFIER);
   int globl = 0;
   if (tokens[ct].type != '(')
    globl = 1;
   ct = save;
   if (globl)
   {
    curr->next_stmt = decl(0);
    skip(';');
   }
   else
    curr->next_stmt = function();
   if (curr->next_stmt)
    curr = curr->next_stmt;
  }
 }
 return prog;
}

Type *find_type(char *name)
{
 for (int i = 0; i < types_declared_count; i++)
 {
  if (!strcmp(types_declared[i]->name, name))
   return types_declared[i];
 }
 return 0;
}

Type *parse_base_type()
{
 int i = 0, s = 0, c = 0, l = 0, v = 0, u = 0, si = 0;
 Type *type = 0;
 Token *start = &tokens[ct];
 if (start->type == TOKEN_IDENTIFIER)
 {
  ct++;
  type = find_type(start->name);
  if (type)
   return type;
 }
 while (1)
 {
  if (tokens[ct].type == TOKEN_INT)
   i++;
  else if (tokens[ct].type == TOKEN_VOID)
   v++;
  else if (tokens[ct].type == TOKEN_CHAR)
   c++;
  else if (tokens[ct].type == TOKEN_SHORT)
   s++;
  else if (tokens[ct].type == TOKEN_LONG)
   l++;
  else if (tokens[ct].type == TOKEN_UNSIGNED)
   u++;
  else if (tokens[ct].type == TOKEN_SIGNED)
   si++;
  else
   break;
  ct++;
 }
 int err = 0;
 if (i > 1 || v > 1 || c > 1 || s > 1 || u > 1 || si > 1 || l > 2)
  err = 1;
 if (si && u)
  err = 1;
 if (i + v + c + s > 1)
  err = 1;
 if (l && (v || c || s))
  err = 1;
 if (l)
  type = new_type(LONG);
 else if (i)
  type = new_type(INT);
 else if (v)
  type = new_type(VOID);
 else if (c)
  type = new_type(CHAR);
 else if (s)
  type = new_type(SHORT);
 else if (si || u)
  type = new_type(INT);
 else
  err = 1;
 if (type)
  type->is_unsigned = u;
 if (err)
  error_token(start, "invalid type");
 return type;
}

Type *parse_type()
{
 Type *type = parse_base_type();
 while (tokens[ct].type == '*')
 {
  Type *new = new_type(PTR);
  new->t = PTR;
  new->ptr_to = type;
  type = new;
  ct++;
 }
 return type;
}

Node *function()
{
 enter_scope();

 Type *ret_type = parse_type();
 Node *node = new_node(NODE_FUNC_DEF);
 ct++;
 curr_func = node;
 skip('(');
 int count = 0;

 while (tokens[ct].type != ')')
 {
  node->params[count] = new_node(NODE_VAR_DECL);
  Type *type = parse_type();
  node->params[count]->var = new_var(type, tokens[ct].name);
  skip(TOKEN_IDENTIFIER);

  count++;
  if (tokens[ct].type == ',')
   ct++;
  else if (tokens[ct].type != ')')
   break ;
 }
 skip(')');
 node->param_count = count;
 node->func = add_func(node->tok->name, ret_type);
 if (tokens[ct].type != ';')
 {
  if (tokens[ct].type != '{')
   skip('{');
  node->body = statement();
 }
 else
  skip(';');

 leave_scope();
 return node;
}

Node *statement_or_decl()
{
 if (is_typename(&tokens[ct]))
 {
  Node *node = decl(0);
  skip(';');
  return node;
 }
 return statement();
}

Node *decl(int is_struct)
{

 Node *decl = new_node(NODE_VAR_DECL);
 if (!is_typename(&tokens[ct]))
  error_token(&tokens[ct], "invalid type");
 Type *base = parse_base_type();
 Node *curr = decl;
 while (1)
 {
  curr->next_in_decl = new_node(NODE_VAR_DECL);
  Type *type = base;
  while (tokens[ct].type == '*')
  {
   Type *new = new_type(PTR);
   new->ptr_to = type;
   type = new;
   ct++;
  }
  if (type->t == VOID && !type->ptr_to)
   error_token(&tokens[ct], "variable type can't be void");
  if (tokens[ct].type != TOKEN_IDENTIFIER)
   skip(TOKEN_IDENTIFIER);
  Var *var;
  if (tokens[ct + 1].type == '[')
  {
   Type *arr = new_type(ARRAY);
   arr->ptr_to = type;
   arr->size = arr->ptr_to->size;
   arr->array_size = tokens[ct + 2].int_val;
   type = arr;
   if (is_struct)
   {
    var = &vars[var_count++];
    var->name = tokens[ct].name;
    var->type = type;
   }
   else
    var = new_var(type, tokens[ct].name);
   ct += 2;
   skip(TOKEN_INTEGER);
   skip(']');
  }
  else
  {
   if (is_struct)
   {
    var = &vars[var_count++];
    var->name = tokens[ct].name;
    var->type = type;
   }
   else
    var = new_var(type, tokens[ct].name);
   ct++;
  }
  var->decl = curr->next_in_decl;
  if (!curr_scope->parent)
   var->global = 1;
  curr->next_in_decl->var = var;
  if (tokens[ct].type == '=' && !is_struct)
  {
   if (tokens[ct + 1].type == '{')
   {
    if (type->t != ARRAY)
     error_token(var->token, "invalid initiliazer");




    ct += 2;
    int end = 0;
    Node *init = 0;
    Node *c = 0;
    for (int i = 0;; i++)
    {
     if (tokens[ct].type == '}')
      end = 1;
     if (end && i >= type->array_size)
      break ;
     if (i >= type->array_size)
     {
      assign();
      if (tokens[ct].type == ',')
       ct++;
      else if (tokens[ct].type != '}')
       skip('}');
      continue;
     }
     Node *value;
     if (end)
     {
      value = new_node(NODE_INT);
      value->tok = new_temp_token(TOKEN_INTEGER);
      value->tok->int_val = 0;
     }
     else
     {
      value = assign();
     }

     Node *add = new_node(NODE_BINARY);
     add->tok = new_temp_token('+');
     add->left = new_node(NODE_VAR);
     add->left->var = var;
     add->right = new_node(NODE_INT);
     add->right->tok = new_temp_token(TOKEN_INT);
     add->right->tok->int_val = i;

     Node *deref = new_node(NODE_DEREF);
     deref->tok = new_temp_token('*');
     deref->left = add;

     Node *a = new_node(NODE_ASSIGN);
     a->tok = new_temp_token('=');
     a->left = deref;
     a->right = value;


     if (!c)
     {
      c = a;
      init = a;
     }
     else
     {
      c->next_in_comma = a;
      c = c->next_in_comma;
     }
     if (tokens[ct].type == ',')
      ct++;
     else if (tokens[ct].type != '}')
      skip('}');
    }
    skip('}');
    curr->next_in_decl->left = init;

   }
   else
   {
    ct--;
    curr->next_in_decl->left = assign();
   }
   add_type(curr->next_in_decl->left);
  }
  if (tokens[ct].type != ',')
   break ;
  ct++;
  curr = curr->next_in_decl;
 }
 return decl;
}

Node *statement()
{
 Node *node = 0;

 if (tokens[ct].type == TOKEN_RETURN)
 {
  node = new_node(NODE_RETURN);
  ct++;
  if (tokens[ct].type != ';')
   node->left = expr();
  else
   node->left = new_node(NODE_NONE);
  skip(';');
 }
 else if (tokens[ct].type == TOKEN_CONTINUE)
 {
  node = new_node(NODE_CONTINUE);
  ct++;
  skip(';');
 }
 else if (tokens[ct].type == TOKEN_BREAK)
 {
  node = new_node(NODE_BREAK);
  ct++;
  skip(';');
 }
 else if (tokens[ct].type == TOKEN_IF)
 {
  node = new_node(NODE_IF);
  ct++;
  skip('(');
  node->condition = expr();
  skip(')');
  node->body = statement();
  if (tokens[ct].type == TOKEN_ELSE)
  {
   ct++;
   node->else_ = statement();
  }
 }
 else if (tokens[ct].type == TOKEN_WHILE)
 {
  node = new_node(NODE_WHILE);
  ct++;
  skip('(');
  node->condition = expr();
  skip(')');
  node->body = statement();
 }
 else if (tokens[ct].type == TOKEN_FOR)
 {
  enter_scope();
  node = new_node(NODE_FOR);
  ct++;
  skip('(');
  if (tokens[ct].type != ';')
  {
   if (is_typename(&tokens[ct]))
    node->init = decl(0);
   else
    node->init = expr();
  }
  skip(';');
  if (tokens[ct].type != ';')
   node->condition = expr();
  skip(';');
  if (tokens[ct].type != ')')
   node->inc = expr();
  skip(')');
  node->body = statement();
  leave_scope();
 }
 else if (tokens[ct].type == '{')
 {
  node = new_node(NODE_BLOCK);
  ct++;
  Node *curr = node;

  enter_scope();
  while (tokens[ct].type != '}' && tokens[ct].type)
  {
   curr->next_in_block = statement_or_decl();
   (__builtin_expect(!(curr->next_in_block), 0) ? __assert_rtn(__func__, "./parse.c", 846, "curr->next_in_block") : (void)0);
   curr = curr->next_in_block;
   (__builtin_expect(!(curr), 0) ? __assert_rtn(__func__, "./parse.c", 848, "curr") : (void)0);
  }
  node->first_stmt = node->next_in_block;
  node->next_in_block = 0;
  leave_scope();
  curr->next_in_block = 0;
  skip('}');
 }
 else
 {
  if (tokens[ct].type != ';')
   node = expr();
  else
   node = new_node(NODE_NONE);
  skip(';');
 }
 return node;
}

Node *expr()
{
 Node *node = assign();
 Node *curr = node;
 while (tokens[ct].type == ',')
 {
  ct++;
  curr->next_in_comma = assign();
  curr = curr->next_in_comma;
 }
 return node;
}

Node *assign()
{
 Node *left = conditional();

 if (type_match(tokens[ct].type, '=', TOKEN_ADD_ASSIGN,
    TOKEN_SUB_ASSIGN, TOKEN_DIV_ASSIGN, TOKEN_MUL_ASSIGN, -1))
 {
  if (left->type != NODE_VAR && left->type != NODE_DEREF)
   error_token(&tokens[ct], "expression is not assignable");
  Node *node = new_node(NODE_ASSIGN);
  ct++;
  node->left = left;
  node->right = assign();
  if (node->tok->type != '=')
  {
   Node *right = new_node(NODE_BINARY);
   right->tok = new_temp_token(node->tok->str[0]);
   right->left = left;
   right->right = node->right;
   node->right = right;
  }
  add_type(node);
  return node;
 }
 add_type(left);
 return left;
}

Node *conditional()
{
 Node *left = logical_or();
 if (tokens[ct].type == '?')
 {
  Node *node = new_node(NODE_QUESTION);
  ct++;
  node->condition = left;
  node->left = expr();
  skip(':');
  node->right = conditional();
  return node;
 }
 return left;
}

Node *logical_or()
{
 return binary(logical_and, TOKEN_LOGICAL_OR, -1);
}

Node *logical_and()
{
 return binary(equality, TOKEN_LOGICAL_AND, -1);
}

Node *equality()
{
 return binary(relational, TOKEN_EQUAL, TOKEN_NOT_EQUAL, -1);
}

Node *relational()
{
 return binary(add, '<', '>', TOKEN_LESS_OR_EQUAL, TOKEN_GREATER_OR_EQUAL, -1);
}

Node *add()
{
 return binary(mul, '+', '-', -1);
}

Node *mul()
{
 return binary(cast, '*', '/', '%', -1);
}

Node *cast()
{
 if (tokens[ct].type == '(' && is_typename(&tokens[ct + 1]))
 {
  Node *node = new_node(NODE_CAST);
  ct++;
  node->cast_type = parse_type();
  skip(')');
  node->left = cast();
  return node;
 }
 return unary();
}

Node *unary()
{
 if (tokens[ct].type == '+')
 {
  ct++;
  return cast();
 }
 else if (tokens[ct].type == '-')
 {
  Node *node = new_node(NODE_NEG);
  ct++;
  node->left = cast();
  return node;
 }
 else if (tokens[ct].type == '&')
 {
  Node *node = new_node(NODE_ADDR);
  ct++;
  node->left = cast();
  return node;
 }
 else if (tokens[ct].type == '*')
 {
  Node *node = new_node(NODE_DEREF);
  ct++;
  node->left = cast();
  return node;
 }
 else if (tokens[ct].type == '!')
 {
  Node *node = new_node(NODE_UNARY);
  ct++;
  node->left = cast();
  return node;
 }
 else if (tokens[ct].type == TOKEN_SIZEOF)
 {
  Node *node = new_node(NODE_INT);
  node->tok = new_temp_token(TOKEN_INTEGER);
  ct++;
  Type *t = 0;
  if (tokens[ct].type == '(' && is_typename(&tokens[ct + 1]))
  {
   ct++;
   t = parse_type();
   skip(')');
  }
  else
  {
   Node *left = unary();
   t = add_type(left);
  }
  (__builtin_expect(!(t), 0) ? __assert_rtn(__func__, "./parse.c", 1020, "t") : (void)0);
  if (t->t == ARRAY)
   node->tok->int_val = t->size * t->array_size;
  else
   node->tok->int_val = t->size;
  return node;
 }
 else if (tokens[ct].type == TOKEN_INC || tokens[ct].type == TOKEN_DEC)
 {

  Node *node = new_node(NODE_BINARY);
  node->tok->type = (tokens[ct].type == TOKEN_INC ? '+' : '-');
  ct++;
  node->left = unary();
  node->right = new_node(NODE_INT);
  node->right->tok = new_temp_token(TOKEN_INTEGER);
  node->right->tok->int_val = 1;
  Node *assign = new_node(NODE_ASSIGN);
  assign->tok = new_temp_token('=');
  assign->left = node->left;
  assign->right = node;
  return assign;
 }
 return postfix();
}

Node *postfix()
{
 Node *left = primary();

 while (1)
 {
  if (tokens[ct].type == '[')
  {
   ct++;
   Node *index = expr();
   skip(']');
   Node *node = new_node(NODE_BINARY);
   node->tok = new_temp_token('+');
   node->left = left;
   node->right = index;
   Node *deref = new_node(NODE_DEREF);
   deref->tok = new_temp_token('*');
   deref->left = node;
   left = deref;
  }
  else if (tokens[ct].type == TOKEN_INC || tokens[ct].type == TOKEN_DEC)
  {
   Node *node = new_node(NODE_UNARY);
   node->left = left;
   left = node;
   ct++;
  }
  else if (tokens[ct].type == '.' || tokens[ct].type == TOKEN_ARROW)
  {
   Type *type = add_type(left);
   if (tokens[ct].type == TOKEN_ARROW && !(type->t == PTR && type->ptr_to->t == STRUCT))
    error_token(&tokens[ct], "expected struct pointer");
   if (tokens[ct].type == TOKEN_ARROW)
    type = type->ptr_to;
   if (type->t != STRUCT)
    error_token(&tokens[ct], "expected struct type");

   ct++;

   int i = 0;
   for (; i < type->field_count; i++)
   {
    if (!strcmp(type->field_name[i], tokens[ct].name))
     break;
   }
   if (i == type->field_count)
    error_token(&tokens[ct], "undeclared struct member");


   Type *char_ptr = new_type(PTR);
   char_ptr->ptr_to = type_char;



   Node *addr = left;
   if (tokens[ct - 1].type == '.')
   {
    addr = new_node(NODE_ADDR);
    addr->left = left;
   }
   implicit_cast(&addr, char_ptr);
   Node *add = new_node(NODE_BINARY);
   add->tok = new_temp_token('+');
   add->left = addr;
   add->right = new_node(NODE_INT);
   add->right->tok = new_temp_token(TOKEN_INTEGER);
   add->right->tok->int_val = type->field_offset[i];
   Type *t = new_type(PTR);
   t->ptr_to = type->field_type[i];
   implicit_cast(&add, t);
   Node *node = new_node(NODE_DEREF);
   node->left = add;

   add_type(add);
   add_type(node);
   skip(TOKEN_IDENTIFIER);
   left = node;
  }
  else
   break ;
 }
 return (left);
}

Node *primary()
{
 Node *node = 0;
 if (tokens[ct].type == TOKEN_INTEGER)
 {
  node = new_node(NODE_INT);
  ct++;
 }
 else if (tokens[ct].type == TOKEN_STRING)
 {
  node = new_node(NODE_STRING);
  ct++;
 }
 else if (tokens[ct].type == '(')
 {
  ct++;
  node = expr();
  skip(')');
 }
 else if (tokens[ct].type == TOKEN_IDENTIFIER && tokens[ct + 1].type == '(')
 {
  node = new_node(NODE_FUNC_CALL);
  node->func = find_func(tokens[ct].name);
  if (!node->func)
   error_token(node->tok, "undeclared function \"%s\"", tokens[ct].name);
  ct += 2;
  int count = 0;
  while (tokens[ct].type != ')')
  {
   if (!strcmp(node->tok->name, "ASSERT") && tokens[ct].type == '{')
    node->args[count] = statement();
   else
    node->args[count] = assign();
   count++;
   if (tokens[ct].type == ',')
    ct++;
   else if (tokens[ct].type != ')')
    skip(')');
  }
  ct++;
  node->arg_count = count;
 }
 else if (tokens[ct].type == TOKEN_IDENTIFIER)
 {
  Var *var = find_var(tokens[ct].name);
  if (!var)
   error_token(&tokens[ct], "undeclared variable `%s`\n", tokens[ct].name);
  node = new_node(NODE_VAR);
  node->var = var;
  ct++;
 }
 else
  error_token(&tokens[ct], "expected an expression");
 return node;
}
# 115 "main.c" 2
# 1 "./gen.c" 1
# 13 "./gen.c"
char *get_inst_suffix(int size)
{
 if (size == 1)
  return "b";
 else if (size == 2)
  return "w";
 else if (size == 4)
  return "l";
 else if (size == 8)
  return "q";
 (__builtin_expect(!(0), 0) ? __assert_rtn(__func__, "./gen.c", 23, "0") : (void)0);
}

char *get_size_name(int size)
{
 if (size == 1)
  return "byte";
 else if (size == 2)
  return "short";
 else if (size == 4)
  return "long";
 else if (size == 8)
  return "quad";
 (__builtin_expect(!(0), 0) ? __assert_rtn(__func__, "./gen.c", 36, "0") : (void)0);
}

int log2_int(int x)
{
 int y = 0;
 while (x > 1)
 {
  x /= 2;
  y++;
 }
 return y;
}

char *get_register_by_size(char *reg, int size)
{
 char *arr[10][4] = {
  {"al", "ax", "eax", "rax"},
  {"dh", "dx", "edx", "rdx"},
  {"ch", "cx", "ecx", "rcx"},
  {"dil", "di", "edi", "rdi"},
  {"sil", "si", "esi", "rsi"},
  {"r8b", "r8w", "r8d", "r8"},
  {"r9b", "r9w", "r9d", "r9"},
  {"r10b", "r10w", "r10d", "r10"},
  {"r11b", "r11w", "r11d", "r11"},
  {0}
 };
 for (int i = 0; arr[i][0]; i++)
 {
  if (!strcmp(arr[i][3], reg))
   return arr[i][log2_int(size)];
 }
 (__builtin_expect(!(0), 0) ? __assert_rtn(__func__, "./gen.c", 69, "0") : (void)0);
}

int add_string_lit(char *s)
{
 for (int i = 0; i < strings_literal_count; i++)
 {
  if (!strcmp(s, strings_literal[i]))
   return i;
 }
 strings_literal[strings_literal_count] = s;
 return strings_literal_count++;
}

void out(char *fmt, ...)
{
 va_list ap;
 __builtin_va_start(ap, fmt);
 fprintf(f, "\t");
 vfprintf(f, fmt, ap);
 fprintf(f, "\n");
 __builtin_va_end(ap);
}

int curr_label = 0;


int loop_counter = 0;
int curr_loop_label;
int curr_loop_is_for;


void gen(Node *node)
{
 if (!node || node->type == NODE_NONE)
  return;
 if (node->type == NODE_PROGRAM)
 {
  Node *curr = node->next_stmt;
  while (curr)
  {
   gen(curr);
   curr = curr->next_stmt;
  }
 }
 else if (node->type == NODE_FUNC_DEF)
 {
  if (!node->body)
   return ;
  if (!strcmp(node->tok->name, "main"))
   fprintf(f, ".globl\t_main\n");
  fprintf(f, "_%s:\n", node->tok->name);
  out("pushq %%rbp");
  out("movq %%rsp, %%rbp");
  node->stack_size = align(node->stack_size, 16);


  out("subq $%d, %%rsp", node->stack_size);

  char *reg[] = {"rdi", "rsi", "rdx", "rcx", "r8", "r9"};
  for (int i = 0; i < node->param_count && i < 6; i++)
  {
   Var *v = node->params[i]->var;
   out("mov%s %%%s, -%d(%%rbp)", get_inst_suffix(v->type->size),
     get_register_by_size(reg[i], v->type->size),
     v->offset);

  }
  if (node->param_count > 6)
  {

   int offset = node->params[5]->var->offset + 8;
   int offset2 = 16;
   for (int i = 6; i < node->param_count; i++)
   {





    out("movq %d(%%rbp), %%rax", offset2);
    out("movq %%rax, -%d(%%rbp)", offset);
    offset += 8;
    offset2 += 8;
   }
  }
  gen(node->body);
  out("movq $0, %%rax");
  out("movq %%rbp, %%rsp");
  out("popq %%rbp");
  out("ret\n");
 }
 else if (node->type == NODE_BLOCK)
 {
  Node *curr = node->first_stmt;
  fprintf(f, "//begin block\n");
  while (curr)
  {
   gen(curr);
   curr = curr->next_in_block;
  }
  fprintf(f, "//end block\n");
 }
 else if (node->type == NODE_VAR_DECL)
 {
  Node *curr = node->next_in_decl;
  while (curr)
  {
   if (curr->var->global)
   {

   }
   else if (!curr->var->global && curr->left)
    gen(curr->left);
   curr = curr->next_in_decl;
  }
 }
 else if (node->type == NODE_RETURN)
 {
  gen(node->left);
  out("movq %%rbp, %%rsp");
  out("popq %%rbp");
  out("ret");
 }
 else if (node->type == NODE_IF)
 {
  int label = curr_label++;
  fprintf(f, "//if begin\n");
  gen(node->condition);
  out("cmpq $0, %%rax");
  out("je ELSE%d", label);
  gen(node->body);
  out("jmp END_IF%d", label);
  fprintf(f, "ELSE%d:\n", label);
  if (node->else_)
   gen(node->else_);
  fprintf(f, "END_IF%d:\n", label);
 }
 else if (node->type == NODE_WHILE)
 {
  int label = curr_label++;
  fprintf(f, "WHILE%d:\n", label);
  gen(node->condition);
  out("cmpq $0, %%rax");
  out("je WHILE_END%d", label);
  loop_counter++;
  int s1 = curr_loop_label;
  int s2 = curr_loop_is_for;
  curr_loop_label = label;
  curr_loop_is_for = 0;
  gen(node->body);
  curr_loop_label = s1;
  curr_loop_is_for = s2;
  loop_counter--;
  out("jmp WHILE%d", label);
  fprintf(f, "WHILE_END%d:\n", label);
 }
 else if (node->type == NODE_FOR)
 {
  int label = curr_label++;
  fprintf(f, "//for init\n");
  gen(node->init);
  fprintf(f, "FOR%d:\n", label);
  if (node->condition)
  {
   gen(node->condition);
   out("cmpq $0, %%rax");
   out("je FOR_END%d", label);
  }
  loop_counter++;
  int s1 = curr_loop_label;
  int s2 = curr_loop_is_for;
  curr_loop_label = label;
  curr_loop_is_for = 1;
  gen(node->body);
  loop_counter--;
  curr_loop_label = s1;
  curr_loop_is_for = s2;
  fprintf(f, "FOR_INC%d:\n", label);
  gen(node->inc);
  out("jmp FOR%d", label);
  fprintf(f, "FOR_END%d:\n", label);
 }
 else if (node->type == NODE_INT)
 {
  if (node->t->t == LONG)
   out("movabsq $%lld, %%rax", node->tok->int_val);
  else
   out("movq $%lld, %%rax", node->tok->int_val);
 }
 else if (node->type == NODE_STRING)
 {
  int id = add_string_lit(node->tok->name);
  out("leaq L_.str.%d(%%rip), %%rax", id);
 }
 else if (node->type == NODE_VAR)
 {
  if (node->t->t == ARRAY || node->t->t == STRUCT)
  {
   if (node->var->global)
   {
    out("movq _%s@GOTPCREL(%%rip), %%rax", node->var->name);
   }
   else
   {
    out("movq %%rbp, %%rax");
    out("subq $%d, %%rax", node->var->offset);
   }
  }
  else
  {
   if (node->var->global)
   {
    if (node->t->size < 8)
    {
     out("movs%sq _%s(%%rip), %%rax",
      get_inst_suffix(node->t->size),
      node->var->name);

    }
    else
     out("movq _%s(%%rip), %%rax", node->var->name);




   }
   else
   {
    if (node->t->is_unsigned)
    {
     if (node->t->size < 4)
      out("movz%sq -%d(%%rbp), %%rax",
        get_inst_suffix(node->t->size),
        node->var->offset);
     else
      out("mov%s -%d(%%rbp), %%%s",
        get_inst_suffix(node->t->size),
        node->var->offset,
        get_register_by_size("rax", node->t->size));
    }
    else
    {
     if (node->t->size < 8)
     {
      out("movs%sq -%d(%%rbp), %%rax",
       get_inst_suffix(node->t->size),
      node->var->offset);
     }
     else
      out("movq -%d(%%rbp), %%rax", node->var->offset);
    }
   }
  }
 }
 else if (node->type == NODE_FUNC_CALL)
 {
  if (!strcmp(node->tok->name, "ASSERT"))
  {
   int label = curr_label++;
   char *s2 = node->tok->str;
   while (*s2 != '\n')
    s2++;
   fprintf(f, "//%.*s", (int)(s2 - node->tok->str + 1), node->tok->str);
   gen(node->args[0]);
   out("movq %%rax, %%r12");
   gen(node->args[1]);
   out("cmpq %%r12, %%rax");
   out("je ASSERT_OK%d", label);
   out("movq $%d, %%rdi", node->tok->line);
   out("movq %%r12, %%rsi", node->tok->line);
   out("movq %%rax, %%rdx", node->tok->line);
   out("callq _error");
   fprintf(f, "ASSERT_OK%d:\n", label);
  }
  else
  {
   Func *fn = find_func(node->tok->name);
   if (!fn)
    error_token(node->tok, "underclared function");

   char *reg[] = {"rdi", "rsi", "rdx", "rcx", "r8", "r9"};
   for (int i = 0; i < node->arg_count && i < 6; i++)
   {
    gen(node->args[i]);
    out("pushq %%rax");
   }

   (__builtin_expect(!(node->arg_count <= 6), 0) ? __assert_rtn(__func__, "./gen.c", 357, "node->arg_count <= 6") : (void)0);
   for (int i = 0; i < node->arg_count && i < 6; i++)
   {
    out("popq %%%s", reg[node->arg_count - i - 1]);
   }
   for (int i = node->arg_count - 1; i >= 6; i--)
   {
    gen(node->args[i]);
    out("pushq %%rax");
   }

   out("callq _%s", node->tok->name);
   if (node->arg_count > 6)
    out("addq $%d, %%rsp", (node->arg_count - 6) * 8);
  }
 }
 else if (node->type == NODE_ADDR)
 {
  if (node->left->type == NODE_DEREF)
  {
   gen(node->left->left);
  }
  else if (node->left->type == NODE_VAR)
  {

   if (node->left->var->global)
   {
    out("movq _%s@GOTPCREL(%%rip), %%rax", node->left->var->name);
   }
   else
   {
    out("movq %%rbp, %%rax");
    out("subq $%d, %%rax", node->left->var->offset);
   }
  }
  else
   (__builtin_expect(!(0), 0) ? __assert_rtn(__func__, "./gen.c", 393, "0") : (void)0);
 }
 else if (node->type == NODE_DEREF)
 {
  gen(node->left);
  if (!node->left->t->ptr_to)
   error_token(node->tok, "dereferencing a non-pointer lvalue");



  if( node->t->t == STRUCT)
   ;
  else if (node->t->size < 8)
   out("movs%sq (%%rax), %%rax", get_inst_suffix(node->t->size));
  else
   out("movq (%%rax), %%rax");



 }
 else if (node->type == NODE_NEG)
 {
  gen(node->left);
  if (node->left->t->ptr_to)
   error_token(node->tok, "negating a pointer");
  out("xorq %%r10, %%r10");
  out("subq %%rax, %%r10");
  out("movq %%r10, %%rax");
 }
 else if (node->type == NODE_CAST)
 {
  gen(node->left);
  Type *t1 = node->left->t;
  Type *t2 = node->t;


  if (!t1->is_unsigned && !t2->is_unsigned)
  {
   if (t2->size < t1->size)
   {
    out("movs%sq %%%s, %%r10",
      get_inst_suffix(t2->size),
      get_register_by_size("rax", t2->size));
    out("movq %%r10, %%rax");
   }
   else
    ;
  }
  else if (t2->is_unsigned)
  {
   out("xorq %%r10, %%r10");
   out("mov%s %%%s, %%%s",
     get_inst_suffix(t2->size),
     get_register_by_size("rax", t2->size),
     get_register_by_size("r10", t2->size));
   out("movq %%r10, %%rax");
  }
  else
  {
   if (t2->size < 8)
   {
    out("xorq %%r10, %%r10");
    out("mov%s %%%s, %%%s",
      get_inst_suffix(t2->size),
      get_register_by_size("rax", t2->size),
      get_register_by_size("r10", t2->size));
    out("movs%sq %%%s, %%rax",
      get_inst_suffix(t2->size),
      get_register_by_size("r10", t2->size));
   }



  }
 }
 else if (node->type == NODE_BINARY)
 {
  gen(node->left);
  if (type_match(node->tok->type, TOKEN_LOGICAL_AND, TOKEN_LOGICAL_OR, -1))
  {
   int label = curr_label++;
   int is_and = node->tok->type == TOKEN_LOGICAL_AND;
   out("cmpq $0, %%rax");
   out("movq $%d, %%rax", !is_and);
   out("j%se AND_OR%d", (is_and ? "" : "n"), label);
   gen(node->right);
   out("cmpq $0, %%rax");
   out("setne %%al");
   out("movzbq %%al, %%rax");
   fprintf(f, "AND_OR%d:\n", label);
  }
  else
  {
   out("pushq %%rax");
   gen(node->right);
   out("movq %%rax, %%r10");
   out("popq %%rax");


   (__builtin_expect(!(node->left->t), 0) ? __assert_rtn(__func__, "./gen.c", 492, "node->left->t") : (void)0);
   (__builtin_expect(!(node->right->t), 0) ? __assert_rtn(__func__, "./gen.c", 493, "node->right->t") : (void)0);

   if (node->tok->type == '+' || node->tok->type == '-')
   {
    if (node->left->t->ptr_to && !node->right->t->ptr_to)
     out("imulq $%d, %%r10", node->left->t->ptr_to->size);
    else if (node->right->t->ptr_to && !node->left->t->ptr_to && node->tok->type == '+')
     out("imulq $%d, %%rax", node->right->t->ptr_to->size);
   }

   if (node->tok->type == '+')
    out("addq %%r10, %%rax");
   else if (node->tok->type == '-')
    out("subq %%r10, %%rax");
   else if (node->tok->type == '*')
    out("imulq %%r10, %%rax");
   else if (node->tok->type == '/' || node->tok->type == '%')
   {


    if (!node->t->is_unsigned)
    {
     out("cqto");
     out("idivq %%r10");
    }
    else
    {
     out("xorq %%rdx, %%rdx");
     out("divq %%r10");
    }
    if (node->tok->type == '%')
     out("movq %%rdx, %%rax");
   }
   else if (type_match(node->tok->type, TOKEN_EQUAL, TOKEN_NOT_EQUAL,
     TOKEN_LESS_OR_EQUAL, TOKEN_GREATER_OR_EQUAL, '<', '>', -1))
   {
    char *s = "";
    if (node->tok->type == TOKEN_EQUAL)
     s = "e";
    else if (node->tok->type == TOKEN_NOT_EQUAL)
     s = "ne";
    else if (node->tok->type == '<')
     s = "l";
    else if(node->tok->type == '>')
     s = "g";
    else if(node->tok->type == TOKEN_LESS_OR_EQUAL)
     s = "le";
    else if(node->tok->type == TOKEN_GREATER_OR_EQUAL)
     s = "ge";
    else
     (__builtin_expect(!(0), 0) ? __assert_rtn(__func__, "./gen.c", 543, "0") : (void)0);
    out("cmpq %%r10, %%rax");
    out("set%s %%al", s);
    out("andb $1, %%al");
    out("movzbq %%al, %%rax");
   }
   if (node->left->t->ptr_to && node->right->t->ptr_to && node->tok->type == '-')
   {
    out("movq $%d, %%r10", node->left->t->ptr_to->size);
    out("xorq %%rdx, %%rdx");
    out("divq %%r10");
   }
  }
 }
 else if (node->type == NODE_ASSIGN)
 {
  if (node->left->type == NODE_DEREF)
  {
   gen(node->right);
   if (node->t->t == STRUCT)
   {
    out("movq %%rax, %%rsi");
    gen(node->left);
    out("movq %%rax, %%rdi");
    out("movq $%d, %%rdx", node->t->size);
    out("callq _memcpy");
   }
   else
   {
    out("pushq %%rax");
    gen(node->left->left);
    if (!node->left->left->t->ptr_to)
    error_token(node->tok, "dereferencing a non-pointer lvalue");


    out("popq %%r10");
    out("mov%s %%%s, (%%rax)", get_inst_suffix(node->t->size),
      get_register_by_size("r10", node->t->size));

   }
  }
  else if (node->left->type == NODE_VAR)
  {
   gen(node->right);
   node->left->t = node->left->var->type;
   (__builtin_expect(!(node->left->t), 0) ? __assert_rtn(__func__, "./gen.c", 588, "node->left->t") : (void)0);


   if (node->t->t == ARRAY)
    error_token(node->tok, "array is constant");
   if (node->left->var->global)
   {
    out("mov%s %%%s, _%s(%%rip)", get_inst_suffix(node->t->size),
      get_register_by_size("rax", node->t->size),
      node->left->var->name);
   }
   else
   {
    if (node->t->t == STRUCT)
    {
     out("movq %%rbp, %%rdi");
     out("subq $%d, %%rdi", node->left->var->offset);
     out("movq %%rax, %%rsi");
     out("movq $%d, %%rdx", node->left->var->type->size);
     out("callq _memcpy");
    }
    else
    {
     out("mov%s %%%s, -%d(%%rbp)", get_inst_suffix(node->t->size),
      get_register_by_size("rax", node->t->size),
      node->left->var->offset);
    }
   }
  }
  else
   (__builtin_expect(!(0), 0) ? __assert_rtn(__func__, "./gen.c", 618, "0") : (void)0);
 }
 else if (node->type == NODE_CONTINUE)
 {
  if (!loop_counter)
   error_token(node->tok, "'continue' statement not in loop statement");
  if (curr_loop_is_for)
   out("jmp FOR_INC%d", curr_loop_label);
  else
   out("jmp WHILE%d", curr_loop_label);
 }
 else if (node->type == NODE_BREAK)
 {
  if (!loop_counter)
   error_token(node->tok, "'break' statement not in loop statement");
  if (curr_loop_is_for)
   out("jmp FOR_END%d", curr_loop_label);
  else
   out("jmp WHILE_END%d", curr_loop_label);
 }
 else if (node->type == NODE_UNARY)
 {
  gen(node->left);
  if (node->tok->type == '!')
  {
   out("cmpq $0, %%rax");
   out("setne %%al");
   out("xorb $-1, %%al");
   out("andb $1, %%al");
   out("movzbq %%al, %%rax");
  }
  else if (node->tok->type == TOKEN_INC || node->tok->type == TOKEN_DEC)
  {
   out("pushq %%rax");
   Node *one = new_node(NODE_INT);
   one->tok = new_temp_token(TOKEN_INTEGER);
   one->tok->int_val = (node->tok->type == TOKEN_INC ? 1 : -1);
   Node *assign = new_node(NODE_ASSIGN);
   assign->tok = new_temp_token('=');
   assign->left = node->left;
   assign->right = new_node(NODE_BINARY);
   assign->right->tok = new_temp_token('+');
   assign->right->left = node->left;
   assign->right->right = one;
   add_type(assign);
   gen(assign);
   out("popq %%rax");
  }
  else
   (__builtin_expect(!(0), 0) ? __assert_rtn(__func__, "./gen.c", 667, "0") : (void)0);
 }
 else if (node->type == NODE_QUESTION)
 {
  int label = curr_label++;

  gen(node->condition);
  out("cmpq $0, %%rax");
  out("je QUES%d", label);
  gen(node->left);
  out("jmp QUES_END%d", label);
  fprintf(f, "QUES%d:\n", label);
  gen(node->right);
  fprintf(f, "QUES_END%d:\n", label);
 }
 else
  (__builtin_expect(!(0), 0) ? __assert_rtn(__func__, "./gen.c", 683, "0") : (void)0);
 if (node->next_in_comma)
  gen(node->next_in_comma);
}
# 116 "main.c" 2

char *read_entire_file(char *name)
{
 char *buffer = 0;
 long length;
 FILE *file = fopen(name, "r");
 if (file)
 {
  fseek(file, 0, 2);
   length = ftell(file);
   fseek(file, 0, 0);
   buffer = malloc(length + 1);
   if (buffer)
     fread(buffer, 1, length, file);
  buffer[length] = 0;
   fclose(file);
 }
 return buffer;
}

int main(int argc, char **argv)
{
 if (argc < 2)
  filename = "in.c";
 else
  filename = argv[1];
 program_str = read_entire_file(filename);

 Node *node = parse(program_str);

 char *out_name = strdup(filename);
 out_name[strlen(out_name) - 1] = 's';
 f = fopen(out_name, "w");
 (__builtin_expect(!(f), 0) ? __assert_rtn(__func__, "main.c", 149, "f") : (void)0);






 gen(node);
 out(".section	__DATA,__data");
 for (int i = 0; i < curr_scope->var_count; i++)
 {
  Node *decl = curr_scope->vars[i]->decl;
  if (decl->left && decl->left->right->type != NODE_INT)
   error_token(decl->left->tok, "todo: evaluate constant expressions\n");
  if (decl->var->type->t == ARRAY)
  {
   out(".comm _%s,%d,%d", decl->var->name, decl->var->type->array_size * decl->var->type->size,
       (decl->var->type->size));
  }
  else
  {
   out(".globl _%s", decl->var->name);

   int align = log2_int(decl->var->type->size);
   if (align)
    out(".p2align %d", align);

   fprintf(f, "_%s:\n", curr_scope->vars[i]->name);
   out(".%s %d\n", get_size_name(curr_scope->vars[i]->type->size), (!decl->left ? 0 : decl->left->right->tok->int_val));
  }
 }
 for (int i = 0; i < strings_literal_count; i++)
 {
  fprintf(f, "L_.str.%d:\n", i);
  out(".asciz \"%s\"", strings_literal[i]);
 }
}
