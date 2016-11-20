.class Lsun/nio/ch/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/Util$1;,
        Lsun/nio/ch/Util$BufferCache;,
        Lsun/nio/ch/Util$SelectorWrapper;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final TEMP_BUF_POOL_SIZE:I

.field private static bufferCache:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lsun/nio/ch/Util$BufferCache;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile bugLevel:Ljava/lang/String;

.field private static localSelector:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lsun/nio/ch/Util$SelectorWrapper;",
            ">;>;"
        }
    .end annotation
.end field

.field private static localSelectorWrapper:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lsun/nio/ch/Util$SelectorWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private static pageSize:I

.field private static unsafe:Lsun/misc/Unsafe;


# direct methods
.method static synthetic -get0()I
    .locals 1

    #@0
    sget v0, Lsun/nio/ch/Util;->TEMP_BUF_POOL_SIZE:I

    #@2
    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Lsun/nio/ch/Util;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Lsun/nio/ch/Util;->-assertionsDisabled:Z

    #@b
    .line 49
    sget v0, Lsun/nio/ch/IOUtil;->IOV_MAX:I

    #@d
    sput v0, Lsun/nio/ch/Util;->TEMP_BUF_POOL_SIZE:I

    #@f
    .line 53
    new-instance v0, Lsun/nio/ch/Util$1;

    #@11
    invoke-direct {v0}, Lsun/nio/ch/Util$1;-><init>()V

    #@14
    .line 52
    sput-object v0, Lsun/nio/ch/Util;->bufferCache:Ljava/lang/ThreadLocal;

    #@16
    .line 249
    new-instance v0, Ljava/lang/ThreadLocal;

    #@18
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    #@1b
    .line 248
    sput-object v0, Lsun/nio/ch/Util;->localSelector:Ljava/lang/ThreadLocal;

    #@1d
    .line 253
    new-instance v0, Ljava/lang/ThreadLocal;

    #@1f
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    #@22
    .line 252
    sput-object v0, Lsun/nio/ch/Util;->localSelectorWrapper:Ljava/lang/ThreadLocal;

    #@24
    .line 336
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@27
    move-result-object v0

    #@28
    sput-object v0, Lsun/nio/ch/Util;->unsafe:Lsun/misc/Unsafe;

    #@2a
    .line 354
    const/4 v0, -0x1

    #@2b
    sput v0, Lsun/nio/ch/Util;->pageSize:I

    #@2d
    .line 363
    const/4 v0, 0x0

    #@2e
    sput-object v0, Lsun/nio/ch/Util;->bugLevel:Ljava/lang/String;

    #@30
    .line 44
    return-void

    #@31
    :cond_0
    const/4 v0, 0x1

    #@32
    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static _get(J)B
    .locals 2
    .param p0, "a"    # J

    #@0
    .prologue
    .line 339
    sget-object v0, Lsun/nio/ch/Util;->unsafe:Lsun/misc/Unsafe;

    #@2
    invoke-virtual {v0, p0, p1}, Lsun/misc/Unsafe;->getByte(J)B

    #@5
    move-result v0

    #@6
    return v0
.end method

.method private static _put(JB)V
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # B

    #@0
    .prologue
    .line 343
    sget-object v0, Lsun/nio/ch/Util;->unsafe:Lsun/misc/Unsafe;

    #@2
    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->putByte(JB)V

    #@5
    .line 342
    return-void
.end method

.method static atBugLevel(Ljava/lang/String;)Z
    .locals 3
    .param p0, "bl"    # Ljava/lang/String;

    #@0
    .prologue
    .line 366
    sget-object v1, Lsun/nio/ch/Util;->bugLevel:Ljava/lang/String;

    #@2
    if-nez v1, :cond_1

    #@4
    .line 367
    invoke-static {}, Lsun/misc/VM;->isBooted()Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_0

    #@a
    .line 368
    const/4 v1, 0x0

    #@b
    return v1

    #@c
    .line 370
    :cond_0
    new-instance v1, Lsun/security/action/GetPropertyAction;

    #@e
    const-string/jumbo v2, "sun.nio.ch.bugLevel"

    #@11
    invoke-direct {v1, v2}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    #@14
    .line 369
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Ljava/lang/String;

    #@1a
    .line 371
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_2

    #@1c
    .end local v0    # "value":Ljava/lang/String;
    :goto_0
    sput-object v0, Lsun/nio/ch/Util;->bugLevel:Ljava/lang/String;

    #@1e
    .line 373
    :cond_1
    sget-object v1, Lsun/nio/ch/Util;->bugLevel:Ljava/lang/String;

    #@20
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v1

    #@24
    return v1

    #@25
    .line 371
    .restart local v0    # "value":Ljava/lang/String;
    :cond_2
    const-string/jumbo v0, ""

    #@28
    goto :goto_0
.end method

.method static erase(Ljava/nio/ByteBuffer;)V
    .locals 7
    .param p0, "bb"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 347
    sget-object v1, Lsun/nio/ch/Util;->unsafe:Lsun/misc/Unsafe;

    #@2
    move-object v0, p0

    #@3
    check-cast v0, Lsun/nio/ch/DirectBuffer;

    #@5
    invoke-interface {v0}, Lsun/nio/ch/DirectBuffer;->address()J

    #@8
    move-result-wide v2

    #@9
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    #@c
    move-result v0

    #@d
    int-to-long v4, v0

    #@e
    const/4 v6, 0x0

    #@f
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->setMemory(JJB)V

    #@12
    .line 346
    return-void
.end method

.method private static free(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 219
    check-cast p0, Lsun/nio/ch/DirectBuffer;

    #@2
    .end local p0    # "buf":Ljava/nio/ByteBuffer;
    invoke-interface {p0}, Lsun/nio/ch/DirectBuffer;->cleaner()Lsun/misc/Cleaner;

    #@5
    move-result-object v0

    #@6
    .line 220
    .local v0, "cleaner":Lsun/misc/Cleaner;
    if-eqz v0, :cond_0

    #@8
    .line 221
    invoke-virtual {v0}, Lsun/misc/Cleaner;->clean()V

    #@b
    .line 218
    :cond_0
    return-void
.end method

.method static getTemporaryDirectBuffer(I)Ljava/nio/ByteBuffer;
    .locals 3
    .param p0, "size"    # I

    #@0
    .prologue
    .line 163
    sget-object v2, Lsun/nio/ch/Util;->bufferCache:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Lsun/nio/ch/Util$BufferCache;

    #@8
    .line 164
    .local v1, "cache":Lsun/nio/ch/Util$BufferCache;
    invoke-virtual {v1, p0}, Lsun/nio/ch/Util$BufferCache;->get(I)Ljava/nio/ByteBuffer;

    #@b
    move-result-object v0

    #@c
    .line 165
    .local v0, "buf":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_0

    #@e
    .line 166
    return-object v0

    #@f
    .line 171
    :cond_0
    invoke-virtual {v1}, Lsun/nio/ch/Util$BufferCache;->isEmpty()Z

    #@12
    move-result v2

    #@13
    if-nez v2, :cond_1

    #@15
    .line 172
    invoke-virtual {v1}, Lsun/nio/ch/Util$BufferCache;->removeFirst()Ljava/nio/ByteBuffer;

    #@18
    move-result-object v0

    #@19
    .line 173
    invoke-static {v0}, Lsun/nio/ch/Util;->free(Ljava/nio/ByteBuffer;)V

    #@1c
    .line 175
    :cond_1
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    #@1f
    move-result-object v2

    #@20
    return-object v2
.end method

.method static getTemporarySelector(Ljava/nio/channels/SelectableChannel;)Ljava/nio/channels/Selector;
    .locals 6
    .param p0, "sc"    # Ljava/nio/channels/SelectableChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 261
    sget-object v3, Lsun/nio/ch/Util;->localSelector:Ljava/lang/ThreadLocal;

    #@3
    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljava/lang/ref/SoftReference;

    #@9
    .line 262
    .local v0, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lsun/nio/ch/Util$SelectorWrapper;>;"
    const/4 v2, 0x0

    #@a
    .line 263
    .local v2, "selWrapper":Lsun/nio/ch/Util$SelectorWrapper;
    const/4 v1, 0x0

    #@b
    .line 264
    .local v1, "sel":Ljava/nio/channels/Selector;
    if-eqz v0, :cond_0

    #@d
    .line 265
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    .end local v2    # "selWrapper":Lsun/nio/ch/Util$SelectorWrapper;
    check-cast v2, Lsun/nio/ch/Util$SelectorWrapper;

    #@13
    .local v2, "selWrapper":Lsun/nio/ch/Util$SelectorWrapper;
    if-nez v2, :cond_2

    #@15
    .line 268
    .end local v1    # "sel":Ljava/nio/channels/Selector;
    .end local v2    # "selWrapper":Lsun/nio/ch/Util$SelectorWrapper;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/nio/channels/SelectableChannel;->provider()Ljava/nio/channels/spi/SelectorProvider;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3}, Ljava/nio/channels/spi/SelectorProvider;->openSelector()Ljava/nio/channels/spi/AbstractSelector;

    #@1c
    move-result-object v1

    #@1d
    .line 269
    .local v1, "sel":Ljava/nio/channels/Selector;
    new-instance v2, Lsun/nio/ch/Util$SelectorWrapper;

    #@1f
    invoke-direct {v2, v1, v5}, Lsun/nio/ch/Util$SelectorWrapper;-><init>(Ljava/nio/channels/Selector;Lsun/nio/ch/Util$SelectorWrapper;)V

    #@22
    .line 270
    .restart local v2    # "selWrapper":Lsun/nio/ch/Util$SelectorWrapper;
    sget-object v3, Lsun/nio/ch/Util;->localSelector:Ljava/lang/ThreadLocal;

    #@24
    new-instance v4, Ljava/lang/ref/SoftReference;

    #@26
    invoke-direct {v4, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    #@2c
    .line 272
    :cond_1
    sget-object v3, Lsun/nio/ch/Util;->localSelectorWrapper:Ljava/lang/ThreadLocal;

    #@2e
    invoke-virtual {v3, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    #@31
    .line 273
    return-object v1

    #@32
    .line 266
    .local v1, "sel":Ljava/nio/channels/Selector;
    :cond_2
    invoke-virtual {v2}, Lsun/nio/ch/Util$SelectorWrapper;->get()Ljava/nio/channels/Selector;

    #@35
    move-result-object v1

    #@36
    .local v1, "sel":Ljava/nio/channels/Selector;
    if-eqz v1, :cond_0

    #@38
    .line 267
    invoke-virtual {v1}, Ljava/nio/channels/Selector;->provider()Ljava/nio/channels/spi/SelectorProvider;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {p0}, Ljava/nio/channels/SelectableChannel;->provider()Ljava/nio/channels/spi/SelectorProvider;

    #@3f
    move-result-object v4

    #@40
    if-eq v3, v4, :cond_1

    #@42
    goto :goto_0
.end method

.method static offerFirstTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 192
    sget-boolean v1, Lsun/nio/ch/Util;->-assertionsDisabled:Z

    #@2
    if-nez v1, :cond_1

    #@4
    if-eqz p0, :cond_0

    #@6
    const/4 v1, 0x1

    #@7
    :goto_0
    if-nez v1, :cond_1

    #@9
    new-instance v1, Ljava/lang/AssertionError;

    #@b
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@e
    throw v1

    #@f
    :cond_0
    const/4 v1, 0x0

    #@10
    goto :goto_0

    #@11
    .line 193
    :cond_1
    sget-object v1, Lsun/nio/ch/Util;->bufferCache:Ljava/lang/ThreadLocal;

    #@13
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lsun/nio/ch/Util$BufferCache;

    #@19
    .line 194
    .local v0, "cache":Lsun/nio/ch/Util$BufferCache;
    invoke-virtual {v0, p0}, Lsun/nio/ch/Util$BufferCache;->offerFirst(Ljava/nio/ByteBuffer;)Z

    #@1c
    move-result v1

    #@1d
    if-nez v1, :cond_2

    #@1f
    .line 196
    invoke-static {p0}, Lsun/nio/ch/Util;->free(Ljava/nio/ByteBuffer;)V

    #@22
    .line 191
    :cond_2
    return-void
.end method

.method static offerLastTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 207
    sget-boolean v1, Lsun/nio/ch/Util;->-assertionsDisabled:Z

    #@2
    if-nez v1, :cond_1

    #@4
    if-eqz p0, :cond_0

    #@6
    const/4 v1, 0x1

    #@7
    :goto_0
    if-nez v1, :cond_1

    #@9
    new-instance v1, Ljava/lang/AssertionError;

    #@b
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@e
    throw v1

    #@f
    :cond_0
    const/4 v1, 0x0

    #@10
    goto :goto_0

    #@11
    .line 208
    :cond_1
    sget-object v1, Lsun/nio/ch/Util;->bufferCache:Ljava/lang/ThreadLocal;

    #@13
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lsun/nio/ch/Util$BufferCache;

    #@19
    .line 209
    .local v0, "cache":Lsun/nio/ch/Util$BufferCache;
    invoke-virtual {v0, p0}, Lsun/nio/ch/Util$BufferCache;->offerLast(Ljava/nio/ByteBuffer;)Z

    #@1c
    move-result v1

    #@1d
    if-nez v1, :cond_2

    #@1f
    .line 211
    invoke-static {p0}, Lsun/nio/ch/Util;->free(Ljava/nio/ByteBuffer;)V

    #@22
    .line 206
    :cond_2
    return-void
.end method

.method static pageSize()I
    .locals 2

    #@0
    .prologue
    .line 357
    sget v0, Lsun/nio/ch/Util;->pageSize:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 358
    invoke-static {}, Lsun/nio/ch/Util;->unsafe()Lsun/misc/Unsafe;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Lsun/misc/Unsafe;->pageSize()I

    #@c
    move-result v0

    #@d
    sput v0, Lsun/nio/ch/Util;->pageSize:I

    #@f
    .line 359
    :cond_0
    sget v0, Lsun/nio/ch/Util;->pageSize:I

    #@11
    return v0
.end method

.method static releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 183
    invoke-static {p0}, Lsun/nio/ch/Util;->offerFirstTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    #@3
    .line 182
    return-void
.end method

.method static releaseTemporarySelector(Ljava/nio/channels/Selector;)V
    .locals 2
    .param p0, "sel"    # Ljava/nio/channels/Selector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 280
    invoke-virtual {p0}, Ljava/nio/channels/Selector;->selectNow()I

    #@3
    .line 281
    sget-boolean v0, Lsun/nio/ch/Util;->-assertionsDisabled:Z

    #@5
    if-nez v0, :cond_0

    #@7
    invoke-virtual {p0}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    #@a
    move-result-object v0

    #@b
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    #@e
    move-result v0

    #@f
    if-nez v0, :cond_0

    #@11
    new-instance v0, Ljava/lang/AssertionError;

    #@13
    const-string/jumbo v1, "Temporary selector not empty"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@19
    throw v0

    #@1a
    .line 282
    :cond_0
    sget-object v0, Lsun/nio/ch/Util;->localSelectorWrapper:Ljava/lang/ThreadLocal;

    #@1c
    const/4 v1, 0x0

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    #@20
    .line 277
    return-void
.end method

.method static subsequence([Ljava/nio/ByteBuffer;II)[Ljava/nio/ByteBuffer;
    .locals 4
    .param p0, "bs"    # [Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I
    .param p2, "length"    # I

    #@0
    .prologue
    .line 289
    if-nez p1, :cond_0

    #@2
    array-length v3, p0

    #@3
    if-ne p2, v3, :cond_0

    #@5
    .line 290
    return-object p0

    #@6
    .line 291
    :cond_0
    move v2, p2

    #@7
    .line 292
    .local v2, "n":I
    new-array v0, p2, [Ljava/nio/ByteBuffer;

    #@9
    .line 293
    .local v0, "bs2":[Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    #@c
    .line 294
    add-int v3, p1, v1

    #@e
    aget-object v3, p0, v3

    #@10
    aput-object v3, v0, v1

    #@12
    .line 293
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_0

    #@15
    .line 295
    :cond_1
    return-object v0
.end method

.method static ungrowableSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TE;>;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 299
    .local p0, "s":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    new-instance v0, Lsun/nio/ch/Util$2;

    #@2
    invoke-direct {v0, p0}, Lsun/nio/ch/Util$2;-><init>(Ljava/util/Set;)V

    #@5
    return-object v0
.end method

.method static unsafe()Lsun/misc/Unsafe;
    .locals 1

    #@0
    .prologue
    .line 351
    sget-object v0, Lsun/nio/ch/Util;->unsafe:Lsun/misc/Unsafe;

    #@2
    return-object v0
.end method
