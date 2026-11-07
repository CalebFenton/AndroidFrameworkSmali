.class public Lsun/nio/ch/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/Util$BufferCache;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z

.field private static final blacklist MAX_CACHED_BUFFER_SIZE:J

.field private static final blacklist TEMP_BUF_POOL_SIZE:I

.field private static blacklist bufferCache:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lsun/nio/ch/Util$BufferCache;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile blacklist bugLevel:Ljava/lang/String;

.field private static blacklist unsafe:Ljdk/internal/misc/Unsafe;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetTEMP_BUF_POOL_SIZE()I
    .registers 1

    sget v0, Lsun/nio/ch/Util;->TEMP_BUF_POOL_SIZE:I

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smisBufferTooLarge(I)Z
    .registers 1

    invoke-static {p0}, Lsun/nio/ch/Util;->isBufferTooLarge(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smisBufferTooLarge(Ljava/nio/ByteBuffer;)Z
    .registers 1

    invoke-static {p0}, Lsun/nio/ch/Util;->isBufferTooLarge(Ljava/nio/ByteBuffer;)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 38
    nop

    .line 43
    sget v0, Lsun/nio/ch/IOUtil;->IOV_MAX:I

    sput v0, Lsun/nio/ch/Util;->TEMP_BUF_POOL_SIZE:I

    .line 46
    invoke-static {}, Lsun/nio/ch/Util;->getMaxCachedBufferSize()J

    move-result-wide v0

    sput-wide v0, Lsun/nio/ch/Util;->MAX_CACHED_BUFFER_SIZE:J

    .line 49
    new-instance v0, Lsun/nio/ch/Util$1;

    invoke-direct {v0}, Lsun/nio/ch/Util$1;-><init>()V

    sput-object v0, Lsun/nio/ch/Util;->bufferCache:Ljava/lang/ThreadLocal;

    .line 353
    invoke-static {}, Ljdk/internal/misc/Unsafe;->getUnsafe()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lsun/nio/ch/Util;->unsafe:Ljdk/internal/misc/Unsafe;

    .line 475
    const/4 v0, 0x0

    sput-object v0, Lsun/nio/ch/Util;->bugLevel:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist _get(J)B
    .registers 3
    .param p0, "a"    # J

    .line 356
    sget-object v0, Lsun/nio/ch/Util;->unsafe:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v0, p0, p1}, Ljdk/internal/misc/Unsafe;->getByte(J)B

    move-result v0

    return v0
.end method

.method private static blacklist _put(JB)V
    .registers 4
    .param p0, "a"    # J
    .param p2, "b"    # B

    .line 360
    sget-object v0, Lsun/nio/ch/Util;->unsafe:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Ljdk/internal/misc/Unsafe;->putByte(JB)V

    .line 361
    return-void
.end method

.method static blacklist atBugLevel(Ljava/lang/String;)Z
    .registers 3
    .param p0, "bl"    # Ljava/lang/String;

    .line 478
    sget-object v0, Lsun/nio/ch/Util;->bugLevel:Ljava/lang/String;

    if-nez v0, :cond_21

    .line 479
    invoke-static {}, Lsun/misc/VM;->isBooted()Z

    move-result v0

    if-nez v0, :cond_c

    .line 480
    const/4 v0, 0x0

    return v0

    .line 481
    :cond_c
    new-instance v0, Lsun/security/action/GetPropertyAction;

    const-string v1, "sun.nio.ch.bugLevel"

    invoke-direct {v0, v1}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 483
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_1d

    move-object v1, v0

    goto :goto_1f

    :cond_1d
    const-string v1, ""

    :goto_1f
    sput-object v1, Lsun/nio/ch/Util;->bugLevel:Ljava/lang/String;

    .line 485
    .end local v0    # "value":Ljava/lang/String;
    :cond_21
    sget-object v0, Lsun/nio/ch/Util;->bugLevel:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static blacklist erase(Ljava/nio/ByteBuffer;)V
    .registers 7
    .param p0, "bb"    # Ljava/nio/ByteBuffer;

    .line 364
    sget-object v0, Lsun/nio/ch/Util;->unsafe:Ljdk/internal/misc/Unsafe;

    move-object v1, p0

    check-cast v1, Lsun/nio/ch/DirectBuffer;

    invoke-interface {v1}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    int-to-long v3, v3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/Unsafe;->setMemory(JJB)V

    .line 365
    return-void
.end method

.method private static blacklist free(Ljava/nio/ByteBuffer;)V
    .registers 2
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .line 296
    move-object v0, p0

    check-cast v0, Lsun/nio/ch/DirectBuffer;

    invoke-interface {v0}, Lsun/nio/ch/DirectBuffer;->cleaner()Lsun/misc/Cleaner;

    move-result-object v0

    .line 297
    .local v0, "cleaner":Lsun/misc/Cleaner;
    if-eqz v0, :cond_c

    .line 298
    invoke-virtual {v0}, Lsun/misc/Cleaner;->clean()V

    .line 300
    :cond_c
    return-void
.end method

.method private static blacklist getMaxCachedBufferSize()J
    .registers 5

    .line 66
    new-instance v0, Lsun/nio/ch/Util$2;

    invoke-direct {v0}, Lsun/nio/ch/Util$2;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 73
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_1a

    .line 75
    :try_start_d
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_11} :catch_19

    .line 76
    .local v1, "m":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_18

    .line 77
    return-wide v1

    .line 83
    .end local v1    # "m":J
    :cond_18
    goto :goto_1a

    .line 81
    :catch_19
    move-exception v1

    .line 85
    :cond_1a
    :goto_1a
    const-wide v1, 0x7fffffffffffffffL

    return-wide v1
.end method

.method public static blacklist getTemporaryDirectBuffer(I)Ljava/nio/ByteBuffer;
    .registers 4
    .param p0, "size"    # I

    .line 220
    invoke-static {p0}, Lsun/nio/ch/Util;->isBufferTooLarge(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 221
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 224
    :cond_b
    sget-object v0, Lsun/nio/ch/Util;->bufferCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/nio/ch/Util$BufferCache;

    .line 225
    .local v0, "cache":Lsun/nio/ch/Util$BufferCache;
    invoke-virtual {v0, p0}, Lsun/nio/ch/Util$BufferCache;->get(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 226
    .local v1, "buf":Ljava/nio/ByteBuffer;
    if-eqz v1, :cond_1a

    .line 227
    return-object v1

    .line 232
    :cond_1a
    invoke-virtual {v0}, Lsun/nio/ch/Util$BufferCache;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_27

    .line 233
    invoke-virtual {v0}, Lsun/nio/ch/Util$BufferCache;->removeFirst()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 234
    invoke-static {v1}, Lsun/nio/ch/Util;->free(Ljava/nio/ByteBuffer;)V

    .line 236
    :cond_27
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist isBufferTooLarge(I)Z
    .registers 5
    .param p0, "size"    # I

    .line 93
    int-to-long v0, p0

    sget-wide v2, Lsun/nio/ch/Util;->MAX_CACHED_BUFFER_SIZE:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private static blacklist isBufferTooLarge(Ljava/nio/ByteBuffer;)Z
    .registers 2
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .line 101
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-static {v0}, Lsun/nio/ch/Util;->isBufferTooLarge(I)Z

    move-result v0

    return v0
.end method

.method static blacklist offerFirstTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .line 255
    invoke-static {p0}, Lsun/nio/ch/Util;->isBufferTooLarge(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 256
    invoke-static {p0}, Lsun/nio/ch/Util;->free(Ljava/nio/ByteBuffer;)V

    .line 257
    return-void

    .line 260
    :cond_a
    nop

    .line 261
    sget-object v0, Lsun/nio/ch/Util;->bufferCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/nio/ch/Util$BufferCache;

    .line 262
    .local v0, "cache":Lsun/nio/ch/Util$BufferCache;
    invoke-virtual {v0, p0}, Lsun/nio/ch/Util$BufferCache;->offerFirst(Ljava/nio/ByteBuffer;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 264
    invoke-static {p0}, Lsun/nio/ch/Util;->free(Ljava/nio/ByteBuffer;)V

    .line 266
    :cond_1c
    return-void
.end method

.method static blacklist offerLastTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .line 277
    invoke-static {p0}, Lsun/nio/ch/Util;->isBufferTooLarge(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 278
    invoke-static {p0}, Lsun/nio/ch/Util;->free(Ljava/nio/ByteBuffer;)V

    .line 279
    return-void

    .line 282
    :cond_a
    nop

    .line 283
    sget-object v0, Lsun/nio/ch/Util;->bufferCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/nio/ch/Util$BufferCache;

    .line 284
    .local v0, "cache":Lsun/nio/ch/Util$BufferCache;
    invoke-virtual {v0, p0}, Lsun/nio/ch/Util$BufferCache;->offerLast(Ljava/nio/ByteBuffer;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 286
    invoke-static {p0}, Lsun/nio/ch/Util;->free(Ljava/nio/ByteBuffer;)V

    .line 288
    :cond_1c
    return-void
.end method

.method public static blacklist releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V
    .registers 1
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .line 244
    invoke-static {p0}, Lsun/nio/ch/Util;->offerFirstTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 245
    return-void
.end method

.method static blacklist subsequence([Ljava/nio/ByteBuffer;II)[Ljava/nio/ByteBuffer;
    .registers 7
    .param p0, "bs"    # [Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 306
    if-nez p1, :cond_6

    array-length v0, p0

    if-ne p2, v0, :cond_6

    .line 307
    return-object p0

    .line 308
    :cond_6
    move v0, p2

    .line 309
    .local v0, "n":I
    new-array v1, v0, [Ljava/nio/ByteBuffer;

    .line 310
    .local v1, "bs2":[Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_15

    .line 311
    add-int v3, p1, v2

    aget-object v3, p0, v3

    aput-object v3, v1, v2

    .line 310
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 312
    .end local v2    # "i":I
    :cond_15
    return-object v1
.end method

.method static blacklist ungrowableSet(Ljava/util/Set;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 316
    .local p0, "s":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    new-instance v0, Lsun/nio/ch/Util$3;

    invoke-direct {v0, p0}, Lsun/nio/ch/Util$3;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method static blacklist unsafe()Ljdk/internal/misc/Unsafe;
    .registers 1

    .line 368
    sget-object v0, Lsun/nio/ch/Util;->unsafe:Ljdk/internal/misc/Unsafe;

    return-object v0
.end method
