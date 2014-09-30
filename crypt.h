#ifndef crypt_h
#define crypt_h

#include <stddef.h>

#include "lua.h"
#include "lauxlib.h"

static void des_main_ks( uint32_t SK[32], const uint8_t key[8] );
static void des_crypt( const uint32_t SK[32], const uint8_t input[8], uint8_t output[8] );
static int lrandomkey(lua_State *L);
static void des_key(lua_State *L, uint32_t SK[32]);
static int ldesencode(lua_State *L);
static int ldesdecode(lua_State *L);
static void Hash(const char * str, int sz, uint8_t key[8]);
static int lhashkey(lua_State *L);
static int ltohex(lua_State *L);
static int lfromhex(lua_State *L);
static void hmac(uint32_t x[2], uint32_t y[2], uint32_t result[2]);
static void read64(lua_State *L, uint32_t xx[2], uint32_t yy[2]);
static int lhmac64(lua_State *L);
static inline uint64_t mul_mod_p(uint64_t a, uint64_t b);
static inline uint64_t pow_mod_p(uint64_t a, uint64_t b);
static uint64_t powmodp(uint64_t a, uint64_t b);
static void push64(lua_State *L, uint64_t r);
static int ldhsecret(lua_State *L);
static int ldhexchange(lua_State *L);
static int lb64encode(lua_State *L);
static inline int b64index(uint8_t c);
static int lb64decode(lua_State *L);
int luaopen_crypt(lua_State *L);

#endif
