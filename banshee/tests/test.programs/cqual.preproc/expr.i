typedef unsigned int size_t;
typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;
typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;
__extension__ typedef signed long long int __int64_t;
__extension__ typedef unsigned long long int __uint64_t;
__extension__ typedef long long int __quad_t;
__extension__ typedef unsigned long long int __u_quad_t;
typedef unsigned long long int __dev_t;
typedef unsigned int __uid_t;
typedef unsigned int __gid_t;
typedef unsigned long int __ino_t;
typedef unsigned long long int __ino64_t;
typedef unsigned int __mode_t;
typedef unsigned int __nlink_t;
typedef long int __off_t;
typedef long long int __off64_t;
typedef int __pid_t;
typedef struct { int __val[2]; } __fsid_t;
typedef long int __clock_t;
typedef unsigned long int __rlim_t;
typedef unsigned long long int __rlim64_t;
typedef unsigned int __id_t;
typedef long int __time_t;
typedef unsigned int __useconds_t;
typedef long int __suseconds_t;
typedef int __daddr_t;
typedef long int __swblk_t;
typedef int __key_t;
typedef int __clockid_t;
typedef int __timer_t;
typedef long int __blksize_t;
typedef long int __blkcnt_t;
typedef long long int __blkcnt64_t;
typedef unsigned long int __fsblkcnt_t;
typedef unsigned long long int __fsblkcnt64_t;
typedef unsigned long int __fsfilcnt_t;
typedef unsigned long long int __fsfilcnt64_t;
typedef int __ssize_t;
typedef __off64_t __loff_t;
typedef __quad_t *__qaddr_t;
typedef char *__caddr_t;
typedef int __intptr_t;
typedef unsigned int __socklen_t;
typedef struct _IO_FILE FILE;
typedef struct _IO_FILE __FILE;
typedef long int wchar_t;
typedef unsigned int wint_t;
typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    char __wchb[4];
  } __value;
} __mbstate_t;
typedef struct
{
  __off_t __pos;
  __mbstate_t __state;
} _G_fpos_t;
typedef struct
{
  __off64_t __pos;
  __mbstate_t __state;
} _G_fpos64_t;
enum
{
  __GCONV_OK = 0,
  __GCONV_NOCONV,
  __GCONV_NODB,
  __GCONV_NOMEM,
  __GCONV_EMPTY_INPUT,
  __GCONV_FULL_OUTPUT,
  __GCONV_ILLEGAL_INPUT,
  __GCONV_INCOMPLETE_INPUT,
  __GCONV_ILLEGAL_DESCRIPTOR,
  __GCONV_INTERNAL_ERROR
};
enum
{
  __GCONV_IS_LAST = 0x0001,
  __GCONV_IGNORE_ERRORS = 0x0002
};
struct __gconv_step;
struct __gconv_step_data;
struct __gconv_loaded_object;
struct __gconv_trans_data;
typedef int (*__gconv_fct) (struct __gconv_step *, struct __gconv_step_data *,
                            __const unsigned char **, __const unsigned char *,
                            unsigned char **, size_t *, int, int);
typedef wint_t (*__gconv_btowc_fct) (struct __gconv_step *, unsigned char);
typedef int (*__gconv_init_fct) (struct __gconv_step *);
typedef void (*__gconv_end_fct) (struct __gconv_step *);
typedef int (*__gconv_trans_fct) (struct __gconv_step *,
                                  struct __gconv_step_data *, void *,
                                  __const unsigned char *,
                                  __const unsigned char **,
                                  __const unsigned char *, unsigned char **,
                                  size_t *);
typedef int (*__gconv_trans_context_fct) (void *, __const unsigned char *,
                                          __const unsigned char *,
                                          unsigned char *, unsigned char *);
typedef int (*__gconv_trans_query_fct) (__const char *, __const char ***,
                                        size_t *);
typedef int (*__gconv_trans_init_fct) (void **, const char *);
typedef void (*__gconv_trans_end_fct) (void *);
struct __gconv_trans_data
{
  __gconv_trans_fct __trans_fct;
  __gconv_trans_context_fct __trans_context_fct;
  __gconv_trans_end_fct __trans_end_fct;
  void *__data;
  struct __gconv_trans_data *__next;
};
struct __gconv_step
{
  struct __gconv_loaded_object *__shlib_handle;
  __const char *__modname;
  int __counter;
  char *__from_name;
  char *__to_name;
  __gconv_fct __fct;
  __gconv_btowc_fct __btowc_fct;
  __gconv_init_fct __init_fct;
  __gconv_end_fct __end_fct;
  int __min_needed_from;
  int __max_needed_from;
  int __min_needed_to;
  int __max_needed_to;
  int __stateful;
  void *__data;
};
struct __gconv_step_data
{
  unsigned char *__outbuf;
  unsigned char *__outbufend;
  int __flags;
  int __invocation_counter;
  int __internal_use;
  __mbstate_t *__statep;
  __mbstate_t __state;
  struct __gconv_trans_data *__trans;
};
typedef struct __gconv_info
{
  size_t __nsteps;
  struct __gconv_step *__steps;
  __extension__ struct __gconv_step_data __data [0];
} *__gconv_t;
typedef union
{
  struct __gconv_info __cd;
  struct
  {
    struct __gconv_info __cd;
    struct __gconv_step_data __data;
  } __combined;
} _G_iconv_t;
typedef int _G_int16_t __attribute__ ((__mode__ (__HI__)));
typedef int _G_int32_t __attribute__ ((__mode__ (__SI__)));
typedef unsigned int _G_uint16_t __attribute__ ((__mode__ (__HI__)));
typedef unsigned int _G_uint32_t __attribute__ ((__mode__ (__SI__)));
typedef __builtin_va_list __gnuc_va_list;
struct _IO_jump_t; struct _IO_FILE;
typedef void _IO_lock_t;
struct _IO_marker {
  struct _IO_marker *_next;
  struct _IO_FILE *_sbuf;
  int _pos;
};
enum __codecvt_result
{
  __codecvt_ok,
  __codecvt_partial,
  __codecvt_error,
  __codecvt_noconv
};
struct _IO_FILE {
  int _flags;
  char* _IO_read_ptr;
  char* _IO_read_end;
  char* _IO_read_base;
  char* _IO_write_base;
  char* _IO_write_ptr;
  char* _IO_write_end;
  char* _IO_buf_base;
  char* _IO_buf_end;
  char *_IO_save_base;
  char *_IO_backup_base;
  char *_IO_save_end;
  struct _IO_marker *_markers;
  struct _IO_FILE *_chain;
  int _fileno;
  int _flags2;
  __off_t _old_offset;
  unsigned short _cur_column;
  signed char _vtable_offset;
  char _shortbuf[1];
  _IO_lock_t *_lock;
  __off64_t _offset;
  void *__pad1;
  void *__pad2;
  int _mode;
  char _unused2[15 * sizeof (int) - 2 * sizeof (void *)];
};
typedef struct _IO_FILE _IO_FILE;
struct _IO_FILE_plus;
extern struct _IO_FILE_plus _IO_2_1_stdin_;
extern struct _IO_FILE_plus _IO_2_1_stdout_;
extern struct _IO_FILE_plus _IO_2_1_stderr_;
typedef __ssize_t __io_read_fn (void *__cookie, char *__buf, size_t __nbytes);
typedef __ssize_t __io_write_fn (void *__cookie, __const char *__buf,
                                 size_t __n);
typedef int __io_seek_fn (void *__cookie, __off64_t *__pos, int __w);
typedef int __io_close_fn (void *__cookie);
extern int __underflow (_IO_FILE *) ;
extern int __uflow (_IO_FILE *) ;
extern int __overflow (_IO_FILE *, int) ;
extern wint_t __wunderflow (_IO_FILE *) ;
extern wint_t __wuflow (_IO_FILE *) ;
extern wint_t __woverflow (_IO_FILE *, wint_t) ;
extern int _IO_getc (_IO_FILE *__fp) ;
extern int _IO_putc (int __c, _IO_FILE *__fp) ;
extern int _IO_feof (_IO_FILE *__fp) ;
extern int _IO_ferror (_IO_FILE *__fp) ;
extern int _IO_peekc_locked (_IO_FILE *__fp) ;
extern void _IO_flockfile (_IO_FILE *) ;
extern void _IO_funlockfile (_IO_FILE *) ;
extern int _IO_ftrylockfile (_IO_FILE *) ;
extern int _IO_vfscanf (_IO_FILE * __restrict, const char * __restrict,
                        __gnuc_va_list, int *__restrict) ;
extern int _IO_vfprintf (_IO_FILE *__restrict, const char *__restrict,
                         __gnuc_va_list) ;
extern __ssize_t _IO_padn (_IO_FILE *, int, __ssize_t) ;
extern size_t _IO_sgetn (_IO_FILE *, void *, size_t) ;
extern __off64_t _IO_seekoff (_IO_FILE *, __off64_t, int, int) ;
extern __off64_t _IO_seekpos (_IO_FILE *, __off64_t, int) ;
extern void _IO_free_backup_area (_IO_FILE *) ;
typedef _G_fpos_t fpos_t;
extern struct _IO_FILE *stdin;
extern struct _IO_FILE *stdout;
extern struct _IO_FILE *stderr;
extern int remove (__const char *__filename) ;
extern int rename (__const char *__old, __const char *__new) ;
extern FILE *tmpfile (void) ;
extern char *tmpnam (char *__s) ;
extern char *tmpnam_r (char *__s) ;
extern char *tempnam (__const char *__dir, __const char *__pfx)
             __attribute__ ((__malloc__));
extern int fclose (FILE *__stream) ;
extern int fflush (FILE *__stream) ;
extern int fflush_unlocked (FILE *__stream) ;
extern FILE *fopen (__const char *__restrict __filename,
                    __const char *__restrict __modes) ;
extern FILE *freopen (__const char *__restrict __filename,
                      __const char *__restrict __modes,
                      FILE *__restrict __stream) ;
extern FILE *fdopen (int __fd, __const char *__modes) ;
extern void setbuf (FILE *__restrict __stream, char *__restrict __buf) ;
extern int setvbuf (FILE *__restrict __stream, char *__restrict __buf,
                    int __modes, size_t __n) ;
extern void setbuffer (FILE *__restrict __stream, char *__restrict __buf,
                       size_t __size) ;
extern void setlinebuf (FILE *__stream) ;
extern int fprintf (FILE *__restrict __stream,
                    __const char *__restrict __format, ...) ;
extern int printf (__const char *__restrict __format, ...) ;
extern int sprintf (char *__restrict __s,
                    __const char *__restrict __format, ...) ;
extern int vfprintf (FILE *__restrict __s, __const char *__restrict __format,
                     __gnuc_va_list __arg) ;
extern int vprintf (__const char *__restrict __format, __gnuc_va_list __arg)
            ;
extern int vsprintf (char *__restrict __s, __const char *__restrict __format,
                     __gnuc_va_list __arg) ;
extern int snprintf (char *__restrict __s, size_t __maxlen,
                     __const char *__restrict __format, ...)
             __attribute__ ((__format__ (__printf__, 3, 4)));
extern int vsnprintf (char *__restrict __s, size_t __maxlen,
                      __const char *__restrict __format, __gnuc_va_list __arg)
             __attribute__ ((__format__ (__printf__, 3, 0)));
extern int fscanf (FILE *__restrict __stream,
                   __const char *__restrict __format, ...) ;
extern int scanf (__const char *__restrict __format, ...) ;
extern int sscanf (__const char *__restrict __s,
                   __const char *__restrict __format, ...) ;
extern int fgetc (FILE *__stream) ;
extern int getc (FILE *__stream) ;
extern int getchar (void) ;
extern int getc_unlocked (FILE *__stream) ;
extern int getchar_unlocked (void) ;
extern int fgetc_unlocked (FILE *__stream) ;
extern int fputc (int __c, FILE *__stream) ;
extern int putc (int __c, FILE *__stream) ;
extern int putchar (int __c) ;
extern int fputc_unlocked (int __c, FILE *__stream) ;
extern int putc_unlocked (int __c, FILE *__stream) ;
extern int putchar_unlocked (int __c) ;
extern int getw (FILE *__stream) ;
extern int putw (int __w, FILE *__stream) ;
extern char *fgets (char *__restrict __s, int __n, FILE *__restrict __stream)
            ;
extern char *gets (char *__s) ;
extern int fputs (__const char *__restrict __s, FILE *__restrict __stream)
            ;
extern int puts (__const char *__s) ;
extern int ungetc (int __c, FILE *__stream) ;
extern size_t fread (void *__restrict __ptr, size_t __size,
                     size_t __n, FILE *__restrict __stream) ;
extern size_t fwrite (__const void *__restrict __ptr, size_t __size,
                      size_t __n, FILE *__restrict __s) ;
extern size_t fread_unlocked (void *__restrict __ptr, size_t __size,
                              size_t __n, FILE *__restrict __stream) ;
extern size_t fwrite_unlocked (__const void *__restrict __ptr, size_t __size,
                               size_t __n, FILE *__restrict __stream) ;
extern int fseek (FILE *__stream, long int __off, int __whence) ;
extern long int ftell (FILE *__stream) ;
extern void rewind (FILE *__stream) ;
extern int fgetpos (FILE *__restrict __stream, fpos_t *__restrict __pos)
            ;
extern int fsetpos (FILE *__stream, __const fpos_t *__pos) ;
extern void clearerr (FILE *__stream) ;
extern int feof (FILE *__stream) ;
extern int ferror (FILE *__stream) ;
extern void clearerr_unlocked (FILE *__stream) ;
extern int feof_unlocked (FILE *__stream) ;
extern int ferror_unlocked (FILE *__stream) ;
extern void perror (__const char *__s) ;
extern int sys_nerr;
extern __const char *__const sys_errlist[];
extern int fileno (FILE *__stream) ;
extern int fileno_unlocked (FILE *__stream) ;
extern FILE *popen (__const char *__command, __const char *__modes) ;
extern int pclose (FILE *__stream) ;
extern char *ctermid (char *__s) ;
extern void flockfile (FILE *__stream) ;
extern int ftrylockfile (FILE *__stream) ;
extern void funlockfile (FILE *__stream) ;
extern __inline int
vprintf (__const char *__restrict __fmt, __gnuc_va_list __arg)
{
  return vfprintf (stdout, __fmt, __arg);
}
extern __inline int
getchar (void)
{
  return _IO_getc (stdin);
}
extern __inline int
getc_unlocked (FILE *__fp)
{
  return ((__fp)->_IO_read_ptr >= (__fp)->_IO_read_end ? __uflow (__fp) : *(unsigned char *) (__fp)->_IO_read_ptr++);
}
extern __inline int
getchar_unlocked (void)
{
  return ((stdin)->_IO_read_ptr >= (stdin)->_IO_read_end ? __uflow (stdin) : *(unsigned char *) (stdin)->_IO_read_ptr++);
}
extern __inline int
putchar (int __c)
{
  return _IO_putc (__c, stdout);
}
extern __inline int
fputc_unlocked (int __c, FILE *__stream)
{
  return (((__stream)->_IO_write_ptr >= (__stream)->_IO_write_end) ? __overflow (__stream, (unsigned char) (__c)) : (unsigned char) (*(__stream)->_IO_write_ptr++ = (__c)));
}
extern __inline int
putc_unlocked (int __c, FILE *__stream)
{
  return (((__stream)->_IO_write_ptr >= (__stream)->_IO_write_end) ? __overflow (__stream, (unsigned char) (__c)) : (unsigned char) (*(__stream)->_IO_write_ptr++ = (__c)));
}
extern __inline int
putchar_unlocked (int __c)
{
  return (((stdout)->_IO_write_ptr >= (stdout)->_IO_write_end) ? __overflow (stdout, (unsigned char) (__c)) : (unsigned char) (*(stdout)->_IO_write_ptr++ = (__c)));
}
extern __inline int
feof_unlocked (FILE *__stream)
{
  return (((__stream)->_flags & 0x10) != 0);
}
extern __inline int
ferror_unlocked (FILE *__stream)
{
  return (((__stream)->_flags & 0x20) != 0);
}
typedef struct
  {
    int quot;
    int rem;
  } div_t;
typedef struct
  {
    long int quot;
    long int rem;
  } ldiv_t;
extern size_t __ctype_get_mb_cur_max (void) ;
extern double atof (__const char *__nptr) __attribute__ ((__pure__));
extern int atoi (__const char *__nptr) __attribute__ ((__pure__));
extern long int atol (__const char *__nptr) __attribute__ ((__pure__));
__extension__ extern long long int atoll (__const char *__nptr)
             __attribute__ ((__pure__));
extern double strtod (__const char *__restrict __nptr,
                      char **__restrict __endptr) ;
extern long int strtol (__const char *__restrict __nptr,
                        char **__restrict __endptr, int __base) ;
extern unsigned long int strtoul (__const char *__restrict __nptr,
                                  char **__restrict __endptr, int __base)
            ;
__extension__
extern long long int strtoq (__const char *__restrict __nptr,
                             char **__restrict __endptr, int __base) ;
__extension__
extern unsigned long long int strtouq (__const char *__restrict __nptr,
                                       char **__restrict __endptr, int __base)
            ;
__extension__
extern long long int strtoll (__const char *__restrict __nptr,
                              char **__restrict __endptr, int __base) ;
__extension__
extern unsigned long long int strtoull (__const char *__restrict __nptr,
                                        char **__restrict __endptr, int __base)
            ;
extern double __strtod_internal (__const char *__restrict __nptr,
                                 char **__restrict __endptr, int __group)
            ;
extern float __strtof_internal (__const char *__restrict __nptr,
                                char **__restrict __endptr, int __group)
            ;
extern long double __strtold_internal (__const char *__restrict __nptr,
                                       char **__restrict __endptr,
                                       int __group) ;
extern long int __strtol_internal (__const char *__restrict __nptr,
                                   char **__restrict __endptr,
                                   int __base, int __group) ;
extern unsigned long int __strtoul_internal (__const char *__restrict __nptr,
                                             char **__restrict __endptr,
                                             int __base, int __group) ;
__extension__
extern long long int __strtoll_internal (__const char *__restrict __nptr,
                                         char **__restrict __endptr,
                                         int __base, int __group) ;
__extension__
extern unsigned long long int __strtoull_internal (__const char *
                                                   __restrict __nptr,
                                                   char **__restrict __endptr,
                                                   int __base, int __group)
            ;
extern __inline double
strtod (__const char *__restrict __nptr, char **__restrict __endptr)
{
  return __strtod_internal (__nptr, __endptr, 0);
}
extern __inline long int
strtol (__const char *__restrict __nptr, char **__restrict __endptr,
        int __base)
{
  return __strtol_internal (__nptr, __endptr, __base, 0);
}
extern __inline unsigned long int
strtoul (__const char *__restrict __nptr, char **__restrict __endptr,
         int __base)
{
  return __strtoul_internal (__nptr, __endptr, __base, 0);
}
__extension__ extern __inline long long int
strtoq (__const char *__restrict __nptr, char **__restrict __endptr,
        int __base)
{
  return __strtoll_internal (__nptr, __endptr, __base, 0);
}
__extension__ extern __inline unsigned long long int
strtouq (__const char *__restrict __nptr, char **__restrict __endptr,
         int __base)
{
  return __strtoull_internal (__nptr, __endptr, __base, 0);
}
__extension__ extern __inline long long int
strtoll (__const char *__restrict __nptr, char **__restrict __endptr,
         int __base)
{
  return __strtoll_internal (__nptr, __endptr, __base, 0);
}
__extension__ extern __inline unsigned long long int
strtoull (__const char * __restrict __nptr, char **__restrict __endptr,
          int __base)
{
  return __strtoull_internal (__nptr, __endptr, __base, 0);
}
extern __inline double
atof (__const char *__nptr)
{
  return strtod (__nptr, (char **) ((void *)0));
}
extern __inline int
atoi (__const char *__nptr)
{
  return (int) strtol (__nptr, (char **) ((void *)0), 10);
}
extern __inline long int
atol (__const char *__nptr)
{
  return strtol (__nptr, (char **) ((void *)0), 10);
}
__extension__ extern __inline long long int
atoll (__const char *__nptr)
{
  return strtoll (__nptr, (char **) ((void *)0), 10);
}
extern char *l64a (long int __n) ;
extern long int a64l (__const char *__s) __attribute__ ((__pure__));
typedef __u_char u_char;
typedef __u_short u_short;
typedef __u_int u_int;
typedef __u_long u_long;
typedef __quad_t quad_t;
typedef __u_quad_t u_quad_t;
typedef __fsid_t fsid_t;
typedef __loff_t loff_t;
typedef __ino_t ino_t;
typedef __dev_t dev_t;
typedef __gid_t gid_t;
typedef __mode_t mode_t;
typedef __nlink_t nlink_t;
typedef __uid_t uid_t;
typedef __off_t off_t;
typedef __pid_t pid_t;
typedef __id_t id_t;
typedef __ssize_t ssize_t;
typedef __daddr_t daddr_t;
typedef __caddr_t caddr_t;
typedef __key_t key_t;
typedef __time_t time_t;
typedef __clockid_t clockid_t;
typedef __timer_t timer_t;
typedef unsigned long int ulong;
typedef unsigned short int ushort;
typedef unsigned int uint;
typedef int int8_t __attribute__ ((__mode__ (__QI__)));
typedef int int16_t __attribute__ ((__mode__ (__HI__)));
typedef int int32_t __attribute__ ((__mode__ (__SI__)));
typedef int int64_t __attribute__ ((__mode__ (__DI__)));
typedef unsigned int u_int8_t __attribute__ ((__mode__ (__QI__)));
typedef unsigned int u_int16_t __attribute__ ((__mode__ (__HI__)));
typedef unsigned int u_int32_t __attribute__ ((__mode__ (__SI__)));
typedef unsigned int u_int64_t __attribute__ ((__mode__ (__DI__)));
typedef int register_t __attribute__ ((__mode__ (__word__)));
typedef int __sig_atomic_t;
typedef struct
  {
    unsigned long int __val[(1024 / (8 * sizeof (unsigned long int)))];
  } __sigset_t;
typedef __sigset_t sigset_t;
struct timespec
  {
    __time_t tv_sec;
    long int tv_nsec;
  };
struct timeval
  {
    __time_t tv_sec;
    __suseconds_t tv_usec;
  };
typedef __suseconds_t suseconds_t;
typedef long int __fd_mask;
typedef struct
  {
    __fd_mask __fds_bits[1024 / (8 * sizeof (__fd_mask))];
  } fd_set;
typedef __fd_mask fd_mask;
extern int select (int __nfds, fd_set *__restrict __readfds,
                   fd_set *__restrict __writefds,
                   fd_set *__restrict __exceptfds,
                   struct timeval *__restrict __timeout) ;
typedef __blkcnt_t blkcnt_t;
typedef __fsblkcnt_t fsblkcnt_t;
typedef __fsfilcnt_t fsfilcnt_t;
struct __sched_param
  {
    int __sched_priority;
  };
struct _pthread_fastlock
{
  long int __status;
  int __spinlock;
};
typedef struct _pthread_descr_struct *_pthread_descr;
typedef struct __pthread_attr_s
{
  int __detachstate;
  int __schedpolicy;
  struct __sched_param __schedparam;
  int __inheritsched;
  int __scope;
  size_t __guardsize;
  int __stackaddr_set;
  void *__stackaddr;
  size_t __stacksize;
} pthread_attr_t;
__extension__ typedef long long __pthread_cond_align_t;
typedef struct
{
  struct _pthread_fastlock __c_lock;
  _pthread_descr __c_waiting;
  char __padding[48 - sizeof (struct _pthread_fastlock)
                 - sizeof (_pthread_descr) - sizeof (__pthread_cond_align_t)];
  __pthread_cond_align_t __align;
} pthread_cond_t;
typedef struct
{
  int __dummy;
} pthread_condattr_t;
typedef unsigned int pthread_key_t;
typedef struct
{
  int __m_reserved;
  int __m_count;
  _pthread_descr __m_owner;
  int __m_kind;
  struct _pthread_fastlock __m_lock;
} pthread_mutex_t;
typedef struct
{
  int __mutexkind;
} pthread_mutexattr_t;
typedef int pthread_once_t;
typedef unsigned long int pthread_t;
extern long int random (void) ;
extern void srandom (unsigned int __seed) ;
extern char *initstate (unsigned int __seed, char *__statebuf,
                        size_t __statelen) ;
extern char *setstate (char *__statebuf) ;
struct random_data
  {
    int32_t *fptr;
    int32_t *rptr;
    int32_t *state;
    int rand_type;
    int rand_deg;
    int rand_sep;
    int32_t *end_ptr;
  };
extern int random_r (struct random_data *__restrict __buf,
                     int32_t *__restrict __result) ;
extern int srandom_r (unsigned int __seed, struct random_data *__buf) ;
extern int initstate_r (unsigned int __seed, char *__restrict __statebuf,
                        size_t __statelen,
                        struct random_data *__restrict __buf) ;
extern int setstate_r (char *__restrict __statebuf,
                       struct random_data *__restrict __buf) ;
extern int rand (void) ;
extern void srand (unsigned int __seed) ;
extern int rand_r (unsigned int *__seed) ;
extern double drand48 (void) ;
extern double erand48 (unsigned short int __xsubi[3]) ;
extern long int lrand48 (void) ;
extern long int nrand48 (unsigned short int __xsubi[3]) ;
extern long int mrand48 (void) ;
extern long int jrand48 (unsigned short int __xsubi[3]) ;
extern void srand48 (long int __seedval) ;
extern unsigned short int *seed48 (unsigned short int __seed16v[3]) ;
extern void lcong48 (unsigned short int __param[7]) ;
struct drand48_data
  {
    unsigned short int __x[3];
    unsigned short int __old_x[3];
    unsigned short int __c;
    unsigned short int __init;
    unsigned long long int __a;
  };
extern int drand48_r (struct drand48_data *__restrict __buffer,
                      double *__restrict __result) ;
extern int erand48_r (unsigned short int __xsubi[3],
                      struct drand48_data *__restrict __buffer,
                      double *__restrict __result) ;
extern int lrand48_r (struct drand48_data *__restrict __buffer,
                      long int *__restrict __result) ;
extern int nrand48_r (unsigned short int __xsubi[3],
                      struct drand48_data *__restrict __buffer,
                      long int *__restrict __result) ;
extern int mrand48_r (struct drand48_data *__restrict __buffer,
                      long int *__restrict __result) ;
extern int jrand48_r (unsigned short int __xsubi[3],
                      struct drand48_data *__restrict __buffer,
                      long int *__restrict __result) ;
extern int srand48_r (long int __seedval, struct drand48_data *__buffer)
            ;
extern int seed48_r (unsigned short int __seed16v[3],
                     struct drand48_data *__buffer) ;
extern int lcong48_r (unsigned short int __param[7],
                      struct drand48_data *__buffer) ;
extern void *malloc (size_t __size) __attribute__ ((__malloc__));
extern void *calloc (size_t __nmemb, size_t __size)
             __attribute__ ((__malloc__));
extern void *realloc (void *__ptr, size_t __size) __attribute__ ((__malloc__));
extern void free (void *__ptr) ;
extern void cfree (void *__ptr) ;
extern void *alloca (size_t __size) ;
extern void *valloc (size_t __size) __attribute__ ((__malloc__));
extern void abort (void) __attribute__ ((__noreturn__));
extern int atexit (void (*__func) (void)) ;
extern int on_exit (void (*__func) (int __status, void *__arg), void *__arg)
            ;
extern void exit (int __status) __attribute__ ((__noreturn__));
extern char *getenv (__const char *__name) ;
extern char *__secure_getenv (__const char *__name) ;
extern int putenv (char *__string) ;
extern int setenv (__const char *__name, __const char *__value, int __replace)
            ;
extern int unsetenv (__const char *__name) ;
extern int clearenv (void) ;
extern char *mktemp (char *__template) ;
extern int mkstemp (char *__template) ;
extern char *mkdtemp (char *__template) ;
extern int system (__const char *__command) ;
extern char *realpath (__const char *__restrict __name,
                       char *__restrict __resolved) ;
typedef int (*__compar_fn_t) (__const void *, __const void *);
extern void *bsearch (__const void *__key, __const void *__base,
                      size_t __nmemb, size_t __size, __compar_fn_t __compar);
extern void qsort (void *__base, size_t __nmemb, size_t __size,
                   __compar_fn_t __compar);
extern int abs (int __x) __attribute__ ((__const__));
extern long int labs (long int __x) __attribute__ ((__const__));
extern div_t div (int __numer, int __denom)
             __attribute__ ((__const__));
extern ldiv_t ldiv (long int __numer, long int __denom)
             __attribute__ ((__const__));
extern char *ecvt (double __value, int __ndigit, int *__restrict __decpt,
                   int *__restrict __sign) ;
extern char *fcvt (double __value, int __ndigit, int *__restrict __decpt,
                   int *__restrict __sign) ;
extern char *gcvt (double __value, int __ndigit, char *__buf) ;
extern char *qecvt (long double __value, int __ndigit,
                    int *__restrict __decpt, int *__restrict __sign) ;
extern char *qfcvt (long double __value, int __ndigit,
                    int *__restrict __decpt, int *__restrict __sign) ;
extern char *qgcvt (long double __value, int __ndigit, char *__buf) ;
extern int ecvt_r (double __value, int __ndigit, int *__restrict __decpt,
                   int *__restrict __sign, char *__restrict __buf,
                   size_t __len) ;
extern int fcvt_r (double __value, int __ndigit, int *__restrict __decpt,
                   int *__restrict __sign, char *__restrict __buf,
                   size_t __len) ;
extern int qecvt_r (long double __value, int __ndigit,
                    int *__restrict __decpt, int *__restrict __sign,
                    char *__restrict __buf, size_t __len) ;
extern int qfcvt_r (long double __value, int __ndigit,
                    int *__restrict __decpt, int *__restrict __sign,
                    char *__restrict __buf, size_t __len) ;
extern int mblen (__const char *__s, size_t __n) ;
extern int mbtowc (wchar_t *__restrict __pwc,
                   __const char *__restrict __s, size_t __n) ;
extern int wctomb (char *__s, wchar_t __wchar) ;
extern size_t mbstowcs (wchar_t *__restrict __pwcs,
                        __const char *__restrict __s, size_t __n) ;
extern size_t wcstombs (char *__restrict __s,
                        __const wchar_t *__restrict __pwcs, size_t __n)
            ;
extern int rpmatch (__const char *__response) ;
extern int getloadavg (double __loadavg[], int __nelem) ;
extern void *memcpy (void *__restrict __dest,
                     __const void *__restrict __src, size_t __n) ;
extern void *memmove (void *__dest, __const void *__src, size_t __n)
            ;
extern void *memccpy (void *__restrict __dest, __const void *__restrict __src,
                      int __c, size_t __n)
            ;
extern void *memset (void *__s, int __c, size_t __n) ;
extern int memcmp (__const void *__s1, __const void *__s2, size_t __n)
             __attribute__ ((__pure__));
extern void *memchr (__const void *__s, int __c, size_t __n)
              __attribute__ ((__pure__));
extern char *strcpy (char *__restrict __dest, __const char *__restrict __src)
            ;
extern char *strncpy (char *__restrict __dest,
                      __const char *__restrict __src, size_t __n) ;
extern char *strcat (char *__restrict __dest, __const char *__restrict __src)
            ;
extern char *strncat (char *__restrict __dest, __const char *__restrict __src,
                      size_t __n) ;
extern int strcmp (__const char *__s1, __const char *__s2)
             __attribute__ ((__pure__));
extern int strncmp (__const char *__s1, __const char *__s2, size_t __n)
             __attribute__ ((__pure__));
extern int strcoll (__const char *__s1, __const char *__s2)
             __attribute__ ((__pure__));
extern size_t strxfrm (char *__restrict __dest,
                       __const char *__restrict __src, size_t __n) ;
extern char *strdup (__const char *__s) __attribute__ ((__malloc__));
extern char *strchr (__const char *__s, int __c) __attribute__ ((__pure__));
extern char *strrchr (__const char *__s, int __c) __attribute__ ((__pure__));
extern size_t strcspn (__const char *__s, __const char *__reject)
             __attribute__ ((__pure__));
extern size_t strspn (__const char *__s, __const char *__accept)
             __attribute__ ((__pure__));
extern char *strpbrk (__const char *__s, __const char *__accept)
             __attribute__ ((__pure__));
extern char *strstr (__const char *__haystack, __const char *__needle)
             __attribute__ ((__pure__));
extern char *strtok (char *__restrict __s, __const char *__restrict __delim)
            ;
extern char *__strtok_r (char *__restrict __s,
                         __const char *__restrict __delim,
                         char **__restrict __save_ptr) ;
extern char *strtok_r (char *__restrict __s, __const char *__restrict __delim,
                       char **__restrict __save_ptr) ;
extern size_t strlen (__const char *__s) __attribute__ ((__pure__));
extern char *strerror (int __errnum) ;
extern char *strerror_r (int __errnum, char *__buf, size_t __buflen) ;
extern void __bzero (void *__s, size_t __n) ;
extern void bcopy (__const void *__src, void *__dest, size_t __n) ;
extern void bzero (void *__s, size_t __n) ;
extern int bcmp (__const void *__s1, __const void *__s2, size_t __n)
             __attribute__ ((__pure__));
extern char *index (__const char *__s, int __c) __attribute__ ((__pure__));
extern char *rindex (__const char *__s, int __c) __attribute__ ((__pure__));
extern int ffs (int __i) __attribute__ ((__const__));
extern int strcasecmp (__const char *__s1, __const char *__s2)
             __attribute__ ((__pure__));
extern int strncasecmp (__const char *__s1, __const char *__s2, size_t __n)
             __attribute__ ((__pure__));
extern char *strsep (char **__restrict __stringp,
                     __const char *__restrict __delim) ;
extern void *__rawmemchr (const void *__s, int __c);
extern __inline char *__strcpy_small (char *, __uint16_t, __uint16_t,
                                      __uint32_t, __uint32_t, size_t);
extern __inline char *
__strcpy_small (char *__dest,
                __uint16_t __src0_2, __uint16_t __src4_2,
                __uint32_t __src0_4, __uint32_t __src4_4,
                size_t __srclen)
{
  union {
    __uint32_t __ui;
    __uint16_t __usi;
    unsigned char __uc;
  } *__u = (void *) __dest;
  switch ((unsigned int) __srclen)
    {
    case 1:
      __u->__uc = '\0';
      break;
    case 2:
      __u->__usi = __src0_2;
      break;
    case 3:
      __u->__usi = __src0_2;
      __u = __extension__ ((void *) __u + 2);
      __u->__uc = '\0';
      break;
    case 4:
      __u->__ui = __src0_4;
      break;
    case 5:
      __u->__ui = __src0_4;
      __u = __extension__ ((void *) __u + 4);
      __u->__uc = '\0';
      break;
    case 6:
      __u->__ui = __src0_4;
      __u = __extension__ ((void *) __u + 4);
      __u->__usi = __src4_2;
      break;
    case 7:
      __u->__ui = __src0_4;
      __u = __extension__ ((void *) __u + 4);
      __u->__usi = __src4_2;
      __u = __extension__ ((void *) __u + 2);
      __u->__uc = '\0';
      break;
    case 8:
      __u->__ui = __src0_4;
      __u = __extension__ ((void *) __u + 4);
      __u->__ui = __src4_4;
      break;
    }
  return __dest;
}
extern __inline size_t __strcspn_c1 (__const char *__s, int __reject);
extern __inline size_t
__strcspn_c1 (__const char *__s, int __reject)
{
  register size_t __result = 0;
  while (__s[__result] != '\0' && __s[__result] != __reject)
    ++__result;
  return __result;
}
extern __inline size_t __strcspn_c2 (__const char *__s, int __reject1,
                                     int __reject2);
extern __inline size_t
__strcspn_c2 (__const char *__s, int __reject1, int __reject2)
{
  register size_t __result = 0;
  while (__s[__result] != '\0' && __s[__result] != __reject1
         && __s[__result] != __reject2)
    ++__result;
  return __result;
}
extern __inline size_t __strcspn_c3 (__const char *__s, int __reject1,
                                     int __reject2, int __reject3);
extern __inline size_t
__strcspn_c3 (__const char *__s, int __reject1, int __reject2,
              int __reject3)
{
  register size_t __result = 0;
  while (__s[__result] != '\0' && __s[__result] != __reject1
         && __s[__result] != __reject2 && __s[__result] != __reject3)
    ++__result;
  return __result;
}
extern __inline size_t __strspn_c1 (__const char *__s, int __accept);
extern __inline size_t
__strspn_c1 (__const char *__s, int __accept)
{
  register size_t __result = 0;
  while (__s[__result] == __accept)
    ++__result;
  return __result;
}
extern __inline size_t __strspn_c2 (__const char *__s, int __accept1,
                                    int __accept2);
extern __inline size_t
__strspn_c2 (__const char *__s, int __accept1, int __accept2)
{
  register size_t __result = 0;
  while (__s[__result] == __accept1 || __s[__result] == __accept2)
    ++__result;
  return __result;
}
extern __inline size_t __strspn_c3 (__const char *__s, int __accept1,
                                    int __accept2, int __accept3);
extern __inline size_t
__strspn_c3 (__const char *__s, int __accept1, int __accept2, int __accept3)
{
  register size_t __result = 0;
  while (__s[__result] == __accept1 || __s[__result] == __accept2
         || __s[__result] == __accept3)
    ++__result;
  return __result;
}
extern __inline char *__strpbrk_c2 (__const char *__s, int __accept1,
                                     int __accept2);
extern __inline char *
__strpbrk_c2 (__const char *__s, int __accept1, int __accept2)
{
  while (*__s != '\0' && *__s != __accept1 && *__s != __accept2)
    ++__s;
  return *__s == '\0' ? ((void *)0) : (char *) (size_t) __s;
}
extern __inline char *__strpbrk_c3 (__const char *__s, int __accept1,
                                     int __accept2, int __accept3);
extern __inline char *
__strpbrk_c3 (__const char *__s, int __accept1, int __accept2,
              int __accept3)
{
  while (*__s != '\0' && *__s != __accept1 && *__s != __accept2
         && *__s != __accept3)
    ++__s;
  return *__s == '\0' ? ((void *)0) : (char *) (size_t) __s;
}
extern __inline char *__strtok_r_1c (char *__s, char __sep, char **__nextp);
extern __inline char *
__strtok_r_1c (char *__s, char __sep, char **__nextp)
{
  char *__result;
  if (__s == ((void *)0))
    __s = *__nextp;
  while (*__s == __sep)
    ++__s;
  __result = ((void *)0);
  if (*__s != '\0')
    {
      __result = __s++;
      while (*__s != '\0')
        if (*__s++ == __sep)
          {
            __s[-1] = '\0';
            break;
          }
      *__nextp = __s;
    }
  return __result;
}
extern char *__strsep_g (char **__stringp, __const char *__delim);
extern __inline char *__strsep_1c (char **__s, char __reject);
extern __inline char *
__strsep_1c (char **__s, char __reject)
{
  register char *__retval = *__s;
  if (__retval != ((void *)0) && (*__s = (__extension__ (__builtin_constant_p (__reject) && (__reject) == '\0' ? (char *) __rawmemchr (__retval, __reject) : strchr (__retval, __reject)))) != ((void *)0))
    *(*__s)++ = '\0';
  return __retval;
}
extern __inline char *__strsep_2c (char **__s, char __reject1, char __reject2);
extern __inline char *
__strsep_2c (char **__s, char __reject1, char __reject2)
{
  register char *__retval = *__s;
  if (__retval != ((void *)0))
    {
      register char *__cp = __retval;
      while (1)
        {
          if (*__cp == '\0')
            {
              __cp = ((void *)0);
          break;
            }
          if (*__cp == __reject1 || *__cp == __reject2)
            {
              *__cp++ = '\0';
              break;
            }
          ++__cp;
        }
      *__s = __cp;
    }
  return __retval;
}
extern __inline char *__strsep_3c (char **__s, char __reject1, char __reject2,
                                   char __reject3);
extern __inline char *
__strsep_3c (char **__s, char __reject1, char __reject2, char __reject3)
{
  register char *__retval = *__s;
  if (__retval != ((void *)0))
    {
      register char *__cp = __retval;
      while (1)
        {
          if (*__cp == '\0')
            {
              __cp = ((void *)0);
          break;
            }
          if (*__cp == __reject1 || *__cp == __reject2 || *__cp == __reject3)
            {
              *__cp++ = '\0';
              break;
            }
          ++__cp;
        }
      *__s = __cp;
    }
  return __retval;
}
extern char *__strdup (__const char *__string) __attribute__ ((__malloc__));
extern char *__strndup (__const char *__string, size_t __n)
             __attribute__ ((__malloc__));
extern void __assert_fail (__const char *__assertion, __const char *__file,
                           unsigned int __line, __const char *__function)
             __attribute__ ((__noreturn__));
extern void __assert_perror_fail (int __errnum, __const char *__file,
                                  unsigned int __line,
                                  __const char *__function)
             __attribute__ ((__noreturn__));
extern void __assert (const char *__assertion, const char *__file, int __line)
             __attribute__ ((__noreturn__));
typedef __gnuc_va_list va_list;
typedef struct region_ *region;
extern region permanent;
void region_init(void);
region newregion(void);
region newsubregion(region parent);
typedef int type_t;
void *__rc_typed_ralloc(region r, size_t size, type_t type);
void *__rc_typed_rarrayalloc(region r, size_t n, size_t size, type_t type);
void *__rc_typed_rarrayextend(region r, void *old, size_t n, size_t size, type_t type);
void typed_rarraycopy(void *to, void *from, size_t n, size_t size, type_t type);
void *__rc_ralloc_small0(region r, size_t size);
char *__rc_rstralloc(region r, size_t size);
char *__rc_rstralloc0(region r, size_t size);
char *__rc_rstrdup(region r, const char *s);
char *__rc_rstrextend(region r, const char *old, size_t newsize);
char *__rc_rstrextend0(region r, const char *old, size_t newsize);
void deleteregion(region r);
void deleteregion_ptr(region *r);
void deleteregion_array(int n, region *regions);
region regionof(void *ptr);
typedef void (*nomem_handler)(void);
nomem_handler set_nomem_handler(nomem_handler newhandler);
void findrefs(region r, void *from, void *to);
void findgrefs(region r);
void findrrefs(region r, region from);
typedef unsigned char bool;
typedef struct {
  char *data;
  int length;
} cstring;
cstring make_cstring(region r, const char *s, int l);
cstring str2cstring(region r, const char *s);
typedef long long largest_int;
typedef unsigned long long largest_uint;
struct array;
struct array *new_array(region r, size_t initialsize,
                        size_t typesize, type_t typeinfo);
void *array_extend(struct array *a, int by);
void array_reset(struct array *a);
size_t array_length(struct array *a);
void *array_data(struct array *a);
typedef struct wchar_array_a *wchar_array; wchar_array new_wchar_array(region r, size_t initialsize); wchar_t *wchar_array_extend(wchar_array a, int by); void wchar_array_reset(wchar_array a); size_t wchar_array_length(wchar_array a); wchar_t *wchar_array_data(wchar_array a);
extern void __assert_fail (__const char *__assertion, __const char *__file,
                           unsigned int __line, __const char *__function)
             __attribute__ ((__noreturn__));
extern void __assert_perror_fail (int __errnum, __const char *__file,
                                  unsigned int __line,
                                  __const char *__function)
             __attribute__ ((__noreturn__));
extern void __assert (const char *__assertion, const char *__file, int __line)
             __attribute__ ((__noreturn__));
typedef int (*dd_cmp_fn) (void*, void*);
typedef struct dd_list *dd_list;
typedef struct dd_list_pos
{
  struct dd_list_pos *next;
  struct dd_list_pos *previous;
  void *data;
} *dd_list_pos;
dd_list dd_new_list(region r);
void dd_add_first(region r, dd_list l, void *data);
void dd_add_last(region r, dd_list l, void *data);
void dd_insert_before(region r, dd_list_pos where, void *data);
void dd_insert_after(region r, dd_list_pos where, void *data);
void dd_remove(dd_list_pos what);
dd_list_pos dd_first(dd_list l);
dd_list_pos dd_last(dd_list l);
unsigned long dd_length(dd_list l);
void dd_append(dd_list l1, dd_list l2);
dd_list dd_copy(region r, dd_list l);
void dd_free_list(dd_list l, void (*delete)(dd_list_pos p));
dd_list_pos dd_find(dd_list l, void *find);
dd_list_pos dd_search(dd_list l, dd_cmp_fn f, void *find);
void dd_sort (dd_list l, dd_cmp_fn f);
void dd_remove_all_matches_from(dd_list_pos begin, dd_cmp_fn f, void* find);
void dd_remove_dups(dd_list l, dd_cmp_fn f);
static inline dd_list dd_fix_null(region r, dd_list l)
{
  if (l == ((void *)0))
    return dd_new_list(r);
  else
    return l;
}
typedef int (*set_cmp_fn)(void *e1, void *e2);
typedef struct Location
{
  char *filename;
  unsigned long lineno;
  unsigned long filepos;
  bool in_system_header;
  int location_index;
} *location;
unsigned long location_hash(location loc);
bool location_eq(location loc1, location loc2);
int location_cmp(location loc1, location loc2);
int location_index(location loc);
typedef dd_list loc_set; typedef dd_list_pos loc_set_scanner; static inline loc_set empty_loc_set (region r) { return dd_new_list(r); } static inline loc_set loc_set_copy(region r, loc_set s) { if (s == ((void *)0)) return ((void *)0); else return dd_copy(r, s); } static inline bool loc_set_empty(loc_set s) { return s == ((void *)0) || ((!(dd_first((s)))->next)); } static inline bool loc_set_member(loc_set s, location elt) { return s != ((void *)0) && dd_search(s, (dd_cmp_fn) location_cmp, (void *) elt) != ((void *)0); } static inline int loc_set_size(loc_set s) { if (s == ((void *)0)) return 0; else return dd_length(s); } static inline bool loc_set_insert(region r, loc_set *s, location elt) { *s = dd_fix_null(r, *s); if (! loc_set_member(*s, elt)) { dd_add_first(r, *s, (void *) elt); return 1; } return 0; } static inline bool loc_set_insert_last(region r, loc_set *s, location elt) { *s = dd_fix_null(r, *s); if (! loc_set_member(*s, elt)) { dd_add_last(r, *s, (void *) elt); return 1; } return 0; } static inline bool loc_set_insert_nocheck(region r, loc_set *s, location elt) { *s = dd_fix_null(r, *s); dd_add_first(r, *s, (void *) elt); return 1; } static inline bool loc_set_insert_last_nocheck(region r, loc_set *s, location elt) { *s = dd_fix_null(r, *s); dd_add_last(r, *s, (void *) elt); return 1; } static inline void loc_set_remove(loc_set *s, location elt) { if (*s) dd_remove_all_matches_from(dd_first(*s), (dd_cmp_fn) location_cmp, (void *) elt); } static inline loc_set loc_set_union(loc_set s1, loc_set s2) { if (s1 == ((void *)0)) return s2; else if (s2 == ((void *)0)) return s1; dd_append(s1, s2); dd_remove_dups(s1, (dd_cmp_fn)location_cmp); return s1; } static inline loc_set loc_set_union_nocheck(loc_set s1, loc_set s2) { if (s1 == ((void *)0)) return s2; else if (s2 == ((void *)0)) return s1; dd_append(s1, s2); return s1; } static inline bool loc_set_single(loc_set s) { return loc_set_size(s) == 1; } static inline void loc_set_sort(loc_set s) { if (s) dd_sort(s, (set_cmp_fn) location_cmp); } static inline void loc_set_remove_dups(int (*cmp)(location, location), loc_set s) { if (s) dd_remove_dups(s, (dd_cmp_fn)cmp); } static inline void loc_set_scan(loc_set s, loc_set_scanner *ss) { if (s) *ss = dd_first(s); else *ss = ((void *)0); } static inline location loc_set_next(loc_set_scanner *ss) { location result; if (*ss == ((void *)0) || (!(*ss)->next)) return ((void *)0); result = ((location)((*ss)->data)); *ss = ((*ss)->next); return result; };
void *xmalloc(size_t size);
void *xrealloc(void *p, size_t newsize);
unsigned long align_to(unsigned long n, unsigned long alignment);
unsigned long lcm(unsigned long x, unsigned long y);
void __fail(const char *file, unsigned int line,
            const char *func, const char *fmt, ...) __attribute__ ((__noreturn__));
void __user_error(const char *file, unsigned int line,
                  const char *func, const char *fmt, ...)
  __attribute__ ((__noreturn__));
char *rstrcat(region, const char *, const char *);
char *rstrscat(region, ...);
const char *inttostr(region r, int);
char *rsprintf(region r, const char *fmt, ...);
char *rvsprintf(region r, const char *fmt, va_list args);
char *ptr_to_ascii(void *ptr);
unsigned long ptr_hash(void *ptr);
bool ptr_eq(void *ptr1, void *ptr2);
unsigned long string_hash(const char *str);
bool string_eq(const char *s1, const char *s2);
int ptr_cmp(void *ptr1, void *ptr2);
const char *name_with_loc(region r, const char *name, location loc);
typedef int id_declaration_list;
typedef struct typelist *typelist;
typedef struct type *type;
typedef struct known_cst *known_cst;
typedef struct AST_node *node;
typedef struct AST_declaration *declaration;
typedef struct AST_statement *statement;
typedef struct AST_expression *expression;
typedef struct AST_type_element *type_element;
typedef struct AST_declarator *declarator;
typedef struct AST_label *label;
typedef struct AST_asm_decl *asm_decl;
typedef struct AST_data_decl *data_decl;
typedef struct AST_extension_decl *extension_decl;
typedef struct AST_ellipsis_decl *ellipsis_decl;
typedef struct AST_enumerator *enumerator;
typedef struct AST_oldidentifier_decl *oldidentifier_decl;
typedef struct AST_function_decl *function_decl;
typedef struct AST_implicit_decl *implicit_decl;
typedef struct AST_variable_decl *variable_decl;
typedef struct AST_field_decl *field_decl;
typedef struct AST_asttype *asttype;
typedef struct AST_typename *typename;
typedef struct AST_type_variable *type_variable;
typedef struct AST_typeof_expr *typeof_expr;
typedef struct AST_typeof_type *typeof_type;
typedef struct AST_attribute *attribute;
typedef struct AST_rid *rid;
typedef struct AST_user_qual *user_qual;
typedef struct AST_qualifier *qualifier;
typedef struct AST_tag_ref *tag_ref;
typedef struct AST_function_declarator *function_declarator;
typedef struct AST_pointer_declarator *pointer_declarator;
typedef struct AST_array_declarator *array_declarator;
typedef struct AST_identifier_declarator *identifier_declarator;
typedef struct AST_asm_stmt *asm_stmt;
typedef struct AST_compound_stmt *compound_stmt;
typedef struct AST_if_stmt *if_stmt;
typedef struct AST_labeled_stmt *labeled_stmt;
typedef struct AST_expression_stmt *expression_stmt;
typedef struct AST_breakable_stmt *breakable_stmt;
typedef struct AST_conditional_stmt *conditional_stmt;
typedef struct AST_switch_stmt *switch_stmt;
typedef struct AST_for_stmt *for_stmt;
typedef struct AST_break_stmt *break_stmt;
typedef struct AST_continue_stmt *continue_stmt;
typedef struct AST_return_stmt *return_stmt;
typedef struct AST_goto_stmt *goto_stmt;
typedef struct AST_computed_goto_stmt *computed_goto_stmt;
typedef struct AST_empty_stmt *empty_stmt;
typedef struct AST_assert_type_stmt *assert_type_stmt;
typedef struct AST_change_type_stmt *change_type_stmt;
typedef struct AST_deep_restrict_stmt *deep_restrict_stmt;
typedef struct AST_unary *unary;
typedef struct AST_binary *binary;
typedef struct AST_comma *comma;
typedef struct AST_sizeof_type *sizeof_type;
typedef struct AST_alignof_type *alignof_type;
typedef struct AST_label_address *label_address;
typedef struct AST_cast *cast;
typedef struct AST_cast_list *cast_list;
typedef struct AST_conditional *conditional;
typedef struct AST_identifier *identifier;
typedef struct AST_compound_expr *compound_expr;
typedef struct AST_function_call *function_call;
typedef struct AST_array_ref *array_ref;
typedef struct AST_field_ref *field_ref;
typedef struct AST_init_list *init_list;
typedef struct AST_init_index *init_index;
typedef struct AST_init_field *init_field;
typedef struct AST_lexical_cst *lexical_cst;
typedef struct AST_string_cst *string_cst;
typedef struct AST_string *string;
typedef struct AST_id_label *id_label;
typedef struct AST_case_label *case_label;
typedef struct AST_default_label *default_label;
typedef struct AST_word *word;
typedef struct AST_asm_operand *asm_operand;
typedef struct AST_declaration *error_decl;
typedef struct AST_tag_ref *struct_ref;
typedef struct AST_tag_ref *union_ref;
typedef struct AST_tag_ref *enum_ref;
typedef struct AST_statement *error_stmt;
typedef struct AST_conditional_stmt *while_stmt;
typedef struct AST_conditional_stmt *dowhile_stmt;
typedef struct AST_expression *error_expr;
typedef struct AST_unary *dereference;
typedef struct AST_unary *extension_expr;
typedef struct AST_unary *sizeof_expr;
typedef struct AST_unary *alignof_expr;
typedef struct AST_unary *realpart;
typedef struct AST_unary *imagpart;
typedef struct AST_unary *address_of;
typedef struct AST_unary *unary_minus;
typedef struct AST_unary *unary_plus;
typedef struct AST_unary *conjugate;
typedef struct AST_unary *preincrement;
typedef struct AST_unary *predecrement;
typedef struct AST_unary *postincrement;
typedef struct AST_unary *postdecrement;
typedef struct AST_unary *bitnot;
typedef struct AST_unary *not;
typedef struct AST_binary *plus;
typedef struct AST_binary *minus;
typedef struct AST_binary *times;
typedef struct AST_binary *divide;
typedef struct AST_binary *modulo;
typedef struct AST_binary *lshift;
typedef struct AST_binary *rshift;
typedef struct AST_binary *leq;
typedef struct AST_binary *geq;
typedef struct AST_binary *lt;
typedef struct AST_binary *gt;
typedef struct AST_binary *eq;
typedef struct AST_binary *ne;
typedef struct AST_binary *bitand;
typedef struct AST_binary *bitor;
typedef struct AST_binary *bitxor;
typedef struct AST_binary *andand;
typedef struct AST_binary *oror;
typedef struct AST_binary *assign;
typedef struct AST_binary *plus_assign;
typedef struct AST_binary *minus_assign;
typedef struct AST_binary *times_assign;
typedef struct AST_binary *divide_assign;
typedef struct AST_binary *modulo_assign;
typedef struct AST_binary *lshift_assign;
typedef struct AST_binary *rshift_assign;
typedef struct AST_binary *bitand_assign;
typedef struct AST_binary *bitor_assign;
typedef struct AST_binary *bitxor_assign;
typedef enum {
  kind_node = 42,
  postkind_node = 168,
  kind_declaration = 43,
  postkind_declaration = 54,
  kind_statement = 55,
  postkind_statement = 76,
  kind_expression = 77,
  postkind_expression = 143,
  kind_type_element = 144,
  postkind_type_element = 156,
  kind_declarator = 157,
  postkind_declarator = 161,
  kind_label = 162,
  postkind_label = 165,
  kind_asm_decl = 44,
  postkind_asm_decl = 44,
  kind_data_decl = 45,
  postkind_data_decl = 45,
  kind_extension_decl = 46,
  postkind_extension_decl = 46,
  kind_ellipsis_decl = 47,
  postkind_ellipsis_decl = 47,
  kind_enumerator = 48,
  postkind_enumerator = 48,
  kind_oldidentifier_decl = 49,
  postkind_oldidentifier_decl = 49,
  kind_function_decl = 50,
  postkind_function_decl = 50,
  kind_implicit_decl = 51,
  postkind_implicit_decl = 51,
  kind_variable_decl = 52,
  postkind_variable_decl = 52,
  kind_field_decl = 53,
  postkind_field_decl = 53,
  kind_asttype = 166,
  postkind_asttype = 166,
  kind_typename = 145,
  postkind_typename = 145,
  kind_type_variable = 146,
  postkind_type_variable = 146,
  kind_typeof_expr = 147,
  postkind_typeof_expr = 147,
  kind_typeof_type = 148,
  postkind_typeof_type = 148,
  kind_attribute = 149,
  postkind_attribute = 149,
  kind_rid = 150,
  postkind_rid = 150,
  kind_user_qual = 151,
  postkind_user_qual = 151,
  kind_qualifier = 152,
  postkind_qualifier = 152,
  kind_tag_ref = 153,
  postkind_tag_ref = 156,
  kind_function_declarator = 158,
  postkind_function_declarator = 158,
  kind_pointer_declarator = 159,
  postkind_pointer_declarator = 159,
  kind_array_declarator = 160,
  postkind_array_declarator = 160,
  kind_identifier_declarator = 161,
  postkind_identifier_declarator = 161,
  kind_asm_stmt = 56,
  postkind_asm_stmt = 56,
  kind_compound_stmt = 57,
  postkind_compound_stmt = 57,
  kind_if_stmt = 58,
  postkind_if_stmt = 58,
  kind_labeled_stmt = 59,
  postkind_labeled_stmt = 59,
  kind_expression_stmt = 60,
  postkind_expression_stmt = 60,
  kind_breakable_stmt = 61,
  postkind_breakable_stmt = 66,
  kind_conditional_stmt = 62,
  postkind_conditional_stmt = 65,
  kind_switch_stmt = 63,
  postkind_switch_stmt = 63,
  kind_for_stmt = 66,
  postkind_for_stmt = 66,
  kind_break_stmt = 67,
  postkind_break_stmt = 67,
  kind_continue_stmt = 68,
  postkind_continue_stmt = 68,
  kind_return_stmt = 69,
  postkind_return_stmt = 69,
  kind_goto_stmt = 70,
  postkind_goto_stmt = 70,
  kind_computed_goto_stmt = 71,
  postkind_computed_goto_stmt = 71,
  kind_empty_stmt = 72,
  postkind_empty_stmt = 72,
  kind_assert_type_stmt = 73,
  postkind_assert_type_stmt = 73,
  kind_change_type_stmt = 74,
  postkind_change_type_stmt = 74,
  kind_deep_restrict_stmt = 75,
  postkind_deep_restrict_stmt = 75,
  kind_unary = 78,
  postkind_unary = 96,
  kind_binary = 97,
  postkind_binary = 127,
  kind_comma = 128,
  postkind_comma = 128,
  kind_sizeof_type = 129,
  postkind_sizeof_type = 129,
  kind_alignof_type = 130,
  postkind_alignof_type = 130,
  kind_label_address = 131,
  postkind_label_address = 131,
  kind_cast = 79,
  postkind_cast = 79,
  kind_cast_list = 132,
  postkind_cast_list = 132,
  kind_conditional = 133,
  postkind_conditional = 133,
  kind_identifier = 134,
  postkind_identifier = 134,
  kind_compound_expr = 135,
  postkind_compound_expr = 135,
  kind_function_call = 136,
  postkind_function_call = 136,
  kind_array_ref = 98,
  postkind_array_ref = 98,
  kind_field_ref = 80,
  postkind_field_ref = 80,
  kind_init_list = 137,
  postkind_init_list = 137,
  kind_init_index = 138,
  postkind_init_index = 138,
  kind_init_field = 139,
  postkind_init_field = 139,
  kind_lexical_cst = 140,
  postkind_lexical_cst = 141,
  kind_string_cst = 141,
  postkind_string_cst = 141,
  kind_string = 142,
  postkind_string = 142,
  kind_id_label = 163,
  postkind_id_label = 163,
  kind_case_label = 164,
  postkind_case_label = 164,
  kind_default_label = 165,
  postkind_default_label = 165,
  kind_word = 167,
  postkind_word = 167,
  kind_asm_operand = 168,
  postkind_asm_operand = 168,
  kind_error_decl = 54,
  postkind_error_decl = 54,
  kind_struct_ref = 154,
  postkind_struct_ref = 154,
  kind_union_ref = 155,
  postkind_union_ref = 155,
  kind_enum_ref = 156,
  postkind_enum_ref = 156,
  kind_error_stmt = 76,
  postkind_error_stmt = 76,
  kind_while_stmt = 64,
  postkind_while_stmt = 64,
  kind_dowhile_stmt = 65,
  postkind_dowhile_stmt = 65,
  kind_error_expr = 143,
  postkind_error_expr = 143,
  kind_dereference = 81,
  postkind_dereference = 81,
  kind_extension_expr = 82,
  postkind_extension_expr = 82,
  kind_sizeof_expr = 83,
  postkind_sizeof_expr = 83,
  kind_alignof_expr = 84,
  postkind_alignof_expr = 84,
  kind_realpart = 85,
  postkind_realpart = 85,
  kind_imagpart = 86,
  postkind_imagpart = 86,
  kind_address_of = 87,
  postkind_address_of = 87,
  kind_unary_minus = 88,
  postkind_unary_minus = 88,
  kind_unary_plus = 89,
  postkind_unary_plus = 89,
  kind_conjugate = 90,
  postkind_conjugate = 90,
  kind_preincrement = 91,
  postkind_preincrement = 91,
  kind_predecrement = 92,
  postkind_predecrement = 92,
  kind_postincrement = 93,
  postkind_postincrement = 93,
  kind_postdecrement = 94,
  postkind_postdecrement = 94,
  kind_bitnot = 95,
  postkind_bitnot = 95,
  kind_not = 96,
  postkind_not = 96,
  kind_plus = 99,
  postkind_plus = 99,
  kind_minus = 100,
  postkind_minus = 100,
  kind_times = 101,
  postkind_times = 101,
  kind_divide = 102,
  postkind_divide = 102,
  kind_modulo = 103,
  postkind_modulo = 103,
  kind_lshift = 104,
  postkind_lshift = 104,
  kind_rshift = 105,
  postkind_rshift = 105,
  kind_leq = 106,
  postkind_leq = 106,
  kind_geq = 107,
  postkind_geq = 107,
  kind_lt = 108,
  postkind_lt = 108,
  kind_gt = 109,
  postkind_gt = 109,
  kind_eq = 110,
  postkind_eq = 110,
  kind_ne = 111,
  postkind_ne = 111,
  kind_bitand = 112,
  postkind_bitand = 112,
  kind_bitor = 113,
  postkind_bitor = 113,
  kind_bitxor = 114,
  postkind_bitxor = 114,
  kind_andand = 115,
  postkind_andand = 115,
  kind_oror = 116,
  postkind_oror = 116,
  kind_assign = 117,
  postkind_assign = 117,
  kind_plus_assign = 118,
  postkind_plus_assign = 118,
  kind_minus_assign = 119,
  postkind_minus_assign = 119,
  kind_times_assign = 120,
  postkind_times_assign = 120,
  kind_divide_assign = 121,
  postkind_divide_assign = 121,
  kind_modulo_assign = 122,
  postkind_modulo_assign = 122,
  kind_lshift_assign = 123,
  postkind_lshift_assign = 123,
  kind_rshift_assign = 124,
  postkind_rshift_assign = 124,
  kind_bitand_assign = 125,
  postkind_bitand_assign = 125,
  kind_bitor_assign = 126,
  postkind_bitor_assign = 126,
  kind_bitxor_assign = 127,
  postkind_bitxor_assign = 127
} ast_kind;
extern location last_location, dummy_location;
enum rid
{
  RID_UNUSED,
  RID_INT,
  RID_CHAR,
  RID_FLOAT,
  RID_DOUBLE,
  RID_VOID,
  RID_UNSIGNED,
  RID_SHORT,
  RID_LONG,
  RID_SIGNED,
  RID_INLINE,
  RID_COMPLEX,
  RID_AUTO,
  RID_STATIC,
  RID_EXTERN,
  RID_REGISTER,
  RID_TYPEDEF,
  RID_MAX
};
extern char * token_buffer;
extern bool in_system_header;
extern bool in_prelude;
int yylex(void);
void init_lex(void);
typedef unsigned char uint8_t;
typedef unsigned short int uint16_t;
typedef unsigned int uint32_t;
__extension__
typedef unsigned long long int uint64_t;
typedef signed char int_least8_t;
typedef short int int_least16_t;
typedef int int_least32_t;
__extension__
typedef long long int int_least64_t;
typedef unsigned char uint_least8_t;
typedef unsigned short int uint_least16_t;
typedef unsigned int uint_least32_t;
__extension__
typedef unsigned long long int uint_least64_t;
typedef signed char int_fast8_t;
typedef int int_fast16_t;
typedef int int_fast32_t;
__extension__
typedef long long int int_fast64_t;
typedef unsigned char uint_fast8_t;
typedef unsigned int uint_fast16_t;
typedef unsigned int uint_fast32_t;
__extension__
typedef unsigned long long int uint_fast64_t;
typedef int intptr_t;
typedef unsigned int uintptr_t;
__extension__
typedef long long int intmax_t;
__extension__
typedef unsigned long long int uintmax_t;
typedef unsigned int *bitset;
unsigned int sizeof_bitset(unsigned int nbits);
bitset bitset_new(region r, unsigned int nbits);
bitset bitset_copy(region r, bitset b);
void bitset_assign(bitset b1, bitset b2);
bool bitset_empty(bitset b);
bool bitset_empty_range(bitset b, unsigned int first, unsigned int last);
bool bitset_full_range(bitset b, unsigned int first, unsigned int last);
void bitset_insert_all(bitset b);
bool bitset_insert(bitset b, unsigned int elt);
bool bitset_remove(bitset b, unsigned int elt);
bool bitset_member(bitset b, unsigned int elt);
bool bitset_intersect(bitset b1, const bitset b2);
void bitset_print(bitset b);
unsigned long bitset_hash(bitset b);
bool bitset_eq(bitset b1, bitset b2);
typedef struct growbuf *growbuf;
growbuf growbuf_new(region, int);
void growbuf_reset(growbuf);
int gprintf(growbuf, const char *, ...);
int gvprintf(growbuf, const char *, va_list);
char *growbuf_contents(growbuf);
bool growbuf_empty(growbuf);
typedef struct Qtype *qtype;
typedef struct Abstract_loc *aloc;
typedef struct Effect *effect;
typedef struct Store *store;
typedef struct Rinfo *rinfo;
typedef struct Drinfo *drinfo;
typedef struct ExprDrinfoPair *exprdrinfo;
typedef int (*printf_func)(const char *fmt, ...);
typedef enum {p_neg = -1, p_non = 0, p_pos = 1, p_sub = 2} polarity;
typedef enum {
  eff_any = 0,
  eff_rwr,
  eff_r,
  eff_wr,
  eff_alloc,
  eff_last = eff_alloc } eff_kind;
void load_config_file_quals(const char *);
typedef void *hash_key;
typedef void *hash_data;
typedef unsigned long (*hash_fn)(hash_key k);
typedef bool (*keyeq_fn)(hash_key k1, hash_key k2);
typedef void (*hash_apply_fn)(hash_key k, hash_data d, void *arg);
typedef hash_data (*hash_map_fn)(hash_key k, hash_data d, void *arg);
typedef struct Hash_table *hash_table;
hash_table make_hash_table(region rhash, unsigned long size, hash_fn hash,
                           keyeq_fn cmp);
hash_table make_string_hash_table(region rhash, unsigned long size);
void hash_table_reset(hash_table ht);
unsigned long hash_table_size(hash_table ht);
bool hash_table_hash_search(hash_table ht, keyeq_fn cmp,
                            hash_key k, hash_data *d);
bool hash_table_lookup(hash_table ht, hash_key k, hash_data *d);
bool hash_table_insert(hash_table ht, hash_key k, hash_data d);
bool hash_table_remove(hash_table ht, hash_key k);
hash_table hash_table_copy(region rhash, hash_table ht);
hash_table hash_table_map(region r, hash_table ht, hash_map_fn f, void *arg);
typedef struct bucket *bucket;
typedef struct
{
  hash_table ht;
  unsigned long i;
  bucket cur;
} hash_table_scanner;
void hash_table_scan(hash_table ht, hash_table_scanner *);
bool hash_table_next(hash_table_scanner *, hash_key *k, hash_data *d);
typedef int (*keycmp_fn)(hash_key k1, hash_key k2);
struct sorted_entry
{
  hash_key k;
  hash_data d;
};
typedef struct
{
  region r;
  unsigned long i;
  unsigned long size;
  struct sorted_entry *entries;
} hash_table_scanner_sorted;
void hash_table_scan_sorted(hash_table ht, keycmp_fn f,
                            hash_table_scanner_sorted *htss);
bool hash_table_next_sorted(hash_table_scanner_sorted *htss, hash_key *k,
                            hash_data *d);
typedef struct env *env;
env new_env(region r, env parent);
env env_parent(env e);
region env_region(env e);
void *env_lookup(env e, const char *s, bool this_level_only);
void env_add(env e, const char *s, void *value);
typedef hash_table_scanner env_scanner;
void env_scan(env e, env_scanner *scanner);
bool env_next(env_scanner *scanner, const char **name, void **value);
typedef struct Aloctype *aloctype;
typedef struct Alocreftype *alocreftype;
typedef struct Alocfntype *alocfntype;
typedef struct Effecttype *effecttype;
typedef struct Rinf_const *rinf_const;
extern effecttype effecttype_empty;
void init_aloctypes(void);
aloctype make_aloctype(alocreftype tau, alocfntype fn);
aloctype make_aloctype_fresh(void);
void unify_aloctype(aloctype al1, aloctype al2);
void mkleq_aloctype(aloctype al1, aloctype al2);
alocreftype proj_tau(aloctype al);
alocfntype proj_lam(aloctype al);
int print_aloctype(printf_func pf, aloctype al, int depth);
alocreftype alocreftype_fresh(void);
alocreftype alocreftype_var(const char * name);
alocreftype alocreftype_ref(aloctype pointsto);
void unify_alocreftype(alocreftype alref1, alocreftype alref2);
void mkleq_alocreftype(alocreftype alref1, alocreftype alref2);
aloctype deref(alocreftype tau);
int print_alocreftype(printf_func pf, alocreftype alref, int depth);
alocfntype alocfntype_fresh(void);
alocfntype alocfntype_var(const char * name);
alocfntype alocfntype_fn(aloctype * params, effecttype eff, aloctype returns);
void unify_alocfntype(alocfntype alfn1, alocfntype alfn2);
void mkleq_alocfntype(alocfntype alfn1, alocfntype alfn2);
int print_alocfntype(printf_func pf, alocfntype alfn, int depth);
effecttype effecttype_read(alocreftype base);
effecttype effecttype_write(alocreftype base);
effecttype effecttype_any(alocreftype base);
effecttype effecttype_read_reach(alocreftype base);
effecttype effecttype_write_reach(alocreftype base);
effecttype effecttype_any_reach(alocreftype base);
effecttype effecttype_union(effecttype e1, effecttype e2);
effecttype effecttype_inter(effecttype e1, effecttype e2);
effecttype effecttype_var(const char * name);
effecttype effecttype_fresh(void);
void mkleq_effecttype(effecttype e1, effecttype e2);
void mkeq_effecttype(effecttype e1, effecttype e2);
void unify_effecttype(effecttype e1, effecttype e2);
int print_effecttype(printf_func pf, effecttype e);
rinf_const mk_rinf_const(location loc,
                         alocreftype r_al, alocreftype old_al,
                         alocreftype top_al,
                         effecttype r_type, effecttype pointsto_type,
                         effecttype r_body, effecttype body, effecttype env);
void check_rinf_consts(void);
bool is_rinf_satisfied(rinf_const c);
bool is_rinf_used(rinf_const c);
int print_rinf_info(printf_func pf, rinf_const c);
typedef struct field_declaration {
  struct field_declaration *next;
  const char *name;
  type type;
  field_decl ast;
  int bitwidth;
  size_t offset;
  bool offset_cc:1;
  bool packed:1;
} *field_declaration;
typedef struct tag_declaration {
  int kind;
  const char *name;
  type reptype;
  env fields;
  field_declaration fieldlist;
  tag_ref ast;
  struct tag_declaration *shadowed;
  bool defined:1;
  bool being_defined:1;
  bool fields_const:1;
  bool fields_volatile:1;
  bool transparent_union:1;
  bool size_cc:1;
  bool packed:1;
  size_t size, alignment;
  qtype qtype;
} *tag_declaration;
typedef enum { decl_variable, decl_constant, decl_function,
               decl_typedef, decl_error, decl_magic_string } data_kind;
typedef struct data_declaration {
  data_kind kind;
  const char *name;
  type type;
  struct data_declaration *shadowed;
  struct data_declaration *global;
  declaration definition;
  declaration ast;
  expression initialiser;
  bool islimbo:1;
  bool isexternalscope:1;
  bool isfilescoperef:1;
  bool needsmemory:1;
  bool isused:1;
  bool in_system_header:1;
  bool in_prelude:1;
  bool defined:1;
  bool isallocated:1;
  bool addresstaken:1;
  bool __init:1;
  enum { function_implicit, function_normal, function_static, function_nested }
    ftype:2;
  bool isinline:1;
  bool isexterninline:1;
  bool noreturn:1;
  typelist oldstyle_args;
  char * alias;
  enum { variable_register, variable_static, variable_normal } vtype:2;
  bool islocal:1;
  bool isparameter:1;
  known_cst value;
  const wchar_t *chars;
  size_t chars_length;
  qtype qtype;
  qtype fs_qtype;
  alocreftype alref;
  compound_stmt cs;
} *data_declaration;
typedef struct label_declaration {
  const char *name;
  bool explicitly_declared:1;
  bool used:1;
  id_label firstuse;
  id_label definition;
  function_decl containing_function;
} *label_declaration;
typedef struct environment
{
  struct environment * parent;
  function_decl fdecl;
  bool parm_level;
  env id_env;
  env tag_env;
} *environment;
extern data_declaration bad_decl;
typedef struct {
  enum { cval_variable, cval_unk, cval_address,
         cval_float, cval_float_complex,
         cval_uint, cval_uint_complex,
         cval_sint, cval_sint_complex } kind;
  union {
    struct {
      long double d, d_i;
    } fl;
    struct {
      size_t isize;
      union {
        largest_int si;
        largest_uint ui;
      } real;
      union {
        largest_int si_i;
        largest_uint ui_i;
        struct {
          struct data_declaration *ddecl;
          struct label_declaration *ldecl;
        } addr;
      } imag;
    } i;
  } u;
} cval;
extern cval cval_top;
extern cval cval_unknown;
extern cval cval_zero;
void cval_init(void);
cval make_cval_signed(largest_int i, type t);
cval make_cval_unsigned(largest_uint i, type t);
cval make_cval_float(long double d);
cval make_cval_complex(cval r, cval i);
cval make_cval_address(data_declaration ddecl, label_declaration ldecl,
                       largest_int offset);
bool cval_isinteger(cval c);
bool cval_iscomplex(cval c);
bool cval_knownbool(cval c);
bool cval_boolvalue(cval c);
bool cval_knownvalue(cval c);
largest_uint cval_uint_value(cval c);
largest_int cval_sint_value(cval c);
long double cval_float_value(cval c);
bool cval_isone(cval c);
cval cval_cast(cval c, type to);
cval cval_not(cval c);
cval cval_negate(cval c);
cval cval_bitnot(cval c);
cval cval_conjugate(cval c);
cval cval_realpart(cval c);
cval cval_imagpart(cval c);
cval cval_add(cval c1, cval c2);
cval cval_sub(cval c1, cval c2);
cval cval_times(cval c1, cval c2);
cval cval_divide(cval c1, cval c2);
cval cval_modulo(cval c1, cval c2);
cval cval_lshift(cval c1, cval c2);
cval cval_rshift(cval c1, cval c2);
cval cval_bitand(cval c1, cval c2);
cval cval_bitor(cval c1, cval c2);
cval cval_bitxor(cval c1, cval c2);
cval cval_eq(cval c1, cval c2);
cval cval_leq(cval c1, cval c2);
bool uint_inrange(largest_uint x, type t);
bool sint_inrange(largest_int x, type t);
bool cval_inrange(cval c, type t);
largest_int cval_intcompare(cval c1, cval c2);
extern region parse_region;
typedef enum
{
  no_qualifiers = 0,
  transparent_qualifier = 1,
const_qualifier = 2,
volatile_qualifier = 4,
restrict_qualifier = 8,
  last_qualifier
} type_quals;
typedef struct user_qual_list
{
  user_qual qual;
  struct user_qual_list *next;
} *user_qual_list;
user_qual_list new_user_qual_list(user_qual, user_qual_list);
user_qual_list copy_user_qual_list(user_qual_list l);
bool member_user_qual_list(user_qual_list l, char *q);
user_qual_list union_user_qual_list(user_qual_list left,
                                    user_qual_list right);
bool empty_user_qual_list(user_qual_list);
user_qual_list type_user_quals(type t);
extern type float_type, double_type, long_double_type,
  int_type, unsigned_int_type, long_type, unsigned_long_type,
  long_long_type, unsigned_long_long_type, short_type, unsigned_short_type,
  char_type, char_array_type, wchar_type, wchar_array_type,
  unsigned_char_type, signed_char_type, void_type, ptr_void_type,
  size_t_type, ptrdiff_t_type, intptr_type;
extern type error_type;
void init_types(void);
type make_complex_type(type t);
type make_base_type(type t);
type make_qualified_type(type t, type_quals qualifiers,
                         user_qual_list user_quals);
type qualify_type1(type t, type t1);
type qualify_type2(type t, type t1, type t2);
type align_type(type t, int new_alignment);
type make_pointer_type(type t);
type make_array_type(type t, expression size);
type make_function_type(type t, typelist argtypes, bool varargs, type_quals varargs_quals, user_qual_list varargs_user_quals, bool oldstyle);
type make_tagged_type(tag_declaration d);
typelist new_typelist(region r);
void typelist_append(typelist l, type t);
bool empty_typelist(typelist l);
typedef struct typelist_element *typelist_scanner;
void typelist_scan(typelist tl, typelist_scanner *scanner);
type typelist_next(typelist_scanner *scanner);
size_t type_size(type t);
size_t type_alignment(type t);
bool type_has_size(type t);
bool type_size_cc(type t);
type common_type(type t1, type t2);
bool type_equal(type t1, type t2);
bool type_equal_unqualified(type t1, type t2);
bool type_compatible(type t1, type t2);
bool type_compatible_unqualified(type t1, type t2);
bool type_self_promoting(type t);
bool type_incomplete(type t);
char *qualifier_name(type_quals q);
type_quals type_qualifiers(type t);
bool qual_const(type_quals q);
bool qual_volatile(type_quals q);
bool qual_restrict(type_quals q);
bool force_qual_const(type_quals q);
bool force_qual_volatile(type_quals q);
bool force_qual_restrict(type_quals q);
bool type_const(type t);
bool type_volatile(type t);
bool type_restrict(type t);
bool type_transparent(type t);
bool type_readonly(type t);
bool type_atomic(type t);
bool type_plain_char(type t);
bool type_signed_char(type t);
bool type_unsigned_char(type t);
bool type_short(type t);
bool type_unsigned_short(type t);
bool type_int(type t);
bool type_unsigned_int(type t);
bool type_long(type t);
bool type_unsigned_long(type t);
bool type_long_long(type t);
bool type_unsigned_long_long(type t);
bool type_long_double(type t);
bool type_tagged(type t);
bool type_integral(type t);
bool type_floating(type t);
bool type_complex(type t);
bool type_float(type t);
bool type_double(type t);
bool type_void(type t);
bool type_char(type t);
bool type_function(type t);
bool type_array(type t);
bool type_pointer(type t);
bool type_enum(type t);
bool type_struct(type t);
bool type_union(type t);
bool type_integer(type t);
bool type_unsigned(type t);
bool type_smallerthanint(type t);
bool type_real(type t);
bool type_arithmetic(type t);
bool type_scalar(type t);
bool type_aggregate(type t);
type make_unsigned_type(type t);
type type_function_return_type(type t);
typelist type_function_arguments(type t);
bool type_function_varargs(type t);
type_quals type_function_varargs_quals(type t);
user_qual_list type_function_varargs_user_quals(type t);
bool type_function_oldstyle(type t);
bool self_promoting_args(type fntype);
type type_points_to(type t);
type type_array_of(type t);
type type_array_of_base(type t);
expression type_array_size(type t);
tag_declaration type_tag(type t);
type type_base(type t);
qtype tag_decl_qtype(tag_declaration td);
tag_ref tag_decl_to_tag_ref(tag_declaration td);
void tag_decl_set_qtype(tag_declaration td, qtype qt);
bool tag_decl_is_defined(tag_declaration td);
const char * tag_decl_name(tag_declaration td);
const char * field_decl_name(field_declaration fd);
typedef field_declaration tag_decl_scanner;
void tag_decl_scan(tag_declaration, tag_decl_scanner *);
field_declaration tag_decl_next(tag_decl_scanner *);
void type2ast(region r, location loc, type t, declarator inside,
              declarator *d, type_element *modifiers);
bool type_contains_pointers(type t);
bool type_contains_union_with_pointers(type t);
bool type_contains_quals(type t);
bool type_contains_user_quals(type t);
type type_default_conversion(type from);
type function_call_type(function_call fcall);
void name_tag(tag_declaration tag);
type type_for_size(int size, bool isunsigned);
type type_for_cval(cval c, bool isunsigned);
type make_type_var(cstring cs);
bool type_var(type t);
const char *type_name(type t);
         enum { struct_type, union_type, enum_type };
node new_node(region r, location loc);
declaration new_declaration(region r, location loc);
statement new_statement(region r, location loc);
expression new_expression(region r, location loc);
type_element new_type_element(region r, location loc);
declarator new_declarator(region r, location loc);
label new_label(region r, location loc);
asm_decl new_asm_decl(region r, location loc, asm_stmt asm_stmt);
data_decl new_data_decl(region r, location loc, type_element modifiers, attribute attributes, declaration decls);
extension_decl new_extension_decl(region r, location loc, declaration decl);
ellipsis_decl new_ellipsis_decl(region r, location loc, type_element qualifiers);
enumerator new_enumerator(region r, location loc, cstring cstring, expression arg1, data_declaration ddecl);
oldidentifier_decl new_oldidentifier_decl(region r, location loc, cstring cstring, data_declaration ddecl);
function_decl new_function_decl(region r, location loc, declarator declarator, type_element qualifiers, attribute attributes, declaration old_parms, statement stmt, function_decl parent_function, data_declaration ddecl);
implicit_decl new_implicit_decl(region r, location loc, identifier ident);
variable_decl new_variable_decl(region r, location loc, declarator declarator, attribute attributes, expression arg1, asm_stmt asm_stmt, data_declaration ddecl);
field_decl new_field_decl(region r, location loc, declarator declarator, attribute attributes, expression arg1);
asttype new_asttype(region r, location loc, declarator declarator, type_element qualifiers);
typename new_typename(region r, location loc, data_declaration ddecl);
type_variable new_type_variable(region r, location loc, cstring cstring);
typeof_expr new_typeof_expr(region r, location loc, expression arg1);
typeof_type new_typeof_type(region r, location loc, asttype asttype);
attribute new_attribute(region r, location loc, word word1, word word2, expression args);
rid new_rid(region r, location loc, enum rid id);
user_qual new_user_qual(region r, location loc, cstring cstring);
qualifier new_qualifier(region r, location loc, enum rid id);
tag_ref new_tag_ref(region r, location loc, word word1, attribute attributes, declaration fields, bool defined);
function_declarator new_function_declarator(region r, location loc, declarator declarator, declaration parms, type_element qualifiers, environment env);
pointer_declarator new_pointer_declarator(region r, location loc, declarator declarator, type_element qualifiers);
array_declarator new_array_declarator(region r, location loc, declarator declarator, expression arg1);
identifier_declarator new_identifier_declarator(region r, location loc, cstring cstring);
asm_stmt new_asm_stmt(region r, location loc, expression arg1, asm_operand asm_operands1, asm_operand asm_operands2, string asm_clobbers, type_element qualifiers);
compound_stmt new_compound_stmt(region r, location loc, id_label id_labels, declaration decls, statement stmts, environment env);
if_stmt new_if_stmt(region r, location loc, expression condition, statement stmt1, statement stmt2);
labeled_stmt new_labeled_stmt(region r, location loc, label label, statement stmt);
expression_stmt new_expression_stmt(region r, location loc, expression arg1);
breakable_stmt new_breakable_stmt(region r, location loc);
conditional_stmt new_conditional_stmt(region r, location loc, expression condition, statement stmt);
switch_stmt new_switch_stmt(region r, location loc, expression condition, statement stmt);
for_stmt new_for_stmt(region r, location loc, expression arg1, expression arg2, expression arg3, statement stmt);
break_stmt new_break_stmt(region r, location loc);
continue_stmt new_continue_stmt(region r, location loc);
return_stmt new_return_stmt(region r, location loc, expression arg1);
goto_stmt new_goto_stmt(region r, location loc, id_label id_label);
computed_goto_stmt new_computed_goto_stmt(region r, location loc, expression arg1);
empty_stmt new_empty_stmt(region r, location loc);
assert_type_stmt new_assert_type_stmt(region r, location loc, expression arg1, asttype asttype);
change_type_stmt new_change_type_stmt(region r, location loc, expression arg1, asttype asttype);
deep_restrict_stmt new_deep_restrict_stmt(region r, location loc, expression arg1, statement stmt);
unary new_unary(region r, location loc, expression arg1);
binary new_binary(region r, location loc, expression arg1, expression arg2);
comma new_comma(region r, location loc, expression arg1);
sizeof_type new_sizeof_type(region r, location loc, asttype asttype);
alignof_type new_alignof_type(region r, location loc, asttype asttype);
label_address new_label_address(region r, location loc, id_label id_label);
cast new_cast(region r, location loc, expression arg1, asttype asttype);
cast_list new_cast_list(region r, location loc, asttype asttype, expression init_expr);
conditional new_conditional(region r, location loc, expression condition, expression arg1, expression arg2);
identifier new_identifier(region r, location loc, cstring cstring, data_declaration ddecl);
compound_expr new_compound_expr(region r, location loc, statement stmt);
function_call new_function_call(region r, location loc, expression arg1, expression args, asttype va_arg_call);
array_ref new_array_ref(region r, location loc, expression arg1, expression arg2);
field_ref new_field_ref(region r, location loc, expression arg1, cstring cstring, location cstring_loc);
init_list new_init_list(region r, location loc, expression args);
init_index new_init_index(region r, location loc, expression arg1, expression arg2, expression init_expr);
init_field new_init_field(region r, location loc, word word1, expression init_expr);
lexical_cst new_lexical_cst(region r, location loc, cstring cstring);
string_cst new_string_cst(region r, location loc, cstring cstring, wchar_t * chars, size_t length);
string new_string(region r, location loc, expression strings, data_declaration ddecl);
id_label new_id_label(region r, location loc, cstring cstring);
case_label new_case_label(region r, location loc, expression arg1, expression arg2);
default_label new_default_label(region r, location loc);
word new_word(region r, location loc, cstring cstring);
asm_operand new_asm_operand(region r, location loc, string string, expression arg1);
error_decl new_error_decl(region r, location loc);
struct_ref new_struct_ref(region r, location loc, word word1, attribute attributes, declaration fields, bool defined);
union_ref new_union_ref(region r, location loc, word word1, attribute attributes, declaration fields, bool defined);
enum_ref new_enum_ref(region r, location loc, word word1, attribute attributes, declaration fields, bool defined);
error_stmt new_error_stmt(region r, location loc);
while_stmt new_while_stmt(region r, location loc, expression condition, statement stmt);
dowhile_stmt new_dowhile_stmt(region r, location loc, expression condition, statement stmt);
error_expr new_error_expr(region r, location loc);
dereference new_dereference(region r, location loc, expression arg1);
extension_expr new_extension_expr(region r, location loc, expression arg1);
sizeof_expr new_sizeof_expr(region r, location loc, expression arg1);
alignof_expr new_alignof_expr(region r, location loc, expression arg1);
realpart new_realpart(region r, location loc, expression arg1);
imagpart new_imagpart(region r, location loc, expression arg1);
address_of new_address_of(region r, location loc, expression arg1);
unary_minus new_unary_minus(region r, location loc, expression arg1);
unary_plus new_unary_plus(region r, location loc, expression arg1);
conjugate new_conjugate(region r, location loc, expression arg1);
preincrement new_preincrement(region r, location loc, expression arg1);
predecrement new_predecrement(region r, location loc, expression arg1);
postincrement new_postincrement(region r, location loc, expression arg1);
postdecrement new_postdecrement(region r, location loc, expression arg1);
bitnot new_bitnot(region r, location loc, expression arg1);
not new_not(region r, location loc, expression arg1);
plus new_plus(region r, location loc, expression arg1, expression arg2);
minus new_minus(region r, location loc, expression arg1, expression arg2);
times new_times(region r, location loc, expression arg1, expression arg2);
divide new_divide(region r, location loc, expression arg1, expression arg2);
modulo new_modulo(region r, location loc, expression arg1, expression arg2);
lshift new_lshift(region r, location loc, expression arg1, expression arg2);
rshift new_rshift(region r, location loc, expression arg1, expression arg2);
leq new_leq(region r, location loc, expression arg1, expression arg2);
geq new_geq(region r, location loc, expression arg1, expression arg2);
lt new_lt(region r, location loc, expression arg1, expression arg2);
gt new_gt(region r, location loc, expression arg1, expression arg2);
eq new_eq(region r, location loc, expression arg1, expression arg2);
ne new_ne(region r, location loc, expression arg1, expression arg2);
bitand new_bitand(region r, location loc, expression arg1, expression arg2);
bitor new_bitor(region r, location loc, expression arg1, expression arg2);
bitxor new_bitxor(region r, location loc, expression arg1, expression arg2);
andand new_andand(region r, location loc, expression arg1, expression arg2);
oror new_oror(region r, location loc, expression arg1, expression arg2);
assign new_assign(region r, location loc, expression arg1, expression arg2);
plus_assign new_plus_assign(region r, location loc, expression arg1, expression arg2);
minus_assign new_minus_assign(region r, location loc, expression arg1, expression arg2);
times_assign new_times_assign(region r, location loc, expression arg1, expression arg2);
divide_assign new_divide_assign(region r, location loc, expression arg1, expression arg2);
modulo_assign new_modulo_assign(region r, location loc, expression arg1, expression arg2);
lshift_assign new_lshift_assign(region r, location loc, expression arg1, expression arg2);
rshift_assign new_rshift_assign(region r, location loc, expression arg1, expression arg2);
bitand_assign new_bitand_assign(region r, location loc, expression arg1, expression arg2);
bitor_assign new_bitor_assign(region r, location loc, expression arg1, expression arg2);
bitxor_assign new_bitxor_assign(region r, location loc, expression arg1, expression arg2);
struct AST_node {
  ast_kind kind;
  location loc;
  node next;
  node parent;
};
struct AST_declaration {
  ast_kind kind;
  location loc;
  node next;
  node parent;
};
struct AST_statement {
  ast_kind kind;
  location loc;
  node next;
  node parent;
};
struct AST_expression {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  type type;
  bool lvalue;
  bool side_effects;
  known_cst cst;
  bool bitfield;
  bool isregister;
  known_cst static_address;
  qtype qtype;
};
struct AST_type_element {
  ast_kind kind;
  location loc;
  node next;
  node parent;
};
struct AST_declarator {
  ast_kind kind;
  location loc;
  node next;
  node parent;
};
struct AST_label {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  label next_label;
  compound_stmt enclosing_cs;
  store store_in;
};
struct AST_asm_decl {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  asm_stmt asm_stmt;
};
struct AST_data_decl {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  type_element modifiers;
  attribute attributes;
  declaration decls;
};
struct AST_extension_decl {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  declaration decl;
};
struct AST_ellipsis_decl {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  type_element qualifiers;
};
struct AST_enumerator {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  cstring cstring;
  expression arg1;
  data_declaration ddecl;
};
struct AST_oldidentifier_decl {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  cstring cstring;
  data_declaration ddecl;
};
struct AST_function_decl {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  declarator declarator;
  type_element qualifiers;
  attribute attributes;
  declaration old_parms;
  statement stmt;
  function_decl parent_function;
  data_declaration ddecl;
  function_declarator fdeclarator;
  type declared_type;
  env undeclared_variables;
  env base_labels;
  env scoped_labels;
  breakable_stmt current_loop;
  int nlocals;
  effect scope_env;
};
struct AST_implicit_decl {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  identifier ident;
};
struct AST_variable_decl {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  declarator declarator;
  attribute attributes;
  expression arg1;
  asm_stmt asm_stmt;
  data_declaration ddecl;
  type declared_type;
  bool forward;
  effect arg1_eff;
  rinfo rinfo;
};
struct AST_field_decl {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  declarator declarator;
  attribute attributes;
  expression arg1;
};
struct AST_asttype {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  declarator declarator;
  type_element qualifiers;
  type type;
};
struct AST_typename {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  data_declaration ddecl;
};
struct AST_type_variable {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  cstring cstring;
};
struct AST_typeof_expr {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  expression arg1;
};
struct AST_typeof_type {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  asttype asttype;
};
struct AST_attribute {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  word word1;
  word word2;
  expression args;
};
struct AST_rid {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  enum rid id;
};
struct AST_user_qual {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  cstring cstring;
};
struct AST_qualifier {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  enum rid id;
};
struct AST_tag_ref {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  word word1;
  attribute attributes;
  declaration fields;
  bool defined;
  tag_declaration tdecl;
};
struct AST_function_declarator {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  declarator declarator;
  declaration parms;
  type_element qualifiers;
  environment env;
};
struct AST_pointer_declarator {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  declarator declarator;
  type_element qualifiers;
};
struct AST_array_declarator {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  declarator declarator;
  expression arg1;
};
struct AST_identifier_declarator {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  cstring cstring;
};
struct AST_asm_stmt {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  expression arg1;
  asm_operand asm_operands1;
  asm_operand asm_operands2;
  string asm_clobbers;
  type_element qualifiers;
};
struct AST_compound_stmt {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  id_label id_labels;
  declaration decls;
  statement stmts;
  compound_stmt enclosing_cs;
  int visited;
  environment env;
  effect scope_env;
  effect filter_env;
  dd_list confine_expressions;
  dd_list drinfolist;
};
struct AST_if_stmt {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  expression condition;
  statement stmt1;
  statement stmt2;
};
struct AST_labeled_stmt {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  label label;
  statement stmt;
};
struct AST_expression_stmt {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  expression arg1;
};
struct AST_breakable_stmt {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  compound_stmt enclosing_cs;
  breakable_stmt parent_loop;
  store break_dest;
  store continue_dest;
};
struct AST_conditional_stmt {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  compound_stmt enclosing_cs;
  breakable_stmt parent_loop;
  store break_dest;
  store continue_dest;
  expression condition;
  statement stmt;
};
struct AST_switch_stmt {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  compound_stmt enclosing_cs;
  breakable_stmt parent_loop;
  store break_dest;
  store continue_dest;
  expression condition;
  statement stmt;
  label next_label;
};
struct AST_for_stmt {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  compound_stmt enclosing_cs;
  breakable_stmt parent_loop;
  store break_dest;
  store continue_dest;
  expression arg1;
  expression arg2;
  expression arg3;
  statement stmt;
};
struct AST_break_stmt {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  breakable_stmt parent_loop;
  compound_stmt enclosing_cs;
};
struct AST_continue_stmt {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  breakable_stmt parent_loop;
  compound_stmt enclosing_cs;
};
struct AST_return_stmt {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  expression arg1;
  compound_stmt enclosing_cs;
};
struct AST_goto_stmt {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  id_label id_label;
  compound_stmt enclosing_cs;
};
struct AST_computed_goto_stmt {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  expression arg1;
};
struct AST_empty_stmt {
  ast_kind kind;
  location loc;
  node next;
  node parent;
};
struct AST_assert_type_stmt {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  expression arg1;
  asttype asttype;
  qtype qtype;
};
struct AST_change_type_stmt {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  expression arg1;
  asttype asttype;
  qtype qtype;
};
struct AST_deep_restrict_stmt {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  expression arg1;
  statement stmt;
  drinfo drinfo;
};
struct AST_unary {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  type type;
  bool lvalue;
  bool side_effects;
  known_cst cst;
  bool bitfield;
  bool isregister;
  known_cst static_address;
  qtype qtype;
  expression arg1;
};
struct AST_binary {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  type type;
  bool lvalue;
  bool side_effects;
  known_cst cst;
  bool bitfield;
  bool isregister;
  known_cst static_address;
  qtype qtype;
  expression arg1;
  expression arg2;
};
struct AST_comma {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  type type;
  bool lvalue;
  bool side_effects;
  known_cst cst;
  bool bitfield;
  bool isregister;
  known_cst static_address;
  qtype qtype;
  expression arg1;
};
struct AST_sizeof_type {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  type type;
  bool lvalue;
  bool side_effects;
  known_cst cst;
  bool bitfield;
  bool isregister;
  known_cst static_address;
  qtype qtype;
  asttype asttype;
};
struct AST_alignof_type {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  type type;
  bool lvalue;
  bool side_effects;
  known_cst cst;
  bool bitfield;
  bool isregister;
  known_cst static_address;
  qtype qtype;
  asttype asttype;
};
struct AST_label_address {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  type type;
  bool lvalue;
  bool side_effects;
  known_cst cst;
  bool bitfield;
  bool isregister;
  known_cst static_address;
  qtype qtype;
  id_label id_label;
};
struct AST_cast {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  type type;
  bool lvalue;
  bool side_effects;
  known_cst cst;
  bool bitfield;
  bool isregister;
  known_cst static_address;
  qtype qtype;
  expression arg1;
  asttype asttype;
};
struct AST_cast_list {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  type type;
  bool lvalue;
  bool side_effects;
  known_cst cst;
  bool bitfield;
  bool isregister;
  known_cst static_address;
  qtype qtype;
  asttype asttype;
  qtype astqtype;
  expression init_expr;
};
struct AST_conditional {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  type type;
  bool lvalue;
  bool side_effects;
  known_cst cst;
  bool bitfield;
  bool isregister;
  known_cst static_address;
  qtype qtype;
  expression condition;
  expression arg1;
  expression arg2;
};
struct AST_identifier {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  type type;
  bool lvalue;
  bool side_effects;
  known_cst cst;
  bool bitfield;
  bool isregister;
  known_cst static_address;
  qtype qtype;
  cstring cstring;
  data_declaration ddecl;
  aloc aloc;
};
struct AST_compound_expr {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  type type;
  bool lvalue;
  bool side_effects;
  known_cst cst;
  bool bitfield;
  bool isregister;
  known_cst static_address;
  qtype qtype;
  statement stmt;
  effect filter_env;
};
struct AST_function_call {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  type type;
  bool lvalue;
  bool side_effects;
  known_cst cst;
  bool bitfield;
  bool isregister;
  known_cst static_address;
  qtype qtype;
  expression arg1;
  expression args;
  asttype va_arg_call;
};
struct AST_array_ref {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  type type;
  bool lvalue;
  bool side_effects;
  known_cst cst;
  bool bitfield;
  bool isregister;
  known_cst static_address;
  qtype qtype;
  expression arg1;
  expression arg2;
  expression alt;
};
struct AST_field_ref {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  type type;
  bool lvalue;
  bool side_effects;
  known_cst cst;
  bool bitfield;
  bool isregister;
  known_cst static_address;
  qtype qtype;
  expression arg1;
  cstring cstring;
  location cstring_loc;
};
struct AST_init_list {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  type type;
  bool lvalue;
  bool side_effects;
  known_cst cst;
  bool bitfield;
  bool isregister;
  known_cst static_address;
  qtype qtype;
  expression args;
};
struct AST_init_index {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  type type;
  bool lvalue;
  bool side_effects;
  known_cst cst;
  bool bitfield;
  bool isregister;
  known_cst static_address;
  qtype qtype;
  expression arg1;
  expression arg2;
  expression init_expr;
};
struct AST_init_field {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  type type;
  bool lvalue;
  bool side_effects;
  known_cst cst;
  bool bitfield;
  bool isregister;
  known_cst static_address;
  qtype qtype;
  word word1;
  expression init_expr;
};
struct AST_lexical_cst {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  type type;
  bool lvalue;
  bool side_effects;
  known_cst cst;
  bool bitfield;
  bool isregister;
  known_cst static_address;
  qtype qtype;
  cstring cstring;
};
struct AST_string_cst {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  type type;
  bool lvalue;
  bool side_effects;
  known_cst cst;
  bool bitfield;
  bool isregister;
  known_cst static_address;
  qtype qtype;
  cstring cstring;
  wchar_t * chars;
  size_t length;
};
struct AST_string {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  type type;
  bool lvalue;
  bool side_effects;
  known_cst cst;
  bool bitfield;
  bool isregister;
  known_cst static_address;
  qtype qtype;
  expression strings;
  data_declaration ddecl;
};
struct AST_id_label {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  label next_label;
  compound_stmt enclosing_cs;
  store store_in;
  cstring cstring;
  label_declaration ldecl;
};
struct AST_case_label {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  label next_label;
  compound_stmt enclosing_cs;
  store store_in;
  expression arg1;
  expression arg2;
};
struct AST_default_label {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  label next_label;
  compound_stmt enclosing_cs;
  store store_in;
};
struct AST_word {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  cstring cstring;
};
struct AST_asm_operand {
  ast_kind kind;
  location loc;
  node next;
  node parent;
  string string;
  expression arg1;
};
node node_chain(node l1, node l2);
declaration declaration_chain(declaration l1, declaration l2);
statement statement_chain(statement l1, statement l2);
expression expression_chain(expression l1, expression l2);
type_element type_element_chain(type_element l1, type_element l2);
declarator declarator_chain(declarator l1, declarator l2);
label label_chain(label l1, label l2);
asm_decl asm_decl_chain(asm_decl l1, asm_decl l2);
data_decl data_decl_chain(data_decl l1, data_decl l2);
extension_decl extension_decl_chain(extension_decl l1, extension_decl l2);
ellipsis_decl ellipsis_decl_chain(ellipsis_decl l1, ellipsis_decl l2);
enumerator enumerator_chain(enumerator l1, enumerator l2);
oldidentifier_decl oldidentifier_decl_chain(oldidentifier_decl l1, oldidentifier_decl l2);
function_decl function_decl_chain(function_decl l1, function_decl l2);
implicit_decl implicit_decl_chain(implicit_decl l1, implicit_decl l2);
variable_decl variable_decl_chain(variable_decl l1, variable_decl l2);
field_decl field_decl_chain(field_decl l1, field_decl l2);
asttype asttype_chain(asttype l1, asttype l2);
typename typename_chain(typename l1, typename l2);
type_variable type_variable_chain(type_variable l1, type_variable l2);
typeof_expr typeof_expr_chain(typeof_expr l1, typeof_expr l2);
typeof_type typeof_type_chain(typeof_type l1, typeof_type l2);
attribute attribute_chain(attribute l1, attribute l2);
rid rid_chain(rid l1, rid l2);
user_qual user_qual_chain(user_qual l1, user_qual l2);
qualifier qualifier_chain(qualifier l1, qualifier l2);
tag_ref tag_ref_chain(tag_ref l1, tag_ref l2);
function_declarator function_declarator_chain(function_declarator l1, function_declarator l2);
pointer_declarator pointer_declarator_chain(pointer_declarator l1, pointer_declarator l2);
array_declarator array_declarator_chain(array_declarator l1, array_declarator l2);
identifier_declarator identifier_declarator_chain(identifier_declarator l1, identifier_declarator l2);
asm_stmt asm_stmt_chain(asm_stmt l1, asm_stmt l2);
compound_stmt compound_stmt_chain(compound_stmt l1, compound_stmt l2);
if_stmt if_stmt_chain(if_stmt l1, if_stmt l2);
labeled_stmt labeled_stmt_chain(labeled_stmt l1, labeled_stmt l2);
expression_stmt expression_stmt_chain(expression_stmt l1, expression_stmt l2);
breakable_stmt breakable_stmt_chain(breakable_stmt l1, breakable_stmt l2);
conditional_stmt conditional_stmt_chain(conditional_stmt l1, conditional_stmt l2);
switch_stmt switch_stmt_chain(switch_stmt l1, switch_stmt l2);
for_stmt for_stmt_chain(for_stmt l1, for_stmt l2);
break_stmt break_stmt_chain(break_stmt l1, break_stmt l2);
continue_stmt continue_stmt_chain(continue_stmt l1, continue_stmt l2);
return_stmt return_stmt_chain(return_stmt l1, return_stmt l2);
goto_stmt goto_stmt_chain(goto_stmt l1, goto_stmt l2);
computed_goto_stmt computed_goto_stmt_chain(computed_goto_stmt l1, computed_goto_stmt l2);
empty_stmt empty_stmt_chain(empty_stmt l1, empty_stmt l2);
assert_type_stmt assert_type_stmt_chain(assert_type_stmt l1, assert_type_stmt l2);
change_type_stmt change_type_stmt_chain(change_type_stmt l1, change_type_stmt l2);
deep_restrict_stmt deep_restrict_stmt_chain(deep_restrict_stmt l1, deep_restrict_stmt l2);
unary unary_chain(unary l1, unary l2);
binary binary_chain(binary l1, binary l2);
comma comma_chain(comma l1, comma l2);
sizeof_type sizeof_type_chain(sizeof_type l1, sizeof_type l2);
alignof_type alignof_type_chain(alignof_type l1, alignof_type l2);
label_address label_address_chain(label_address l1, label_address l2);
cast cast_chain(cast l1, cast l2);
cast_list cast_list_chain(cast_list l1, cast_list l2);
conditional conditional_chain(conditional l1, conditional l2);
identifier identifier_chain(identifier l1, identifier l2);
compound_expr compound_expr_chain(compound_expr l1, compound_expr l2);
function_call function_call_chain(function_call l1, function_call l2);
array_ref array_ref_chain(array_ref l1, array_ref l2);
field_ref field_ref_chain(field_ref l1, field_ref l2);
init_list init_list_chain(init_list l1, init_list l2);
init_index init_index_chain(init_index l1, init_index l2);
init_field init_field_chain(init_field l1, init_field l2);
lexical_cst lexical_cst_chain(lexical_cst l1, lexical_cst l2);
string_cst string_cst_chain(string_cst l1, string_cst l2);
string string_chain(string l1, string l2);
id_label id_label_chain(id_label l1, id_label l2);
case_label case_label_chain(case_label l1, case_label l2);
default_label default_label_chain(default_label l1, default_label l2);
word word_chain(word l1, word l2);
asm_operand asm_operand_chain(asm_operand l1, asm_operand l2);
error_decl error_decl_chain(error_decl l1, error_decl l2);
struct_ref struct_ref_chain(struct_ref l1, struct_ref l2);
union_ref union_ref_chain(union_ref l1, union_ref l2);
enum_ref enum_ref_chain(enum_ref l1, enum_ref l2);
error_stmt error_stmt_chain(error_stmt l1, error_stmt l2);
while_stmt while_stmt_chain(while_stmt l1, while_stmt l2);
dowhile_stmt dowhile_stmt_chain(dowhile_stmt l1, dowhile_stmt l2);
error_expr error_expr_chain(error_expr l1, error_expr l2);
dereference dereference_chain(dereference l1, dereference l2);
extension_expr extension_expr_chain(extension_expr l1, extension_expr l2);
sizeof_expr sizeof_expr_chain(sizeof_expr l1, sizeof_expr l2);
alignof_expr alignof_expr_chain(alignof_expr l1, alignof_expr l2);
realpart realpart_chain(realpart l1, realpart l2);
imagpart imagpart_chain(imagpart l1, imagpart l2);
address_of address_of_chain(address_of l1, address_of l2);
unary_minus unary_minus_chain(unary_minus l1, unary_minus l2);
unary_plus unary_plus_chain(unary_plus l1, unary_plus l2);
conjugate conjugate_chain(conjugate l1, conjugate l2);
preincrement preincrement_chain(preincrement l1, preincrement l2);
predecrement predecrement_chain(predecrement l1, predecrement l2);
postincrement postincrement_chain(postincrement l1, postincrement l2);
postdecrement postdecrement_chain(postdecrement l1, postdecrement l2);
bitnot bitnot_chain(bitnot l1, bitnot l2);
not not_chain(not l1, not l2);
plus plus_chain(plus l1, plus l2);
minus minus_chain(minus l1, minus l2);
times times_chain(times l1, times l2);
divide divide_chain(divide l1, divide l2);
modulo modulo_chain(modulo l1, modulo l2);
lshift lshift_chain(lshift l1, lshift l2);
rshift rshift_chain(rshift l1, rshift l2);
leq leq_chain(leq l1, leq l2);
geq geq_chain(geq l1, geq l2);
lt lt_chain(lt l1, lt l2);
gt gt_chain(gt l1, gt l2);
eq eq_chain(eq l1, eq l2);
ne ne_chain(ne l1, ne l2);
bitand bitand_chain(bitand l1, bitand l2);
bitor bitor_chain(bitor l1, bitor l2);
bitxor bitxor_chain(bitxor l1, bitxor l2);
andand andand_chain(andand l1, andand l2);
oror oror_chain(oror l1, oror l2);
assign assign_chain(assign l1, assign l2);
plus_assign plus_assign_chain(plus_assign l1, plus_assign l2);
minus_assign minus_assign_chain(minus_assign l1, minus_assign l2);
times_assign times_assign_chain(times_assign l1, times_assign l2);
divide_assign divide_assign_chain(divide_assign l1, divide_assign l2);
modulo_assign modulo_assign_chain(modulo_assign l1, modulo_assign l2);
lshift_assign lshift_assign_chain(lshift_assign l1, lshift_assign l2);
rshift_assign rshift_assign_chain(rshift_assign l1, rshift_assign l2);
bitand_assign bitand_assign_chain(bitand_assign l1, bitand_assign l2);
bitor_assign bitor_assign_chain(bitor_assign l1, bitor_assign l2);
bitxor_assign bitxor_assign_chain(bitxor_assign l1, bitxor_assign l2);
typedef struct AST_ast_generic
{
  ast_kind kind;
} *ast_generic;
extern declaration the_program;
unary newkind_unary(region r, ast_kind kind, location location, expression arg1);
binary newkind_binary(region r, ast_kind kind, location location,
                      expression arg1, expression arg2);
tag_ref newkind_tag_ref(region r, ast_kind kind, location location, word word1, attribute attributes, declaration fields, bool defined);
node last_node(node n);
int chain_length(node n);
node ast_chain(node l1, node l2);
void insert_before(node *list, node before, node n);
node ast_reverse(node l);
void AST_set_parents(node n);
void AST_print(node n);
typedef dd_list identifier_set; typedef dd_list_pos identifier_set_scanner; static inline identifier_set empty_identifier_set(region r) { return dd_new_list(r); } static inline identifier_set identifier_set_copy(region r, identifier_set s) { if (s == ((void *)0)) return ((void *)0); return dd_copy(r, s); } static inline bool identifier_set_empty(identifier_set s) { return s == ((void *)0) || ((!(dd_first((s)))->next)); } static inline bool identifier_set_member(int (*cmp)(identifier, identifier), identifier_set s, identifier elt) { return s != ((void *)0) && dd_search(s, (dd_cmp_fn) cmp, (void *) elt) != ((void *)0); } static inline int identifier_set_size(identifier_set s) { if (s == ((void *)0)) return 0; return dd_length(s); } static inline bool identifier_set_insert(region r, identifier_set *s, identifier elt) { *s = dd_fix_null(r, *s); dd_add_first(r, *s, (void *) elt); return 1; } static inline bool identifier_set_insert_last(region r, identifier_set *s, identifier elt) { *s = dd_fix_null(r, *s); dd_add_last(r, *s, (void *) elt); return 1; } static inline identifier_set identifier_set_union(identifier_set s1, identifier_set s2) { if (s1 == ((void *)0)) return s2; else if (s2 == ((void *)0)) return s1; dd_append(s1, s2); return s1; } static inline bool identifier_set_single(identifier_set s) { return identifier_set_size(s) == 1; } static inline void identifier_set_sort(int (*cmp)(identifier, identifier), identifier_set s) { if (s == ((void *)0)) return; dd_sort(s, (set_cmp_fn) cmp); } static inline void identifier_set_remove_dups(int (*cmp)(identifier, identifier), identifier_set s) { if (s == ((void *)0)) return; dd_remove_dups(s, (dd_cmp_fn)cmp); } static inline void identifier_set_scan(identifier_set s, identifier_set_scanner *ss) { if (s == ((void *)0)) *ss = ((void *)0); else *ss = dd_first(s); } static inline identifier identifier_set_next(identifier_set_scanner *ss) { identifier result; if (*ss == ((void *)0) || (!(*ss)->next)) return ((void *)0); result = ((identifier)((*ss)->data)); *ss = ((*ss)->next); return result; };
extern int flag_volatile;
extern int flag_volatile_global;
extern int flag_syntax_only;
extern int flag_pedantic_errors;
extern int flag_pack_struct;
extern int inhibit_warnings;
extern int extra_warnings;
extern int warnings_are_errors;
extern int warn_unused;
extern int warn_uninitialized;
extern int warn_shadow;
extern int error_shadow;
extern int warn_switch;
extern int warn_return_type;
extern int warn_cast_align;
extern int warn_id_clash;
extern unsigned id_clash_len;
extern int warn_larger_than;
extern unsigned larger_than_size;
extern int warn_inline;
extern int warn_aggregate_return;
extern int dollars_in_ident;
extern int flag_cond_mismatch;
extern int flag_no_asm;
extern int flag_hosted;
extern int warn_implicit;
extern int warn_write_strings;
extern int warn_pointer_arith;
extern int warn_strict_prototypes;
extern int warn_redundant_decls;
extern int warn_nested_externs;
extern int warn_cast_qual;
extern int warn_bad_function_cast;
extern int warn_traditional;
extern int warn_format;
extern int warn_char_subscripts;
extern int warn_conversion;
extern int warn_main;
extern int warn_multichar;
extern int flag_traditional;
extern int flag_allow_single_precision;
extern int warn_parentheses;
extern int warn_missing_braces;
extern int warn_sign_compare;
extern int mesg_implicit_function_declaration;
extern bool pedantic;
extern int warn_implicit_int;
extern int warn_missing_prototypes;
extern int warn_missing_declarations;
extern int quiet_flag;
extern int flag_signed_char;
extern int flag_short_enums;
extern int flag_signed_bitfields;
extern int explicit_flag_signed_bitfields;
extern int flag_parse_only;
extern int flag_pam_mode;
extern int flag_pam_html;
extern int flag_print_quals_graph;
extern int flag_strict_const;
extern int flag_print_results;
extern int flag_casts_preserve;
extern int flag_const_subtyping;
extern int flag_flow_sensitive;
extern int flag_poly;
extern int flag_aloc_subtyping;
extern int flag_force_flow_sensitive;
extern int flag_print_lin;
extern int flag_driver;
extern int flag_casts_warn;
extern int flag_ugly;
extern int flag_statistics;
extern int flag_print_stores;
extern int flag_confine_inf;
extern int flag_discover_scopes;
extern int flag_confine_inf_aggressive;
extern int flag_restrict_inf;
extern int flag_print_assert_type_failures;
int flag_strong_updates;
extern int flag_errors_only;
extern int flag_context_summary;
extern int flag_warn_dangerous_globals;
extern int flag_measure_consts;
extern int errorcount;
extern int warningcount;
void verror_with_file_and_line(const char *filename, int lineno,
                               const char *format, va_list args);
void verror_with_location(location l, const char *format, va_list args);
void verror_with_decl(declaration d, const char *format, va_list args);
void verror(const char *format, va_list args);
void error(const char *format, ...);
void error_with_decl(declaration d, const char *format, ...);
void error_with_location(location l, const char *format, ...);
void vfatal(const char *format, va_list args);
void fatal(const char *format, ...);
void vwarning_with_file_and_line(const char *filename, int lineno,
                                 const char *format, va_list args);
void vwarning_with_location(location l, const char *format, va_list args);
void vwarning_with_decl(declaration d, const char *format, va_list args);
void vwarning(const char *format, va_list args);
void warning(const char *format, ...);
void warning_with_file_and_line(const char *filename, int lineno,
                                const char *format, ...);
void warning_with_decl(declaration d, const char *format, ...);
void warning_with_location(location l, const char *format, ...);
void warning_or_error(bool iswarning, const char *format, ...);
void warning_or_error_with_file_and_line(bool iswarning,
                                         const char *filename, int lineno,
                                         const char *format, ...);
void warning_or_error_with_decl(bool iswarning, declaration d,
                                const char *format, ...);
void warning_or_error_with_location(bool iswarning, location l,
                                    const char *format, ...);
void pedwarn(const char *format, ...);
void pedwarn_with_decl(declaration d, const char *format, ...);
void pedwarn_with_location(location l, const char *format, ...);
extern char *progname;
extern int copy_argc;
extern char **copy_argv;
expression make_error_expr(location loc);
expression make_comma(location loc, expression elist);
expression make_dereference(location loc, expression e);
expression make_extension_expr(location loc, expression e);
expression make_unary(location loc, int unop, expression e);
expression make_label_address(location loc, id_label label);
expression make_sizeof_expr(location loc, expression e);
expression make_sizeof_type(location loc, asttype t);
expression make_alignof_expr(location loc, expression e);
expression make_alignof_type(location loc, asttype t);
expression make_cast(location loc, asttype t, expression e);
expression make_binary(location loc, int binop, expression e1, expression e2);
expression make_conditional(location loc, expression cond,
                            expression true, expression false);
expression make_assign(location loc, int assignop, expression left, expression right);
expression make_identifier(location loc, cstring id, bool maybe_implicit);
expression make_compound_expr(location loc, statement block);
expression make_function_call(location loc, expression fn, expression arglist);
expression make_va_arg(location loc, expression arg, asttype type);
expression make_array_ref(location loc, expression array, expression index);
expression make_field_ref(location loc, expression object, cstring field,
                          location cstring_loc);
expression make_field_indirectref(location loc, expression object,
                                  cstring field);
expression make_postincrement(location loc, expression e);
expression make_preincrement(location loc, expression e);
expression make_postdecrement(location loc, expression e);
expression make_predecrement(location loc, expression e);
string make_string(location loc, expression string_components);
bool check_assignment(type lhstype, type rhstype, expression rhs,
                      const char *context, data_declaration fundecl,
                      const char *funname, int parmnum);
bool check_conversion(type to, type from);
type default_conversion(expression e);
type default_conversion_for_assignment(expression e);
struct yystype {
  union {
    void *ptr;
    asm_operand asm_operand;
    asm_stmt asm_stmt;
    attribute attribute;
    lexical_cst constant;
    string_cst string_cst;
    declaration decl;
    declarator declarator;
    expression expr;
    id_label id_label;
    label label;
    node node;
    statement stmt;
    conditional_stmt cstmt;
    for_stmt for_stmt;
    string string;
    type_element telement;
    asttype type;
    word word;
    struct {
      location location;
      int i;
    } itoken;
    struct {
      location location;
      expression expr;
      int i;
    } iexpr;
    struct {
      statement stmt;
      int i;
    } istmt;
  } u;
  struct {
    location location;
    cstring id;
    data_declaration decl;
  } idtoken;
};
int yyparse(void) ;
extern region parse_region;
extern int unevaluated_expression;
int parse(char*);
struct known_cst {
  type type;
  cval cval;
};
known_cst make_unknown_cst(type t);
known_cst make_cst(cval c, type t);
known_cst make_address_cst(data_declaration ddecl, label_declaration ldecl,
                           largest_int offset, type t);
known_cst make_signed_cst(largest_int x, type t);
known_cst make_unsigned_cst(largest_uint x, type t);
lexical_cst fold_lexical_int(type itype, location loc, cstring tok,
                             bool iscomplex, largest_uint intvalue, bool overflow);
lexical_cst fold_lexical_real(type realtype, location loc, cstring tok);
lexical_cst fold_lexical_char(location loc, cstring tok,
                              bool wide_flag, int charvalue);
string_cst fold_lexical_string(location loc, cstring tok,
                               bool wide_flag, wchar_array stringvalue);
known_cst fold_label_address(expression e);
known_cst fold_sizeof(expression e, type stype);
known_cst fold_alignof(expression e, type atype);
known_cst fold_cast(expression e);
known_cst fold_address_of(expression e);
known_cst fold_unary(expression e);
known_cst fold_binary(type restype, expression e);
known_cst fold_conditional(expression e);
known_cst fold_identifier(expression e, data_declaration decl);
known_cst fold_add(type restype, known_cst c1, known_cst c2);
known_cst foldaddress_identifier(expression e, data_declaration decl);
known_cst foldaddress_string(string s);
known_cst foldaddress_field_ref(known_cst object, field_declaration fdecl);
bool definite_null(expression e);
bool definite_zero(expression e);
bool definite_one(expression e);
bool is_zero_constant(known_cst c);
bool is_one_constant(known_cst c);
void constant_overflow_warning(known_cst c);
void unparse(FILE *to, declaration program) ;
void unparse_start(FILE *to);
void unparse_end(void) ;
struct Location output_location(void);
void output(char *format, ...) __attribute__((format (printf, 1, 2)));
void outputln(char *format, ...) __attribute__((format (printf, 1, 2)));
const char *binary_op_name(ast_kind kind);
void prt_toplevel_declaration(declaration d);
void prt_nelements(expression array);
void prt_expression(expression e, int context_priority);
void prt_regionof_name(const char *name);
void prt_regionof(expression e);
extern type builtin_va_list_type;
extern data_declaration builtin_va_arg_decl;
void pending_xref_error(void);
void init_semantics(void);
extern environment current_env;
data_declaration lookup_id(const char *s, bool this_level_only);
data_declaration lookup_global_id(const char *s);
void shadow_tag(type_element elements);
void shadow_tag_warned(type_element elements, int warned);
declarator make_function_declarator(location l, declarator d, declaration parms, type_element quals);
bool start_function(type_element elements, declarator d, attribute attribs,
                    bool nested);
void store_parm_decls(declaration old_parms);
declaration finish_function(statement body);
extern function_decl current_function_decl;
void pushlevel(bool parm_level);
environment poplevel(void);
enum { var_typedef, var_register, var_normal, var_static, var_extern };
void split_type_elements(type_element tlist, type_element *declspecs,
                         attribute *attributes);
declaration start_decl(declarator d, asm_stmt astmt, type_element elements,
                       bool initialised, attribute extra_attributes,
                       attribute attributes);
declaration finish_decl(declaration decl, expression init);
declaration declare_parameter(declarator d, type_element elements,
                              attribute extra_attributes,
                              attribute attributes,
                              bool abstract);
void mark_forward_parameters(declaration parms);
declaration declare_old_parameter(location l, cstring id);
type_element start_struct(location l, ast_kind skind, word tag);
type_element finish_struct(type_element t, declaration fields,
                           attribute attribs);
type_element xref_tag(location l, ast_kind skind, word tag);
type_element start_enum(location l, word tag);
type_element finish_enum(type_element t, declaration names,
                         attribute attribs);
declaration make_field(declarator d, expression bitfield,
                       type_element elements, attribute extra_attributes,
                       attribute attributes);
declaration make_enumerator(location loc, cstring id, expression value);
asttype make_type(type_element elements, declarator d);
int save_directive(char *directive);
char *rid_name(rid r);
statement chain_with_labels(statement l1, statement l2);
const char *declarator_name(declarator d);
data_declaration lookup_id(const char *s, bool this_level_only);
extern function_decl current_function_decl;
data_declaration implicitly_declare(identifier fnid);
void push_label_level(void);
void pop_label_level(void);
void init_data_declaration(data_declaration dd, declaration ast,
                           const char *name, type t);
data_declaration declare(environment env, data_declaration from,
                         bool ignore_shadow);
data_declaration declare_string(const char *name, bool wide, size_t length);
environment new_environment(region r, environment parent, bool parm_level);
tag_declaration declare_tag(tag_ref t);
tag_declaration lookup_tag(tag_ref t, bool this_level_only);
tag_declaration declare_global_tag(tag_ref t);
tag_declaration lookup_global_tag(tag_ref t);
void check_condition(const char *context, expression e);
void check_switch(expression e);
void check_void_return(void);
void check_return(expression e);
void check_computed_goto(expression e);
void lookup_label(id_label label);
void use_label(id_label label);
void define_label(id_label label);
void declare_label(id_label label);
void check_labels(void);
void check_case(label case_label);
void check_default(label default_label);
void check_break(statement break_statement);
void check_continue(statement continue_statement);
void push_loop(breakable_stmt loop_statement);
void pop_loop(void);
label_declaration new_label_declaration(region r, const char *name, id_label firstuse);
data_declaration get_parameter(declaration d);
function_declarator get_fdeclarator(declarator d);
bool oldstyle_function(function_decl fn);
bool is_localvar(expression e);
compound_stmt parent_block(node n);
function_decl parent_function(node n);
expression expression_of_stmt(compound_expr ce);
bool expression_used(expression e);
bool is_assignment(void *e);
bool is_increment(void *e);
data_declaration base_identifier(data_declaration d);
bool same_function(data_declaration d1, data_declaration d2);
bool call_to(data_declaration fnd, function_call fce);
expression ignore_fields(expression e);
bool zero_expression(expression e);
expression build_int_constant(region r, location loc, type t, largest_int c);
expression build_uint_constant(region r, location loc, type t, largest_uint c);
expression build_identifier(region r, location loc, data_declaration id);
cval value_of_enumerator(enumerator e);
char *string_to_charp(region r, string s);
static bool compatible_pointer_targets(type ttl, type ttr, bool pedantic)
{
  int val;
  val = type_compatible_unqualified(ttl, ttr);
  if (val == 2 && pedantic)
    pedwarn("types are not quite compatible");
  return val != 0;
}
static bool compatible_pointer_types(type tl, type tr)
{
  return compatible_pointer_targets(type_points_to(tl), type_points_to(tr),
                                    pedantic);
}
static void warn_for_assignment(const char *msg, const char *opname,
                                const char *function, int argnum)
{
  static char argstring[] = "passing arg %d of `%s'";
  static char argnofun[] = "passing arg %d";
  if (opname == 0)
    {
      char *tmpname;
      if (function)
        {
          tmpname = (char *)__builtin_alloca (strlen(function) + sizeof(argstring) + 25 + 1);
          sprintf(tmpname, argstring, argnum, function);
        }
      else
        {
          tmpname = (char *)__builtin_alloca (sizeof(argnofun) + 25 + 1);
          sprintf(tmpname, argnofun, argnum);
        }
      opname = tmpname;
    }
  pedwarn(msg, opname);
}
static void incomplete_type_error(expression e, type t)
{
  if (t == error_type)
    return;
  if (e && ((e)->kind >= kind_identifier && (e)->kind <= postkind_identifier))
    error("`%s' has an incomplete type", ({ast_generic tEmPcast = (ast_generic)(e); if (tEmPcast) ((void) ((((tEmPcast)->kind >= kind_identifier && (tEmPcast)->kind <= postkind_identifier)) ? 0 : (__assert_fail ("((tEmPcast)->kind >= kind_identifier && (tEmPcast)->kind <= postkind_identifier)", "expr.c", 104, __PRETTY_FUNCTION__), 0))); (identifier)(tEmPcast); })->cstring.data);
  else
    {
      while (type_array(t) && type_array_size(t))
        t = type_array_of(t);
      if (type_struct(t))
        error("invalid use of undefined type `struct %s'", type_tag(t)->name);
      else if (type_union(t))
        error("invalid use of undefined type `union %s'", type_tag(t)->name);
      else if (type_enum(t))
        error("invalid use of undefined type `enum %s'", type_tag(t)->name);
      else if (type_void(t))
        error("invalid use of void expression");
      else if (type_array(t))
        error("invalid use of array with unspecified bounds");
      else
        ((void) ((0) ? 0 : (__assert_fail ("0", "expr.c", 121, __PRETTY_FUNCTION__), 0)));
    }
}
static type require_complete_type(expression e, type etype)
{
  if (!type_incomplete(etype))
    return e->type;
  incomplete_type_error(e, etype);
  return error_type;
}
type default_conversion(expression e)
{
  type from = e->type;
  if (type_enum(from))
    from = type_tag(from)->reptype;
  if (type_smallerthanint(from))
    {
      if (flag_traditional && type_unsigned(from))
        return unsigned_int_type;
      else
        return int_type;
    }
  if (flag_traditional && !flag_allow_single_precision && type_float(from))
    return double_type;
  if (type_void(from))
    {
      error("void value not ignored as it ought to be");
      return error_type;
    }
  if (type_function(from))
    {
      ((void) ((!e->cst) ? 0 : (__assert_fail ("!e->cst", "expr.c", 163, __PRETTY_FUNCTION__), 0)));
      e->cst = e->static_address;
      return make_pointer_type(from);
    }
  if (type_array(from))
    {
      if (!e->lvalue)
        {
          error("invalid use of non-lvalue array");
          return error_type;
        }
      ((void) ((!e->cst) ? 0 : (__assert_fail ("!e->cst", "expr.c", 175, __PRETTY_FUNCTION__), 0)));
      e->cst = e->static_address;
      e->lvalue = 0;
      return make_pointer_type(type_array_of(from));
    }
  return from;
}
type default_conversion_for_assignment(expression e)
{
  if (type_array(e->type) || type_function(e->type))
    return default_conversion(e);
  else
    return e->type;
}
static void readonly_warning(expression e, char *context)
{
  char buf[80];
  (__extension__ (__builtin_constant_p (context) ? (((size_t)(const void *)((context) + 1) - (size_t)(const void *)(context) == 1) && strlen (context) + 1 <= 8 ? __strcpy_small (buf, __extension__ (((__const unsigned char *) (__const char *) (context))[0 + 1] << 8 | ((__const unsigned char *) (__const char *) (context))[0]), __extension__ (((__const unsigned char *) (__const char *) (context))[4 + 1] << 8 | ((__const unsigned char *) (__const char *) (context))[4]), __extension__ (((((__const unsigned char *) (__const char *) (context))[0 + 3] << 8 | ((__const unsigned char *) (__const char *) (context))[0 + 2]) << 8 | ((__const unsigned char *) (__const char *) (context))[0 + 1]) << 8 | ((__const unsigned char *) (__const char *) (context))[0]), __extension__ (((((__const unsigned char *) (__const char *) (context))[4 + 3] << 8 | ((__const unsigned char *) (__const char *) (context))[4 + 2]) << 8 | ((__const unsigned char *) (__const char *) (context))[4 + 1]) << 8 | ((__const unsigned char *) (__const char *) (context))[4]), strlen (context) + 1) : (char *) memcpy (buf, context, strlen (context) + 1)) : strcpy (buf, context)));
  if (((e)->kind >= kind_field_ref && (e)->kind <= postkind_field_ref))
    {
      field_ref field = ({ast_generic tEmPcast = (ast_generic)(e); if (tEmPcast) ((void) ((((tEmPcast)->kind >= kind_field_ref && (tEmPcast)->kind <= postkind_field_ref)) ? 0 : (__assert_fail ("((tEmPcast)->kind >= kind_field_ref && (tEmPcast)->kind <= postkind_field_ref)", "expr.c", 201, __PRETTY_FUNCTION__), 0))); (field_ref)(tEmPcast); });
      if (type_readonly(field->arg1->type))
        readonly_warning(field->arg1, context);
      else
        {
          strcat(buf, " of read-only member `%s'");
          pedwarn(buf, field->cstring.data);
        }
    }
  else if (((e)->kind >= kind_identifier && (e)->kind <= postkind_identifier))
    {
      strcat(buf, " of read-only variable `%s'");
      pedwarn(buf, ({ast_generic tEmPcast = (ast_generic)(e); if (tEmPcast) ((void) ((((tEmPcast)->kind >= kind_identifier && (tEmPcast)->kind <= postkind_identifier)) ? 0 : (__assert_fail ("((tEmPcast)->kind >= kind_identifier && (tEmPcast)->kind <= postkind_identifier)", "expr.c", 214, __PRETTY_FUNCTION__), 0))); (identifier)(tEmPcast); })->cstring.data);
    }
  else
    pedwarn ("%s of read-only location", buf);
}
static bool check_writable_lvalue(expression e, char *context)
{
  if (!e->lvalue || type_array(e->type))
    {
      error("invalid lvalue in %s", context);
      return 0;
    }
  if (type_readonly(e->type))
    readonly_warning(e, context);
  return 1;
}
bool check_conversion(type to, type from)
{
  if (type_equal_unqualified(to, from))
    return 1;
  if (to == error_type || from == error_type)
    return 0;
  if (type_void(from))
    {
      error("void value not ignored as it ought to be");
      return 0;
    }
  if (type_void(to))
    return 1;
  if (type_integer(to))
    {
      if (!type_scalar(from))
        {
          error("aggregate value used where an integer was expected");
          return 0;
        }
    }
  else if (type_pointer(to))
    {
      if (!(type_integer(from) || type_pointer(from)))
        {
          error("cannot convert to a pointer type");
          return 0;
        }
    }
  else if (type_floating(to))
    {
      if (type_pointer(from))
        {
          error("pointer value used where a floating point value was expected");
          return 0;
        }
      else if (!type_arithmetic(from))
        {
          error("aggregate value used where a float was expected");
          return 0;
        }
    }
  else if (type_complex(to))
    {
      if (type_pointer(from))
        {
          error("pointer value used where a complex was expected");
          return 0;
        }
      else if (!type_arithmetic(from))
        {
          error("aggregate value used where a complex was expected");
          return 0;
        }
    }
  else
    {
      error("conversion to non-scalar type requested");
      return 0;
    }
  return 1;
}
static bool assignable_pointer_targets(type tt1, type tt2, bool pedantic)
{
  return type_void(tt1) || type_void(tt2)
    || compatible_pointer_targets(tt1, tt2, pedantic);
}
static void ptrconversion_warnings(type ttl, type ttr, expression rhs,
                                   const char *context,
                                   const char *funname, int parmnum,
                                   bool pedantic)
{
  if (pedantic
      && ((type_void(ttl) && type_function(ttr)) ||
          (type_function(ttl) && type_void(ttr) &&
           !(rhs && definite_null(rhs)))))
    warn_for_assignment("ANSI forbids %s between function pointer and `void *'",
                        context, funname, parmnum);
  else if (type_function(ttl) && type_function(ttr))
    {
      if (type_const(ttl) && !type_const(ttr))
        warn_for_assignment("%s makes `const *' function pointer from non-const",
                            context, funname, parmnum);
      if (type_volatile(ttl) && !type_volatile(ttr))
        warn_for_assignment("%s makes `volatile *' function pointer from non-volatile",
                            context, funname, parmnum);
    }
  else if (!type_function(ttl) && !type_function(ttr))
    {
      if (!type_const(ttl) && type_const(ttr))
        warn_for_assignment("%s discards `const' from pointer target type",
                            context, funname, parmnum);
      if (!type_volatile(ttl) && type_volatile(ttr))
        warn_for_assignment("%s discards `volatile' from pointer target type",
                            context, funname, parmnum);
      if (!assignable_pointer_targets(ttl, ttr, 0) && pedantic)
        warn_for_assignment("pointer targets in %s differ in signedness",
                            context, funname, parmnum);
    }
}
bool check_assignment(type lhstype, type rhstype, expression rhs,
                      const char *context, data_declaration fundecl,
                      const char *funname, int parmnum)
{
  bool zerorhs = rhs && definite_zero(rhs);
  if (lhstype == error_type || rhstype == error_type)
    return 0;
  if (type_void(rhstype))
    {
      error("void value not ignored as it ought to be");
      return 0;
    }
  if (type_equal_unqualified(lhstype, rhstype))
    return 1;
  if (type_arithmetic(lhstype) && type_arithmetic(rhstype))
    {
      if (rhs)
        constant_overflow_warning(rhs->cst);
      return check_conversion(lhstype, rhstype);
    }
  if (parmnum && (type_qualifiers(lhstype) & transparent_qualifier))
    {
      tag_declaration tag = type_tag(lhstype);
      field_declaration fields, marginal_field = ((void *)0);
      for (fields = tag->fieldlist; fields; fields = fields->next)
        {
          type ft = fields->type;
          if (type_compatible(ft, rhstype))
            break;
          if (!type_pointer(ft))
            continue;
          if (type_pointer(rhstype))
            {
              type ttl = type_points_to(ft), ttr = type_points_to(rhstype);
              bool goodmatch = assignable_pointer_targets(ttl, ttr, 0);
              if (goodmatch)
                {
                  if ((type_function(ttr) && type_function(ttl))
                      ? ((!type_const(ttl) | type_const(ttr))
                         & (!type_volatile(ttl) | type_volatile(ttr)))
                      : ((type_const(ttl) | !type_const(ttr))
                         & (type_volatile(ttl) | !type_volatile(ttr))))
                    break;
                  if (!marginal_field)
                    marginal_field = fields;
                }
            }
          if (zerorhs)
            break;
        }
      if (fields || marginal_field)
        {
          if (!fields)
            {
              type ttl = type_points_to(marginal_field->type),
                ttr = type_points_to(rhstype);
              ptrconversion_warnings(ttl, ttr, rhs, context, funname, parmnum,
                                     0);
            }
          if (pedantic && !(fundecl && fundecl->in_system_header))
            pedwarn("ANSI C prohibits argument conversion to union type");
          return 1;
        }
    }
  if (type_pointer(lhstype) && type_pointer(rhstype))
    {
      type ttl = type_points_to(lhstype), ttr = type_points_to(rhstype);
      bool goodmatch = assignable_pointer_targets(ttl, ttr, pedantic);
      if (goodmatch || (type_equal_unqualified(make_unsigned_type(ttl),
                                               make_unsigned_type(ttr))))
        ptrconversion_warnings(ttl, ttr, rhs, context, funname, parmnum,
                               pedantic);
      else
        warn_for_assignment("%s from incompatible pointer type",
                            context, funname, parmnum);
      return check_conversion(lhstype, rhstype);
    }
  else if (type_pointer(lhstype) && type_integral(rhstype))
    {
      if (!zerorhs)
        warn_for_assignment("%s makes pointer from integer without a cast",
                            context, funname, parmnum);
      return check_conversion(lhstype, rhstype);
    }
  else if (type_integral(lhstype) && type_pointer(rhstype))
    {
      warn_for_assignment("%s makes integer from pointer without a cast",
                          context, funname, parmnum);
      return check_conversion(lhstype, rhstype);
    }
  if (!context)
    if (funname)
      error("incompatible type for argument %d of `%s'", parmnum, funname);
    else
      error("incompatible type for argument %d of indirect function call",
            parmnum);
  else
    error("incompatible types in %s", context);
  return 0;
}
expression make_error_expr(location loc)
{
  expression result = ({ast_generic tEmPcast = (ast_generic)(new_error_expr(parse_region, loc)); if (tEmPcast) ((void) ((((tEmPcast)->kind >= kind_expression && (tEmPcast)->kind <= postkind_expression)) ? 0 : (__assert_fail ("((tEmPcast)->kind >= kind_expression && (tEmPcast)->kind <= postkind_expression)", "expr.c", 493, __PRETTY_FUNCTION__), 0))); (expression)(tEmPcast); });
  result->type = error_type;
  return result;
}
expression make_comma(location loc, expression elist)
{
  expression result = ({ast_generic tEmPcast = (ast_generic)(new_comma(parse_region, loc, elist)); if (tEmPcast) ((void) ((((tEmPcast)->kind >= kind_expression && (tEmPcast)->kind <= postkind_expression)) ? 0 : (__assert_fail ("((tEmPcast)->kind >= kind_expression && (tEmPcast)->kind <= postkind_expression)", "expr.c", 502, __PRETTY_FUNCTION__), 0))); (expression)(tEmPcast); });
  expression e;
  for (e = (elist); e; e = ({ast_generic tEmPcast = (ast_generic)(e->next); if (tEmPcast) ((void) ((((tEmPcast)->kind >= kind_expression && (tEmPcast)->kind <= postkind_expression)) ? 0 : (__assert_fail ("((tEmPcast)->kind >= kind_expression && (tEmPcast)->kind <= postkind_expression)", "expr.c", 505, __PRETTY_FUNCTION__), 0))); (expression)(tEmPcast); }))
    if (e->next)
      {
      }
    else
      {
        if (type_array(e->type))
          result->type = default_conversion(e);
        else
          result->type = e->type;
        if (!pedantic)
          {
            result->lvalue = e->lvalue;
            result->isregister = e->isregister;
            result->bitfield = e->bitfield;
          }
      }
  return result;
}
static void check_dereference(expression result, type dereferenced,
                              const char *errorstring)
{
  if (type_pointer(dereferenced))
    {
      type t = type_points_to(dereferenced);
      result->type = t;
      if (type_void(t) && unevaluated_expression == 0)
        warning("dereferencing `void *' pointer");
      result->side_effects |= type_volatile(t) || flag_volatile;
    }
  else
    {
      result->type = error_type;
      if (dereferenced != error_type)
        error("invalid type argument of `%s'", errorstring);
    }
  result->lvalue = 1;
}
expression make_dereference(location loc, expression e)
{
  expression result = ({ast_generic tEmPcast = (ast_generic)(new_dereference(parse_region, loc, e)); if (tEmPcast) ((void) ((((tEmPcast)->kind >= kind_expression && (tEmPcast)->kind <= postkind_expression)) ? 0 : (__assert_fail ("((tEmPcast)->kind >= kind_expression && (tEmPcast)->kind <= postkind_expression)", "expr.c", 574, __PRETTY_FUNCTION__), 0))); (expression)(tEmPcast); });
  result->side_effects = e->side_effects;
  check_dereference(result, default_conversion(e), "unary *");
  result->static_address = e->cst;
  return result;
}
expression make_extension_expr(location loc, expression e)
{
  expression result = ({ast_generic tEmPcast = (ast_generic)(new_extension_expr(parse_region, loc, e)); if (tEmPcast) ((void) ((((tEmPcast)->kind >= kind_expression && (tEmPcast)->kind <= postkind_expression)) ? 0 : (__assert_fail ("((tEmPcast)->kind >= kind_expression && (tEmPcast)->kind <= postkind_expression)", "expr.c", 585, __PRETTY_FUNCTION__), 0))); (expression)(tEmPcast); });
  result->type = e->type;
  result->lvalue = e->lvalue;
  result->side_effects = e->side_effects;
  result->cst = e->cst;
  result->bitfield = e->bitfield;
  result->isregister = e->isregister;
  result->static_address = e->static_address;
  return result;
}
expression make_address_of(location loc, expression e)
{
  expression result = ({ast_generic tEmPcast = (ast_generic)(new_address_of(parse_region, loc, e)); if (tEmPcast) ((void) ((((tEmPcast)->kind >= kind_expression && (tEmPcast)->kind <= postkind_expression)) ? 0 : (__assert_fail ("((tEmPcast)->kind >= kind_expression && (tEmPcast)->kind <= postkind_expression)", "expr.c", 600, __PRETTY_FUNCTION__), 0))); (expression)(tEmPcast); });
  result->type = error_type;
  if (e->type == error_type)
    ;
  else if (e->bitfield)
    error("attempt to take address of a bit-field structure member");
  else
    {
      if (e->isregister)
        pedwarn("address of a register variable requested");
      if (!(type_function(e->type) || e->lvalue))
        error("invalid lvalue in unary `&'");
      result->type = make_pointer_type(e->type);
      result->cst = e->static_address;
    }
  return result;
}
expression make_unary(location loc, int unop, expression e)
{
  switch (unop)
    {
    case kind_address_of:
      return make_address_of(loc, e);
    case kind_preincrement:
      return make_preincrement(loc, e);
    case kind_predecrement:
      return make_predecrement(loc, e);
    default:
      {
        expression result = ({ast_generic tEmPcast = (ast_generic)(newkind_unary(parse_region, unop, loc, e)); if (tEmPcast) ((void) ((((tEmPcast)->kind >= kind_expression && (tEmPcast)->kind <= postkind_expression)) ? 0 : (__assert_fail ("((tEmPcast)->kind >= kind_expression && (tEmPcast)->kind <= postkind_expression)", "expr.c", 634, __PRETTY_FUNCTION__), 0))); (expression)(tEmPcast); });
        type etype = default_conversion(e);
        const char *errstring = ((void *)0);
        if (etype == error_type)
          result->type = error_type;
        else
          {
            switch (unop)
              {
              case kind_unary_plus:
                if (!type_arithmetic(etype))
                  errstring = "wrong type argument to unary plus";
                result->lvalue = e->lvalue;
                break;
              case kind_unary_minus:
                if (!type_arithmetic(etype))
                  errstring = "wrong type argument to unary minus";
                break;
              case kind_bitnot:
                if (type_complex(etype))
                  result->kind = kind_conjugate;
                else if (!type_integer(etype))
                  errstring = "wrong type argument to bit-complement";
                break;
              case kind_not:
                if (!type_scalar(etype))
                  errstring = "wrong type argument to unary exclamation mark";
                else
                  etype = int_type;
                break;
              case kind_realpart: case kind_imagpart:
                if (!type_arithmetic(etype))
                  if (unop == kind_realpart)
                    errstring = "wrong type argument to __real__";
                  else
                    errstring = "wrong type argument to __imag__";
                else
                  etype = type_complex(etype) ? make_base_type(etype) : etype;
                break;
              default:
                ((void) ((0) ? 0 : (__assert_fail ("0", "expr.c", 675, __PRETTY_FUNCTION__), 0)));
              }
            if (errstring)
              {
                error(errstring);
                result->type = error_type;
              }
            else
              {
                result->type = etype;
                result->cst = fold_unary(result);
              }
          }
        return result;
      }
    }
}
expression make_label_address(location loc, id_label label)
{
  expression result = ({ast_generic tEmPcast = (ast_generic)(new_label_address(parse_region, loc, label)); if (tEmPcast) ((void) ((((tEmPcast)->kind >= kind_expression && (tEmPcast)->kind <= postkind_expression)) ? 0 : (__assert_fail ("((tEmPcast)->kind >= kind_expression && (tEmPcast)->kind <= postkind_expression)", "expr.c", 695, __PRETTY_FUNCTION__), 0))); (expression)(tEmPcast); });
  use_label(label);
  result->type = ptr_void_type;
  result->cst = fold_label_address(result);
  if (pedantic)
    pedwarn("ANSI C forbids `&&'");
  return result;
}
void check_sizeof(expression result, type stype)
{
  if (type_function(stype))
    {
      if (pedantic || warn_pointer_arith)
        pedwarn("sizeof applied to a function type");
    }
  else if (type_void(stype))
    {
      if (pedantic || warn_pointer_arith)
        pedwarn("sizeof applied to a void type");
    }
  else if (type_incomplete(stype))
    error("sizeof applied to an incomplete type");
  result->type = size_t_type;
  result->cst = fold_sizeof(result, stype);
}
expression make_sizeof_expr(location loc, expression e)
{
  expression result = ({ast_generic tEmPcast = (ast_generic)(new_sizeof_expr(parse_region, loc, e)); if (tEmPcast) ((void) ((((tEmPcast)->kind >= kind_expression && (tEmPcast)->kind <= postkind_expression)) ? 0 : (__assert_fail ("((tEmPcast)->kind >= kind_expression && (tEmPcast)->kind <= postkind_expression)", "expr.c", 729, __PRETTY_FUNCTION__), 0))); (expression)(tEmPcast); });
  check_sizeof(result, e->type);
  return result;
}
expression make_sizeof_type(location loc, asttype t)
{
  expression result = ({ast_generic tEmPcast = (ast_generic)(new_sizeof_type(parse_region, loc, t)); if (tEmPcast) ((void) ((((tEmPcast)->kind >= kind_expression && (tEmPcast)->kind <= postkind_expression)) ? 0 : (__assert_fail ("((tEmPcast)->kind >= kind_expression && (tEmPcast)->kind <= postkind_expression)", "expr.c", 736, __PRETTY_FUNCTION__), 0))); (expression)(tEmPcast); });
  check_sizeof(result, t->type);
  return result;
}
expression make_alignof_expr(location loc, expression e)
{
  expression result = ({ast_generic tEmPcast = (ast_generic)(new_alignof_expr(parse_region, loc, e)); if (tEmPcast) ((void) ((((tEmPcast)->kind >= kind_expression && (tEmPcast)->kind <= postkind_expression)) ? 0 : (__assert_fail ("((tEmPcast)->kind >= kind_expression && (tEmPcast)->kind <= postkind_expression)", "expr.c", 743, __PRETTY_FUNCTION__), 0))); (expression)(tEmPcast); });
  result->type = size_t_type;
  result->cst = fold_alignof(result, e->type);
  return result;
}
expression make_alignof_type(location loc, asttype t)
{
  expression result = ({ast_generic tEmPcast = (ast_generic)(new_alignof_type(parse_region, loc, t)); if (tEmPcast) ((void) ((((tEmPcast)->kind >= kind_expression && (tEmPcast)->kind <= postkind_expression)) ? 0 : (__assert_fail ("((tEmPcast)->kind >= kind_expression && (tEmPcast)->kind <= postkind_expression)", "expr.c", 753, __PRETTY_FUNCTION__), 0))); (expression)(tEmPcast); });
  result->type = size_t_type;
  result->cst = fold_alignof(result, t->type);
  return result;
}
expression make_cast(location loc, asttype t, expression e)
{
  expression result = ({ast_generic tEmPcast = (ast_generic)(new_cast(parse_region, loc, e, t)); if (tEmPcast) ((void) ((((tEmPcast)->kind >= kind_expression && (tEmPcast)->kind <= postkind_expression)) ? 0 : (__assert_fail ("((tEmPcast)->kind >= kind_expression && (tEmPcast)->kind <= postkind_expression)", "expr.c", 763, __PRETTY_FUNCTION__), 0))); (expression)(tEmPcast); });
  type castto = t->type;
  if (castto == error_type || type_void(castto))
    ;
  else if (type_array(castto))
    {
      error("cast specifies array type");
      castto = error_type;
    }
  else if (type_function(castto))
    {
      error("cast specifies function type");
      castto = error_type;
    }
  else if (type_equal_unqualified(castto, e->type))
    {
      if (pedantic && type_aggregate(castto))
        pedwarn("ANSI C forbids casting nonscalar to the same type");
    }
  else
    {
      type etype = e->type;
      if (type_function(etype) || type_array(etype))
        etype = default_conversion(e);
      if (type_union(castto))
        {
          tag_declaration utag = type_tag(castto);
          field_declaration ufield;
          for (ufield = utag->fieldlist; ufield; ufield = ufield->next)
            if (ufield->name && type_equal_unqualified(ufield->type, etype))
              {
                if (pedantic)
                  pedwarn("ANSI C forbids casts to union type");
                break;
              }
          if (!ufield)
            error("cast to union type from type not present in union");
        }
      else
        {
          if (warn_cast_qual && type_pointer(etype) && type_pointer(castto))
            {
              type ep = type_points_to(etype), cp = type_points_to(castto);
              if (type_volatile(ep) && !type_volatile(cp))
                pedwarn("cast discards `volatile' from pointer target type");
              if (type_const(ep) && !type_const(cp))
                pedwarn("cast discards `const' from pointer target type");
            }
          if (warn_bad_function_cast && ((e)->kind >= kind_function_call && (e)->kind <= postkind_function_call) &&
              !type_equal_unqualified(castto, etype))
            warning ("cast does not match function type");
          if (!check_conversion(castto, etype))
            castto = error_type;
        }
    }
  result->lvalue = !pedantic && e->lvalue;
  result->isregister = e->isregister;
  result->bitfield = e->bitfield;
  result->static_address = e->static_address;
  result->type = castto;
  if (castto != error_type)
    result->cst = fold_cast(result);
  return result;
}
type pointer_int_sum(type ptype, type itype)
{
  type pointed = type_points_to(ptype);
  if (type_void(pointed))
    {
      if (pedantic || warn_pointer_arith)
        pedwarn("pointer of type `void *' used in arithmetic");
    }
  else if (type_function(pointed))
    {
      if (pedantic || warn_pointer_arith)
        pedwarn("pointer to a function used in arithmetic");
    }
  else if (type_incomplete(pointed))
    error("arithmetic on pointer to an incomplete type");
  return ptype;
}
bool valid_compare(type t1, type t2, expression e1)
{
  if (type_void(type_points_to(t1)))
    {
      if (pedantic && type_function(type_points_to(t2)) && !definite_null(e1))
        pedwarn("ANSI C forbids comparison of `void *' with function pointer");
      return 1;
    }
  return 0;
}
type check_binary(int binop, expression e1, expression e2)
{
  type t1 = default_conversion(e1), t2 = default_conversion(e2);
  type rtype = ((void *)0);
  bool common = 0;
  if (t1 == error_type || t2 == error_type)
    rtype = error_type;
  else switch(binop)
    {
    case kind_plus:
      if (type_pointer(t1) && type_integer(t2))
        rtype = pointer_int_sum(t1, t2);
      else if (type_pointer(t2) && type_integer(t1))
        rtype = pointer_int_sum(t2, t1);
      else
        common = 1;
      break;
    case kind_minus:
      if (type_pointer(t1) && type_integer(t2))
        rtype = pointer_int_sum(t1, t2);
      else if (type_pointer(t1) && type_pointer(t2) &&
               compatible_pointer_types(t1, t2))
        rtype = ptrdiff_t_type;
      else
        common = 1;
      break;
    case kind_plus_assign: case kind_minus_assign:
      if (type_pointer(t1) && type_integer(t2))
        rtype = pointer_int_sum(t1, t2);
      else
        common = 1;
      break;
    case kind_times: case kind_divide:
    case kind_times_assign: case kind_divide_assign:
      common = 1;
      break;
    case kind_modulo: case kind_bitand: case kind_bitor: case kind_bitxor:
    case kind_lshift: case kind_rshift:
    case kind_modulo_assign: case kind_bitand_assign: case kind_bitor_assign:
    case kind_bitxor_assign: case kind_lshift_assign: case kind_rshift_assign:
      if (type_integer(t1) && type_integer(t2))
        rtype = common_type(t1, t2);
      break;
    case kind_leq: case kind_geq: case kind_lt: case kind_gt:
      rtype = int_type;
      if (type_real(t1) && type_real(t2))
        ;
      else if (type_pointer(t1) && type_pointer(t2))
        {
          if (compatible_pointer_types(t1, t2))
            {
              if (type_incomplete(t1) != type_incomplete(t2))
                pedwarn("comparison of complete and incomplete pointers");
              else if (pedantic && type_function(type_points_to(t1)))
                pedwarn("ANSI C forbids ordered comparisons of pointers to functions");
            }
          else
            pedwarn("comparison of distinct pointer types lacks a cast");
        }
      else if ((type_pointer(t1) && definite_zero(e2)) ||
               (type_pointer(t2) && definite_zero(e1)))
        {
          if (pedantic || extra_warnings)
            pedwarn("ordered comparison of pointer with integer zero");
        }
      else if ((type_pointer(t1) && type_integer(t2)) ||
               (type_pointer(t2) && type_integer(t1)))
        {
          if (!flag_traditional)
            pedwarn("comparison between pointer and integer");
        }
      else
        rtype = ((void *)0);
      break;
    case kind_eq: case kind_ne:
      rtype = int_type;
      if (type_arithmetic(t1) && type_arithmetic(t2))
        ;
      else if (type_pointer(t1) && type_pointer(t2))
        {
          if (!compatible_pointer_types(t1, t2) &&
              !valid_compare(t1, t2, e1) &&
              !valid_compare(t2, t1, e2))
            pedwarn("comparison of distinct pointer types lacks a cast");
        }
      else if ((type_pointer(t1) && definite_null(e2)) ||
               (type_pointer(t2) && definite_null(e1)))
        ;
      else if ((type_pointer(t1) && type_integer(t2)) ||
               (type_pointer(t2) && type_integer(t1)))
        {
          if (!flag_traditional)
            pedwarn("comparison between pointer and integer");
        }
      else
        rtype = ((void *)0);
      break;
    case kind_andand: case kind_oror:
      if (type_scalar(t1) && type_scalar(t2))
        rtype = int_type;
      break;
    default: ((void) ((0) ? 0 : (__assert_fail ("0", "expr.c", 1021, __PRETTY_FUNCTION__), 0))); break;
    }
  if (common && type_arithmetic(t1) && type_arithmetic(t2))
    rtype = common_type(t1, t2);
  if (!rtype)
    {
      error("invalid operands to binary %s", binary_op_name(binop));
      rtype = error_type;
    }
  return rtype;
}
expression make_binary(location loc, int binop, expression e1, expression e2)
{
  expression result = ({ast_generic tEmPcast = (ast_generic)(newkind_binary(parse_region, binop, loc, e1, e2)); if (tEmPcast) ((void) ((((tEmPcast)->kind >= kind_expression && (tEmPcast)->kind <= postkind_expression)) ? 0 : (__assert_fail ("((tEmPcast)->kind >= kind_expression && (tEmPcast)->kind <= postkind_expression)", "expr.c", 1038, __PRETTY_FUNCTION__), 0))); (expression)(tEmPcast); });
  result->type = check_binary(binop, e1, e2);
  if (result->type != error_type)
    {
      result->cst = fold_binary(result->type, result);
    }
  return result;
}
static bool voidstar_conditional(type t1, type t2)
{
  if (type_void(t1))
    {
      if (pedantic && type_function(t2))
        pedwarn("ANSI C forbids conditional expr between `void *' and function pointer");
      return 1;
    }
  return 0;
}
static bool pointerint_conditional(type t1, type t2, expression e2)
{
  if (type_pointer(t1) && type_integer(t2))
    {
      if (!definite_zero(e2))
        pedwarn("pointer/integer type mismatch in conditional expression");
      return 1;
    }
  return 0;
}
expression make_conditional(location loc, expression cond,
                            expression true, expression false)
{
  expression result =
    ({ast_generic tEmPcast = (ast_generic)(new_conditional(parse_region, loc, cond, true, false)); if (tEmPcast) ((void) ((((tEmPcast)->kind >= kind_expression && (tEmPcast)->kind <= postkind_expression)) ? 0 : (__assert_fail ("((tEmPcast)->kind >= kind_expression && (tEmPcast)->kind <= postkind_expression)", "expr.c", 1082, __PRETTY_FUNCTION__), 0))); (expression)(tEmPcast); });
  type ctype, ttype, ftype, rtype = ((void *)0);
  bool truelvalue = true ? true->lvalue : 0;
  ctype = default_conversion(cond);
  if (!true)
    {
      true = cond;
      truelvalue = 0;
    }
  if (type_void(true->type))
    ttype = true->type;
  else
    ttype = default_conversion(true);
  if (type_void(false->type))
    ftype = false->type;
  else
    ftype = default_conversion(false);
  if (ctype == error_type || ttype == error_type || ftype == error_type)
    rtype = error_type;
  else if (type_equal(ttype, ftype))
    rtype = ttype;
  else if (type_equal_unqualified(ttype, ftype))
    rtype = make_qualified_type(ttype, no_qualifiers, ((void *)0));
  else if (type_real(ttype) && type_real(ftype))
    rtype = common_type(ttype, ftype);
  else if (type_void(ttype) || type_void(ftype))
    {
      if (pedantic && (!type_void(ttype) || !type_void(ftype)))
        pedwarn("ANSI C forbids conditional expr with only one void side");
      rtype = void_type;
    }
  else if (type_pointer(ttype) && type_pointer(ftype))
    {
      type tpointsto = type_points_to(ttype), fpointsto = type_points_to(ftype);
      if (compatible_pointer_types(ttype, ftype))
        rtype = common_type(tpointsto, fpointsto);
      else if (definite_null(true) && type_void(tpointsto))
        rtype = fpointsto;
      else if (definite_null(false) && type_void(fpointsto))
        rtype = tpointsto;
      else if (voidstar_conditional(tpointsto, fpointsto))
        rtype = tpointsto;
      else if (voidstar_conditional(fpointsto, tpointsto))
        rtype = fpointsto;
      else
        {
          pedwarn("pointer type mismatch in conditional expression");
          rtype = void_type;
        }
      rtype = make_pointer_type(qualify_type2(rtype, tpointsto, fpointsto));
    }
  else if (pointerint_conditional(ttype, ftype, false))
    rtype = ttype;
  else if (pointerint_conditional(ftype, ttype, true))
    rtype = ftype;
  else if (flag_cond_mismatch)
    rtype = void_type;
  else
    {
      error("type mismatch in conditional expression");
      rtype = error_type;
    }
  if (rtype != error_type)
    rtype = qualify_type2(rtype, ttype, ftype);
  result->type = rtype;
  result->lvalue = !pedantic && truelvalue && false->lvalue;
  result->isregister = true->isregister || false->isregister;
  result->bitfield = true->bitfield || false->bitfield;
  result->cst = fold_conditional(result);
  return result;
}
expression make_assign(location loc, int binop, expression e1, expression e2)
{
  expression result = ({ast_generic tEmPcast = (ast_generic)(newkind_binary(parse_region, binop, loc, e1, e2)); if (tEmPcast) ((void) ((((tEmPcast)->kind >= kind_expression && (tEmPcast)->kind <= postkind_expression)) ? 0 : (__assert_fail ("((tEmPcast)->kind >= kind_expression && (tEmPcast)->kind <= postkind_expression)", "expr.c", 1171, __PRETTY_FUNCTION__), 0))); (expression)(tEmPcast); });
  type t1 = require_complete_type(e1, e1->type), t2;
  result->type = error_type;
  if (t1 != error_type && e2->type != error_type)
    {
      expression rhs;
      if (binop == kind_assign)
        {
          t2 = default_conversion_for_assignment(e2);
          rhs = e2;
        }
      else
        {
          t2 = check_binary(binop, e1, e2);
          rhs = ((void *)0);
        }
      if (check_writable_lvalue(e1, "assignment") &&
          check_assignment(e1->type, t2, rhs, "assignment", ((void *)0), ((void *)0), 0))
        result->type = make_qualified_type(e1->type, no_qualifiers, ((void *)0));
    }
  return result;
}
expression make_identifier(location loc, cstring id, bool maybe_implicit)
{
  data_declaration decl = lookup_id(id.data, 0);
  identifier result = new_identifier(parse_region, loc, id, ((void *)0));
  if (decl && decl->islimbo)
    decl = ((void *)0);
  if (!decl && maybe_implicit)
    decl = implicitly_declare(result);
  if (!decl)
    {
      if (!current_function_decl)
        error("`%s' undeclared here (not in a function)", id.data);
      else if (!env_lookup(current_function_decl->undeclared_variables, id.data, 0))
        {
          static bool undeclared_variable_notice;
          error("`%s' undeclared (first use in this function)", id.data);
          env_add(current_function_decl->undeclared_variables, id.data, (void *)1);
          if (!undeclared_variable_notice)
            {
              error("(Each undeclared identifier is reported only once");
              error("for each function it appears in.)");
              undeclared_variable_notice = 1;
            }
        }
      decl = bad_decl;
    }
  result->type = decl->type;
  result->lvalue = decl->kind == decl_variable ||
    decl->kind == decl_magic_string;
  result->cst = fold_identifier(({ast_generic tEmPcast = (ast_generic)(result); if (tEmPcast) ((void) ((((tEmPcast)->kind >= kind_expression && (tEmPcast)->kind <= postkind_expression)) ? 0 : (__assert_fail ("((tEmPcast)->kind >= kind_expression && (tEmPcast)->kind <= postkind_expression)", "expr.c", 1235, __PRETTY_FUNCTION__), 0))); (expression)(tEmPcast); }), decl);
  result->isregister = decl->kind == decl_variable &&
    decl->vtype == variable_register;
  result->static_address = foldaddress_identifier(({ast_generic tEmPcast = (ast_generic)(result); if (tEmPcast) ((void) ((((tEmPcast)->kind >= kind_expression && (tEmPcast)->kind <= postkind_expression)) ? 0 : (__assert_fail ("((tEmPcast)->kind >= kind_expression && (tEmPcast)->kind <= postkind_expression)", "expr.c", 1238, __PRETTY_FUNCTION__), 0))); (expression)(tEmPcast); }), decl);
  result->ddecl = decl;
  if (!current_env->parm_level)
    decl->isused = 1;
  return ({ast_generic tEmPcast = (ast_generic)(result); if (tEmPcast) ((void) ((((tEmPcast)->kind >= kind_expression && (tEmPcast)->kind <= postkind_expression)) ? 0 : (__assert_fail ("((tEmPcast)->kind >= kind_expression && (tEmPcast)->kind <= postkind_expression)", "expr.c", 1246, __PRETTY_FUNCTION__), 0))); (expression)(tEmPcast); });
}
expression make_compound_expr(location loc, statement block)
{
  if (((block)->kind >= kind_error_stmt && (block)->kind <= postkind_error_stmt))
    return make_error_expr(loc);
  else
    {
      expression result = ({ast_generic tEmPcast = (ast_generic)(new_compound_expr(parse_region, loc, block)); if (tEmPcast) ((void) ((((tEmPcast)->kind >= kind_expression && (tEmPcast)->kind <= postkind_expression)) ? 0 : (__assert_fail ("((tEmPcast)->kind >= kind_expression && (tEmPcast)->kind <= postkind_expression)", "expr.c", 1255, __PRETTY_FUNCTION__), 0))); (expression)(tEmPcast); });
      compound_stmt bs = ({ast_generic tEmPcast = (ast_generic)(block); if (tEmPcast) ((void) ((((tEmPcast)->kind >= kind_compound_stmt && (tEmPcast)->kind <= postkind_compound_stmt)) ? 0 : (__assert_fail ("((tEmPcast)->kind >= kind_compound_stmt && (tEmPcast)->kind <= postkind_compound_stmt)", "expr.c", 1256, __PRETTY_FUNCTION__), 0))); (compound_stmt)(tEmPcast); });
      statement last_stmt = ({ast_generic tEmPcast = (ast_generic)(last_node(({ast_generic tEmPcast = (ast_generic)(bs->stmts); if (tEmPcast) ((void) ((((tEmPcast)->kind >= kind_node && (tEmPcast)->kind <= postkind_node)) ? 0 : (__assert_fail ("((tEmPcast)->kind >= kind_node && (tEmPcast)->kind <= postkind_node)", "expr.c", 1257, __PRETTY_FUNCTION__), 0))); (node)(tEmPcast); }))); if (tEmPcast) ((void) ((((tEmPcast)->kind >= kind_statement && (tEmPcast)->kind <= postkind_statement)) ? 0 : (__assert_fail ("((tEmPcast)->kind >= kind_statement && (tEmPcast)->kind <= postkind_statement)", "expr.c", 1257, __PRETTY_FUNCTION__), 0))); (statement)(tEmPcast); });
      if (last_stmt && ((last_stmt)->kind >= kind_expression_stmt && (last_stmt)->kind <= postkind_expression_stmt))
        result->type = ({ast_generic tEmPcast = (ast_generic)(last_stmt); if (tEmPcast) ((void) ((((tEmPcast)->kind >= kind_expression_stmt && (tEmPcast)->kind <= postkind_expression_stmt)) ? 0 : (__assert_fail ("((tEmPcast)->kind >= kind_expression_stmt && (tEmPcast)->kind <= postkind_expression_stmt)", "expr.c", 1260, __PRETTY_FUNCTION__), 0))); (expression_stmt)(tEmPcast); })->arg1->type;
      else
        result->type = void_type;
      return result;
    }
}
static void check_arguments(type fntype, expression arglist,
                            data_declaration fundecl, const char *name)
{
  typelist_scanner parmtypes;
  int parmnum = 1;
  type parmtype;
  if (!type_function_oldstyle(fntype))
    {
      typelist_scan(type_function_arguments(fntype), &parmtypes);
      while ((parmtype = typelist_next(&parmtypes)) && arglist)
        {
          type argtype = arglist->type;
          if (type_incomplete(parmtype))
            error("type of formal parameter %d is incomplete", parmnum);
          else
            {
              if (warn_conversion)
                {
                  if (type_integer(parmtype) && type_floating(argtype))
                    warn_for_assignment("%s as integer rather than floating due to prototype",
                                        ((void *)0), name, parmnum);
                  else if (type_floating(parmtype) && type_integer(argtype))
                    warn_for_assignment ("%s as floating rather than integer due to prototype",
                                         ((void *)0), name, parmnum);
                  else if (type_complex(parmtype) && type_floating(argtype))
                    warn_for_assignment ("%s as complex rather than floating due to prototype",
                                        ((void *)0), name, parmnum);
                  else if (type_floating(parmtype) && type_complex(argtype))
                    warn_for_assignment ("%s as floating rather than complex due to prototype",
                                        ((void *)0), name, parmnum);
                  else if (type_float(parmtype) && type_floating(argtype))
                    warn_for_assignment ("%s as `float' rather than `double' due to prototype",
                                        ((void *)0), name, parmnum);
                }
              check_assignment(parmtype, default_conversion_for_assignment(arglist),
                               arglist, ((void *)0), fundecl, name, parmnum);
            }
          parmnum++;
          arglist = ({ast_generic tEmPcast = (ast_generic)(arglist->next); if (tEmPcast) ((void) ((((tEmPcast)->kind >= kind_expression && (tEmPcast)->kind <= postkind_expression)) ? 0 : (__assert_fail ("((tEmPcast)->kind >= kind_expression && (tEmPcast)->kind <= postkind_expression)", "expr.c", 1325, __PRETTY_FUNCTION__), 0))); (expression)(tEmPcast); });
        }
      if (parmtype)
        {
          if (name)
            error("too few arguments to function `%s'", name);
          else
            error("too few arguments to function");
        }
      else if (arglist && !type_function_varargs(fntype))
        {
          if (name)
            error("too many arguments to function `%s'", name);
          else
            error("too many arguments to function");
        }
    }
  while (arglist)
    {
      require_complete_type(arglist, default_conversion(arglist));
      arglist = ({ast_generic tEmPcast = (ast_generic)(arglist->next); if (tEmPcast) ((void) ((((tEmPcast)->kind >= kind_expression && (tEmPcast)->kind <= postkind_expression)) ? 0 : (__assert_fail ("((tEmPcast)->kind >= kind_expression && (tEmPcast)->kind <= postkind_expression)", "expr.c", 1347, __PRETTY_FUNCTION__), 0))); (expression)(tEmPcast); });
    }
}
expression make_function_call(location loc, expression fn, expression arglist)
{
  expression result = ({ast_generic tEmPcast = (ast_generic)(new_function_call(parse_region, loc, fn, arglist, ((void *)0))); if (tEmPcast) ((void) ((((tEmPcast)->kind >= kind_expression && (tEmPcast)->kind <= postkind_expression)) ? 0 : (__assert_fail ("((tEmPcast)->kind >= kind_expression && (tEmPcast)->kind <= postkind_expression)", "expr.c", 1353, __PRETTY_FUNCTION__), 0))); (expression)(tEmPcast); });
  type fntype = default_conversion(fn), rettype;
  result->type = error_type;
  if (fntype == error_type)
    ;
  else if (!(type_pointer(fntype) && type_function(type_points_to(fntype))))
    error("called object is not a function");
  else
    {
      char *funname = ((void *)0);
      data_declaration fundecl = ((void *)0);
      if (((fn)->kind >= kind_identifier && (fn)->kind <= postkind_identifier))
        {
          identifier fnid = ({ast_generic tEmPcast = (ast_generic)(fn); if (tEmPcast) ((void) ((((tEmPcast)->kind >= kind_identifier && (tEmPcast)->kind <= postkind_identifier)) ? 0 : (__assert_fail ("((tEmPcast)->kind >= kind_identifier && (tEmPcast)->kind <= postkind_identifier)", "expr.c", 1368, __PRETTY_FUNCTION__), 0))); (identifier)(tEmPcast); });
          if (fnid->ddecl->kind == decl_function)
            {
              funname = fnid->cstring.data;
              fundecl = fnid->ddecl;
            }
        }
      fntype = type_points_to(fntype);
      check_arguments(fntype, arglist, fundecl, funname);
      rettype = type_function_return_type(fntype);
      result->type = rettype;
      if (!type_void(rettype))
        result->type = require_complete_type(result, rettype);
   }
  return result;
}
expression make_va_arg(location loc, expression arg, asttype type)
{
  expression va_arg_id = build_identifier(parse_region, loc, builtin_va_arg_decl);
  expression result = ({ast_generic tEmPcast = (ast_generic)(new_function_call(parse_region, loc, va_arg_id, arg, type)); if (tEmPcast) ((void) ((((tEmPcast)->kind >= kind_expression && (tEmPcast)->kind <= postkind_expression)) ? 0 : (__assert_fail ("((tEmPcast)->kind >= kind_expression && (tEmPcast)->kind <= postkind_expression)", "expr.c", 1393, __PRETTY_FUNCTION__), 0))); (expression)(tEmPcast); });
  if (!type_equal_unqualified(arg->type, builtin_va_list_type))
    error("first argument to `va_arg' not of type `va_list'");
  if (!type_self_promoting(type->type))
    {
      static bool gave_help;
      error("char, short and float are automatically promoted when passed through `...'");
      if (!gave_help)
        {
          gave_help = 1;
          error("(so you should pass `int', `unsigned' or `double' to `va_arg')");
        }
    }
  result->type = type->type;
  return result;
}
expression make_array_ref(location loc, expression array, expression index)
{
  expression result = ({ast_generic tEmPcast = (ast_generic)(new_array_ref(parse_region, loc, array, index)); if (tEmPcast) ((void) ((((tEmPcast)->kind >= kind_expression && (tEmPcast)->kind <= postkind_expression)) ? 0 : (__assert_fail ("((tEmPcast)->kind >= kind_expression && (tEmPcast)->kind <= postkind_expression)", "expr.c", 1416, __PRETTY_FUNCTION__), 0))); (expression)(tEmPcast); });
  type atype, itype = default_conversion(index);
  if (warn_char_subscripts && type_plain_char(index->type))
    warning("subscript has type `char'");
  if (type_array(array->type) && !array->lvalue)
    {
      if (pedantic)
        pedwarn("ANSI C forbids subscripting non-lvalue array");
      atype = make_pointer_type(type_array_of(array->type));
      ((void) ((!array->static_address) ? 0 : (__assert_fail ("!array->static_address", "expr.c", 1433, __PRETTY_FUNCTION__), 0)));
    }
  else
    atype = default_conversion(array);
  if (type_integer(atype))
    {
      type temp = atype;
      atype = itype;
      itype = temp;
    }
  if (!type_pointer(atype) || type_function(type_points_to(atype)))
    {
      error("subscripted value is neither array nor pointer");
      result->type = error_type;
      result->lvalue = 1;
    }
  else
    {
      check_dereference(result, atype, "array indexing");
      result->static_address = fold_binary(atype, result);
    }
  if (!type_integer(itype))
    error("array subscript is not an integer");
  return result;
}
expression make_field_ref(location loc, expression object, cstring field,
                          location cstring_loc)
{
  type otype = object->type;
  expression result = ({ast_generic tEmPcast = (ast_generic)(new_field_ref(parse_region, loc, object, field, cstring_loc)); if (tEmPcast) ((void) ((((tEmPcast)->kind >= kind_expression && (tEmPcast)->kind <= postkind_expression)) ? 0 : (__assert_fail ("((tEmPcast)->kind >= kind_expression && (tEmPcast)->kind <= postkind_expression)", "expr.c", 1468, __PRETTY_FUNCTION__), 0))); (expression)(tEmPcast); });
  result->type = error_type;
  if (type_aggregate(otype))
    {
      tag_declaration tag = type_tag(otype);
      if (!tag->defined)
        incomplete_type_error(((void *)0), otype);
      else
        {
          field_declaration fdecl = env_lookup(tag->fields, field.data, 0);
          if (!fdecl)
            error(type_struct(otype) ? "structure has no member named `%s'"
                  : "union has no member named `%s'", field.data);
          else
            {
              result->type = qualify_type2(fdecl->type, fdecl->type, object->type);
              result->bitfield = fdecl->bitwidth >= 0;
              result->static_address = foldaddress_field_ref(object->static_address, fdecl);
            }
        }
    }
  else if (otype != error_type)
    error("request for member `%s' in something not a structure or union",
          field.data);
  result->lvalue = object->lvalue;
  return result;
}
static expression increment(unary result, char *name)
{
  expression e = result->arg1;
  type etype = e->type;
  result->type = error_type;
  if (!type_scalar(etype))
    error("wrong type argument to %s", name);
  else
    {
      if (type_incomplete(etype))
        error("%s of pointer to unknown structure or union", name);
      else if (type_pointer(etype) && (pedantic || warn_pointer_arith) &&
               (type_void(type_points_to(etype)) ||
                type_function(type_points_to(etype))))
        pedwarn("wrong type argument to %s", name);
      if (check_writable_lvalue(e, name))
        result->type = etype;
    }
  return ({ast_generic tEmPcast = (ast_generic)(result); if (tEmPcast) ((void) ((((tEmPcast)->kind >= kind_expression && (tEmPcast)->kind <= postkind_expression)) ? 0 : (__assert_fail ("((tEmPcast)->kind >= kind_expression && (tEmPcast)->kind <= postkind_expression)", "expr.c", 1524, __PRETTY_FUNCTION__), 0))); (expression)(tEmPcast); });
}
expression make_postincrement(location loc, expression e)
{
  return increment(({ast_generic tEmPcast = (ast_generic)(new_postincrement(parse_region, loc, e)); if (tEmPcast) ((void) ((((tEmPcast)->kind >= kind_unary && (tEmPcast)->kind <= postkind_unary)) ? 0 : (__assert_fail ("((tEmPcast)->kind >= kind_unary && (tEmPcast)->kind <= postkind_unary)", "expr.c", 1529, __PRETTY_FUNCTION__), 0))); (unary)(tEmPcast); }),
                   "increment");
}
expression make_preincrement(location loc, expression e)
{
  return increment(({ast_generic tEmPcast = (ast_generic)(new_preincrement(parse_region, loc, e)); if (tEmPcast) ((void) ((((tEmPcast)->kind >= kind_unary && (tEmPcast)->kind <= postkind_unary)) ? 0 : (__assert_fail ("((tEmPcast)->kind >= kind_unary && (tEmPcast)->kind <= postkind_unary)", "expr.c", 1535, __PRETTY_FUNCTION__), 0))); (unary)(tEmPcast); }),
                        "increment");
}
expression make_postdecrement(location loc, expression e)
{
  return increment(({ast_generic tEmPcast = (ast_generic)(new_postdecrement(parse_region, loc, e)); if (tEmPcast) ((void) ((((tEmPcast)->kind >= kind_unary && (tEmPcast)->kind <= postkind_unary)) ? 0 : (__assert_fail ("((tEmPcast)->kind >= kind_unary && (tEmPcast)->kind <= postkind_unary)", "expr.c", 1541, __PRETTY_FUNCTION__), 0))); (unary)(tEmPcast); }),
                   "decrement");
}
expression make_predecrement(location loc, expression e)
{
  return increment(({ast_generic tEmPcast = (ast_generic)(new_predecrement(parse_region, loc, e)); if (tEmPcast) ((void) ((((tEmPcast)->kind >= kind_unary && (tEmPcast)->kind <= postkind_unary)) ? 0 : (__assert_fail ("((tEmPcast)->kind >= kind_unary && (tEmPcast)->kind <= postkind_unary)", "expr.c", 1547, __PRETTY_FUNCTION__), 0))); (unary)(tEmPcast); }),
                   "decrement");
}
static size_t extract_strings(expression string_components,
                              wchar_t *into, bool *wide)
{
  size_t total_length = 0;
  expression astring;
  *wide = 0;
  for (astring = (string_components); astring; astring = ({ast_generic tEmPcast = (ast_generic)(astring->next); if (tEmPcast) ((void) ((((tEmPcast)->kind >= kind_expression && (tEmPcast)->kind <= postkind_expression)) ? 0 : (__assert_fail ("((tEmPcast)->kind >= kind_expression && (tEmPcast)->kind <= postkind_expression)", "expr.c", 1558, __PRETTY_FUNCTION__), 0))); (expression)(tEmPcast); }))
    {
      const wchar_t *chars;
      size_t length;
      if (!type_equal(type_array_of(astring->type), char_type))
        *wide = 1;
      if (((astring)->kind >= kind_identifier && (astring)->kind <= postkind_identifier))
        {
          data_declaration dd = ({ast_generic tEmPcast = (ast_generic)(astring); if (tEmPcast) ((void) ((((tEmPcast)->kind >= kind_identifier && (tEmPcast)->kind <= postkind_identifier)) ? 0 : (__assert_fail ("((tEmPcast)->kind >= kind_identifier && (tEmPcast)->kind <= postkind_identifier)", "expr.c", 1568, __PRETTY_FUNCTION__), 0))); (identifier)(tEmPcast); })->ddecl;
          chars = dd->chars;
          length = dd->chars_length;
        }
      else
        {
          string_cst s = ({ast_generic tEmPcast = (ast_generic)(astring); if (tEmPcast) ((void) ((((tEmPcast)->kind >= kind_string_cst && (tEmPcast)->kind <= postkind_string_cst)) ? 0 : (__assert_fail ("((tEmPcast)->kind >= kind_string_cst && (tEmPcast)->kind <= postkind_string_cst)", "expr.c", 1575, __PRETTY_FUNCTION__), 0))); (string_cst)(tEmPcast); });
          chars = s->chars;
          length = s->length;
        }
      if (into)
        {
          memcpy(into, chars, length * sizeof(wchar_t));
          into += length;
        }
      total_length += length;
    }
  return total_length;
}
string make_string(location loc, expression string_components)
{
  string s = new_string(parse_region, loc, string_components, ((void *)0));
  size_t total_length = 0;
  bool wide;
  total_length = extract_strings(string_components, ((void *)0), &wide);
  s->ddecl = declare_string(((void *)0), wide, total_length);
  s->type = s->ddecl->type;
  extract_strings(string_components, (wchar_t *)s->ddecl->chars, &wide);
  s->static_address = foldaddress_string(s);
  s->lvalue = 1;
  return s;
}
const char CANON_IDENT_e44d8ff6a7749afd8a109867be7ac1c1[] = "CANON_IDENT_/moa/sc1/jkodumal/work/banshee/experiments/cqual/src/expr.c";
