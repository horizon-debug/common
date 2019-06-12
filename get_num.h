#ifndef GET_NUM_H
#define GET_NUM_H

#define GN_NONNEG
#define GN_GT_O

#define GN_ANY_BASE
#define GN_BASE_8
#define GN_BASE_16

long getLong(const char *arg,int flags,const char *name);
int getInt(const char *arg,int flags,const char *name);

#endif
