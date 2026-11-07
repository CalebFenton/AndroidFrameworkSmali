.class Lsun/nio/fs/NativeBuffers;
.super Ljava/lang/Object;
.source "NativeBuffers.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist TEMP_BUF_POOL_SIZE:I = 0x3

.field private static blacklist threadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[",
            "Lsun/nio/fs/NativeBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist unsafe:Ljdk/internal/misc/Unsafe;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 34
    nop

    .line 37
    invoke-static {}, Ljdk/internal/misc/Unsafe;->getUnsafe()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lsun/nio/fs/NativeBuffers;->unsafe:Ljdk/internal/misc/Unsafe;

    .line 40
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lsun/nio/fs/NativeBuffers;->threadLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist allocNativeBuffer(I)Lsun/nio/fs/NativeBuffer;
    .registers 2
    .param p0, "size"    # I

    .line 48
    const/16 v0, 0x800

    if-ge p0, v0, :cond_6

    const/16 p0, 0x800

    .line 49
    :cond_6
    new-instance v0, Lsun/nio/fs/NativeBuffer;

    invoke-direct {v0, p0}, Lsun/nio/fs/NativeBuffer;-><init>(I)V

    return-object v0
.end method

.method static blacklist asNativeBuffer([B)Lsun/nio/fs/NativeBuffer;
    .registers 2
    .param p0, "cstr"    # [B

    .line 143
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lsun/nio/fs/NativeBuffers;->getNativeBuffer(I)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    .line 144
    .local v0, "buffer":Lsun/nio/fs/NativeBuffer;
    invoke-static {p0, v0}, Lsun/nio/fs/NativeBuffers;->copyCStringToNativeBuffer([BLsun/nio/fs/NativeBuffer;)V

    .line 145
    return-object v0
.end method

.method static blacklist copyCStringToNativeBuffer([BLsun/nio/fs/NativeBuffer;)V
    .registers 10
    .param p0, "cstr"    # [B
    .param p1, "buffer"    # Lsun/nio/fs/NativeBuffer;

    .line 127
    array-length v0, p0

    int-to-long v0, v0

    .line 128
    .local v0, "len":J
    nop

    .line 131
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    int-to-long v3, v2

    cmp-long v3, v3, v0

    if-gez v3, :cond_19

    .line 132
    sget-object v3, Lsun/nio/fs/NativeBuffers;->unsafe:Ljdk/internal/misc/Unsafe;

    invoke-virtual {p1}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v4

    int-to-long v6, v2

    add-long/2addr v4, v6

    aget-byte v6, p0, v2

    invoke-virtual {v3, v4, v5, v6}, Ljdk/internal/misc/Unsafe;->putByte(JB)V

    .line 131
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 135
    .end local v2    # "i":I
    :cond_19
    sget-object v2, Lsun/nio/fs/NativeBuffers;->unsafe:Ljdk/internal/misc/Unsafe;

    invoke-virtual {p1}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v3

    add-long/2addr v3, v0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Ljdk/internal/misc/Unsafe;->putByte(JB)V

    .line 136
    return-void
.end method

.method static blacklist getNativeBuffer(I)Lsun/nio/fs/NativeBuffer;
    .registers 3
    .param p0, "size"    # I

    .line 77
    invoke-static {p0}, Lsun/nio/fs/NativeBuffers;->getNativeBufferFromCache(I)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    .line 78
    .local v0, "buffer":Lsun/nio/fs/NativeBuffer;
    if-eqz v0, :cond_b

    .line 79
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsun/nio/fs/NativeBuffer;->setOwner(Ljava/lang/Object;)V

    .line 80
    return-object v0

    .line 82
    :cond_b
    invoke-static {p0}, Lsun/nio/fs/NativeBuffers;->allocNativeBuffer(I)Lsun/nio/fs/NativeBuffer;

    move-result-object v1

    return-object v1
.end method

.method static blacklist getNativeBufferFromCache(I)Lsun/nio/fs/NativeBuffer;
    .registers 6
    .param p0, "size"    # I

    .line 58
    sget-object v0, Lsun/nio/fs/NativeBuffers;->threadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsun/nio/fs/NativeBuffer;

    .line 59
    .local v0, "buffers":[Lsun/nio/fs/NativeBuffer;
    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 60
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    const/4 v3, 0x3

    if-ge v2, v3, :cond_1f

    .line 61
    aget-object v3, v0, v2

    .line 62
    .local v3, "buffer":Lsun/nio/fs/NativeBuffer;
    if-eqz v3, :cond_1c

    invoke-virtual {v3}, Lsun/nio/fs/NativeBuffer;->size()I

    move-result v4

    if-lt v4, p0, :cond_1c

    .line 63
    aput-object v1, v0, v2

    .line 64
    return-object v3

    .line 60
    .end local v3    # "buffer":Lsun/nio/fs/NativeBuffer;
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 68
    .end local v2    # "i":I
    :cond_1f
    return-object v1
.end method

.method static blacklist releaseNativeBuffer(Lsun/nio/fs/NativeBuffer;)V
    .registers 7
    .param p0, "buffer"    # Lsun/nio/fs/NativeBuffer;

    .line 92
    sget-object v0, Lsun/nio/fs/NativeBuffers;->threadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsun/nio/fs/NativeBuffer;

    .line 93
    .local v0, "buffers":[Lsun/nio/fs/NativeBuffer;
    const/4 v1, 0x3

    if-nez v0, :cond_16

    .line 94
    new-array v0, v1, [Lsun/nio/fs/NativeBuffer;

    .line 95
    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 96
    sget-object v1, Lsun/nio/fs/NativeBuffers;->threadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 97
    return-void

    .line 100
    :cond_16
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    if-ge v2, v1, :cond_23

    .line 101
    aget-object v3, v0, v2

    if-nez v3, :cond_20

    .line 102
    aput-object p0, v0, v2

    .line 103
    return-void

    .line 100
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 107
    .end local v2    # "i":I
    :cond_23
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_24
    if-ge v2, v1, :cond_3f

    .line 108
    aget-object v3, v0, v2

    .line 109
    .local v3, "existing":Lsun/nio/fs/NativeBuffer;
    invoke-virtual {v3}, Lsun/nio/fs/NativeBuffer;->size()I

    move-result v4

    invoke-virtual {p0}, Lsun/nio/fs/NativeBuffer;->size()I

    move-result v5

    if-ge v4, v5, :cond_3c

    .line 110
    invoke-virtual {v3}, Lsun/nio/fs/NativeBuffer;->cleaner()Lsun/misc/Cleaner;

    move-result-object v1

    invoke-virtual {v1}, Lsun/misc/Cleaner;->clean()V

    .line 111
    aput-object p0, v0, v2

    .line 112
    return-void

    .line 107
    .end local v3    # "existing":Lsun/nio/fs/NativeBuffer;
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 117
    .end local v2    # "i":I
    :cond_3f
    invoke-virtual {p0}, Lsun/nio/fs/NativeBuffer;->cleaner()Lsun/misc/Cleaner;

    move-result-object v1

    invoke-virtual {v1}, Lsun/misc/Cleaner;->clean()V

    .line 118
    return-void
.end method
