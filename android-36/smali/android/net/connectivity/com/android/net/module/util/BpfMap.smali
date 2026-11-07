.class public Landroid/net/connectivity/com/android/net/module/util/BpfMap;
.super Ljava/lang/Object;
.source "BpfMap.java"

# interfaces
.implements Landroid/net/connectivity/com/android/net/module/util/IBpfMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Landroid/net/connectivity/com/android/net/module/util/Struct;",
        "V:",
        "Landroid/net/connectivity/com/android/net/module/util/Struct;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/net/connectivity/com/android/net/module/util/IBpfMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final blacklist BPF_ANY:I = 0x0

.field private static final blacklist BPF_EXIST:I = 0x2

.field private static final blacklist BPF_F_NO_PREALLOC:I = 0x1

.field public static final blacklist BPF_F_RDONLY:I = 0x8

.field public static final blacklist BPF_F_RDWR:I = 0x0

.field public static final blacklist BPF_F_RDWR_EXCLUSIVE:I = 0x18

.field public static final blacklist BPF_F_WRONLY:I = 0x10

.field public static final blacklist BPF_MAP_TYPE_HASH:I = 0x1

.field private static final blacklist BPF_NOEXIST:I = 0x1

.field private static blacklist sFdCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mKeyClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final blacklist mKeySize:I

.field private final blacklist mMapFd:Landroid/os/ParcelFileDescriptor;

.field private final blacklist mValueClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final blacklist mValueSize:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 48
    const-class v0, Landroid/net/connectivity/com/android/net/module/util/BpfMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-static {v0}, Landroid/net/connectivity/com/android/net/module/util/JniUtil;->getJniLibraryName(Ljava/lang/Package;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 73
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/net/connectivity/com/android/net/module/util/BpfMap;->sFdCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;)V
    .registers 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "flag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "TK;>;",
            "Ljava/lang/Class<",
            "TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 113
    .local p0, "this":Landroid/net/connectivity/com/android/net/module/util/BpfMap;, "Landroid/net/connectivity/com/android/net/module/util/BpfMap<TK;TV;>;"
    .local p3, "key":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p4, "value":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p3, p0, Landroid/net/connectivity/com/android/net/module/util/BpfMap;->mKeyClass:Ljava/lang/Class;

    .line 115
    iput-object p4, p0, Landroid/net/connectivity/com/android/net/module/util/BpfMap;->mValueClass:Ljava/lang/Class;

    .line 116
    invoke-static {p3}, Landroid/net/connectivity/com/android/net/module/util/Struct;->getSize(Ljava/lang/Class;)I

    move-result v0

    iput v0, p0, Landroid/net/connectivity/com/android/net/module/util/BpfMap;->mKeySize:I

    .line 117
    invoke-static {p4}, Landroid/net/connectivity/com/android/net/module/util/Struct;->getSize(Ljava/lang/Class;)I

    move-result v0

    iput v0, p0, Landroid/net/connectivity/com/android/net/module/util/BpfMap;->mValueSize:I

    .line 118
    iget v0, p0, Landroid/net/connectivity/com/android/net/module/util/BpfMap;->mKeySize:I

    iget v1, p0, Landroid/net/connectivity/com/android/net/module/util/BpfMap;->mValueSize:I

    invoke-static {p1, p2, v0, v1}, Landroid/net/connectivity/com/android/net/module/util/BpfMap;->cachedBpfFdGet(Ljava/lang/String;III)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/com/android/net/module/util/BpfMap;->mMapFd:Landroid/os/ParcelFileDescriptor;

    .line 119
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 5
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Ljava/lang/Class<",
            "TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 129
    .local p0, "this":Landroid/net/connectivity/com/android/net/module/util/BpfMap;, "Landroid/net/connectivity/com/android/net/module/util/BpfMap<TK;TV;>;"
    .local p2, "key":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p3, "value":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/net/connectivity/com/android/net/module/util/BpfMap;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;)V

    .line 130
    return-void
.end method

.method private static blacklist cachedBpfFdGet(Ljava/lang/String;III)Landroid/os/ParcelFileDescriptor;
    .registers 8
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "mode"    # I
    .param p2, "keySize"    # I
    .param p3, "valueSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 87
    and-int/lit16 p2, p2, 0x3ff

    .line 88
    const v0, 0xffff

    and-int/2addr p3, v0

    .line 89
    shl-int/lit8 v0, p1, 0x1a

    shl-int/lit8 v1, p2, 0x10

    xor-int/2addr v0, v1

    xor-int/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 91
    .local v0, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    sget-object v1, Landroid/net/connectivity/com/android/net/module/util/BpfMap;->sFdCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 92
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_23

    invoke-static {v1, p1}, Landroid/net/connectivity/com/android/net/module/util/BpfMap;->checkModeExclusivity(Landroid/os/ParcelFileDescriptor;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    return-object v2

    .line 94
    :cond_23
    const-class v2, Landroid/net/connectivity/com/android/net/module/util/BpfMap;

    monitor-enter v2

    .line 96
    :try_start_26
    sget-object v3, Landroid/net/connectivity/com/android/net/module/util/BpfMap;->sFdCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    move-object v1, v3

    .line 97
    if-eqz v1, :cond_37

    invoke-static {v1, p1}, Landroid/net/connectivity/com/android/net/module/util/BpfMap;->checkModeExclusivity(Landroid/os/ParcelFileDescriptor;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    monitor-exit v2

    return-object v3

    .line 99
    :cond_37
    invoke-static {p0, p1, p2, p3}, Landroid/net/connectivity/com/android/net/module/util/BpfMap;->nativeBpfFdGet(Ljava/lang/String;III)I

    move-result v3

    invoke-static {v3}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    move-object v1, v3

    .line 100
    sget-object v3, Landroid/net/connectivity/com/android/net/module/util/BpfMap;->sFdCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    monitor-exit v2

    return-object v1

    .line 102
    :catchall_47
    move-exception v3

    monitor-exit v2
    :try_end_49
    .catchall {:try_start_26 .. :try_end_49} :catchall_47

    throw v3
.end method

.method private static blacklist checkModeExclusivity(Landroid/os/ParcelFileDescriptor;I)Landroid/os/ParcelFileDescriptor;
    .registers 5
    .param p0, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 78
    const/16 v0, 0x18

    if-eq p1, v0, :cond_5

    .line 79
    return-object p0

    .line 78
    :cond_5
    new-instance v0, Landroid/system/ErrnoException;

    const-string v1, "cachedBpfFdGet"

    sget v2, Landroid/system/OsConstants;->EBUSY:I

    invoke-direct {v0, v1, v2}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private blacklist getNextKeyInternal(Landroid/net/connectivity/com/android/net/module/util/Struct;)Landroid/net/connectivity/com/android/net/module/util/Struct;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 214
    .local p0, "this":Landroid/net/connectivity/com/android/net/module/util/BpfMap;, "Landroid/net/connectivity/com/android/net/module/util/BpfMap<TK;TV;>;"
    .local p1, "key":Landroid/net/connectivity/com/android/net/module/util/Struct;, "TK;"
    iget v0, p0, Landroid/net/connectivity/com/android/net/module/util/BpfMap;->mKeySize:I

    new-array v0, v0, [B

    .line 216
    .local v0, "rawKey":[B
    iget-object v1, p0, Landroid/net/connectivity/com/android/net/module/util/BpfMap;->mMapFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v1

    .line 217
    const/4 v2, 0x0

    if-nez p1, :cond_f

    move-object v3, v2

    goto :goto_13

    :cond_f
    invoke-virtual {p1}, Landroid/net/connectivity/com/android/net/module/util/Struct;->writeToBytes()[B

    move-result-object v3

    .line 216
    :goto_13
    invoke-direct {p0, v1, v3, v0}, Landroid/net/connectivity/com/android/net/module/util/BpfMap;->nativeGetNextMapKey(I[B[B)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 218
    return-object v2

    .line 220
    :cond_1a
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 221
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 222
    iget-object v2, p0, Landroid/net/connectivity/com/android/net/module/util/BpfMap;->mKeyClass:Ljava/lang/Class;

    invoke-static {v2, v1}, Landroid/net/connectivity/com/android/net/module/util/Struct;->parse(Ljava/lang/Class;Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/connectivity/com/android/net/module/util/Struct;

    return-object v2
.end method

.method private static native blacklist nativeBpfFdGet(Ljava/lang/String;III)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation
.end method

.method private native blacklist nativeDeleteMapEntry(I[B)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method private native blacklist nativeFindMapEntry(I[B[B)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method private native blacklist nativeGetNextMapKey(I[B[B)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method private static native blacklist nativeSynchronizeKernelRCU()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method private native blacklist nativeWriteToMapEntry(I[B[BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public static blacklist synchronizeKernelRCU()V
    .registers 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 267
    invoke-static {}, Landroid/net/connectivity/com/android/net/module/util/BpfMap;->nativeSynchronizeKernelRCU()V

    .line 268
    return-void
.end method


# virtual methods
.method public blacklist containsKey(Landroid/net/connectivity/com/android/net/module/util/Struct;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 246
    .local p0, "this":Landroid/net/connectivity/com/android/net/module/util/BpfMap;, "Landroid/net/connectivity/com/android/net/module/util/BpfMap<TK;TV;>;"
    .local p1, "key":Landroid/net/connectivity/com/android/net/module/util/Struct;, "TK;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget v0, p0, Landroid/net/connectivity/com/android/net/module/util/BpfMap;->mValueSize:I

    new-array v0, v0, [B

    .line 249
    .local v0, "rawValue":[B
    iget-object v1, p0, Landroid/net/connectivity/com/android/net/module/util/BpfMap;->mMapFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v1

    invoke-virtual {p1}, Landroid/net/connectivity/com/android/net/module/util/Struct;->writeToBytes()[B

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Landroid/net/connectivity/com/android/net/module/util/BpfMap;->nativeFindMapEntry(I[B[B)Z

    move-result v1

    return v1
.end method

.method public blacklist deleteEntry(Landroid/net/connectivity/com/android/net/module/util/Struct;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 210
    .local p0, "this":Landroid/net/connectivity/com/android/net/module/util/BpfMap;, "Landroid/net/connectivity/com/android/net/module/util/BpfMap<TK;TV;>;"
    .local p1, "key":Landroid/net/connectivity/com/android/net/module/util/Struct;, "TK;"
    iget-object v0, p0, Landroid/net/connectivity/com/android/net/module/util/BpfMap;->mMapFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v0

    invoke-virtual {p1}, Landroid/net/connectivity/com/android/net/module/util/Struct;->writeToBytes()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/net/connectivity/com/android/net/module/util/BpfMap;->nativeDeleteMapEntry(I[B)Z

    move-result v0

    return v0
.end method

.method public blacklist getFirstKey()Landroid/net/connectivity/com/android/net/module/util/Struct;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 240
    .local p0, "this":Landroid/net/connectivity/com/android/net/module/util/BpfMap;, "Landroid/net/connectivity/com/android/net/module/util/BpfMap<TK;TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/net/connectivity/com/android/net/module/util/BpfMap;->getNextKeyInternal(Landroid/net/connectivity/com/android/net/module/util/Struct;)Landroid/net/connectivity/com/android/net/module/util/Struct;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getNextKey(Landroid/net/connectivity/com/android/net/module/util/Struct;)Landroid/net/connectivity/com/android/net/module/util/Struct;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 233
    .local p0, "this":Landroid/net/connectivity/com/android/net/module/util/BpfMap;, "Landroid/net/connectivity/com/android/net/module/util/BpfMap<TK;TV;>;"
    .local p1, "key":Landroid/net/connectivity/com/android/net/module/util/Struct;, "TK;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    invoke-direct {p0, p1}, Landroid/net/connectivity/com/android/net/module/util/BpfMap;->getNextKeyInternal(Landroid/net/connectivity/com/android/net/module/util/Struct;)Landroid/net/connectivity/com/android/net/module/util/Struct;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getValue(Landroid/net/connectivity/com/android/net/module/util/Struct;)Landroid/net/connectivity/com/android/net/module/util/Struct;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 255
    .local p0, "this":Landroid/net/connectivity/com/android/net/module/util/BpfMap;, "Landroid/net/connectivity/com/android/net/module/util/BpfMap<TK;TV;>;"
    .local p1, "key":Landroid/net/connectivity/com/android/net/module/util/Struct;, "TK;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget v0, p0, Landroid/net/connectivity/com/android/net/module/util/BpfMap;->mValueSize:I

    new-array v0, v0, [B

    .line 258
    .local v0, "rawValue":[B
    iget-object v1, p0, Landroid/net/connectivity/com/android/net/module/util/BpfMap;->mMapFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v1

    invoke-virtual {p1}, Landroid/net/connectivity/com/android/net/module/util/Struct;->writeToBytes()[B

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Landroid/net/connectivity/com/android/net/module/util/BpfMap;->nativeFindMapEntry(I[B[B)Z

    move-result v1

    if-nez v1, :cond_19

    const/4 v1, 0x0

    return-object v1

    .line 260
    :cond_19
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 261
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 262
    iget-object v2, p0, Landroid/net/connectivity/com/android/net/module/util/BpfMap;->mValueClass:Ljava/lang/Class;

    invoke-static {v2, v1}, Landroid/net/connectivity/com/android/net/module/util/Struct;->parse(Ljava/lang/Class;Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/connectivity/com/android/net/module/util/Struct;

    return-object v2
.end method

.method public blacklist insertEntry(Landroid/net/connectivity/com/android/net/module/util/Struct;Landroid/net/connectivity/com/android/net/module/util/Struct;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 149
    .local p0, "this":Landroid/net/connectivity/com/android/net/module/util/BpfMap;, "Landroid/net/connectivity/com/android/net/module/util/BpfMap<TK;TV;>;"
    .local p1, "key":Landroid/net/connectivity/com/android/net/module/util/Struct;, "TK;"
    .local p2, "value":Landroid/net/connectivity/com/android/net/module/util/Struct;, "TV;"
    :try_start_0
    iget-object v0, p0, Landroid/net/connectivity/com/android/net/module/util/BpfMap;->mMapFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v0

    invoke-virtual {p1}, Landroid/net/connectivity/com/android/net/module/util/Struct;->writeToBytes()[B

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/connectivity/com/android/net/module/util/Struct;->writeToBytes()[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/net/connectivity/com/android/net/module/util/BpfMap;->nativeWriteToMapEntry(I[B[BI)V
    :try_end_12
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_12} :catch_14

    .line 155
    nop

    .line 156
    return-void

    .line 151
    :catch_14
    move-exception v0

    .line 152
    .local v0, "e":Landroid/system/ErrnoException;
    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    sget v2, Landroid/system/OsConstants;->EEXIST:I

    if-ne v1, v2, :cond_34

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already exists"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 154
    :cond_34
    throw v0
.end method

.method public blacklist insertOrReplaceEntry(Landroid/net/connectivity/com/android/net/module/util/Struct;Landroid/net/connectivity/com/android/net/module/util/Struct;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 185
    .local p0, "this":Landroid/net/connectivity/com/android/net/module/util/BpfMap;, "Landroid/net/connectivity/com/android/net/module/util/BpfMap<TK;TV;>;"
    .local p1, "key":Landroid/net/connectivity/com/android/net/module/util/Struct;, "TK;"
    .local p2, "value":Landroid/net/connectivity/com/android/net/module/util/Struct;, "TV;"
    :try_start_0
    iget-object v0, p0, Landroid/net/connectivity/com/android/net/module/util/BpfMap;->mMapFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v0

    invoke-virtual {p1}, Landroid/net/connectivity/com/android/net/module/util/Struct;->writeToBytes()[B

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/connectivity/com/android/net/module/util/Struct;->writeToBytes()[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/net/connectivity/com/android/net/module/util/BpfMap;->nativeWriteToMapEntry(I[B[BI)V
    :try_end_12
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_12} :catch_13

    .line 187
    return v3

    .line 188
    :catch_13
    move-exception v0

    .line 189
    .local v0, "e":Landroid/system/ErrnoException;
    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    sget v2, Landroid/system/OsConstants;->EEXIST:I

    if-ne v1, v2, :cond_37

    .line 192
    .end local v0    # "e":Landroid/system/ErrnoException;
    const/4 v0, 0x0

    :try_start_1b
    iget-object v1, p0, Landroid/net/connectivity/com/android/net/module/util/BpfMap;->mMapFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v1

    invoke-virtual {p1}, Landroid/net/connectivity/com/android/net/module/util/Struct;->writeToBytes()[B

    move-result-object v2

    invoke-virtual {p2}, Landroid/net/connectivity/com/android/net/module/util/Struct;->writeToBytes()[B

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {p0, v1, v2, v3, v4}, Landroid/net/connectivity/com/android/net/module/util/BpfMap;->nativeWriteToMapEntry(I[B[BI)V
    :try_end_2d
    .catch Landroid/system/ErrnoException; {:try_start_1b .. :try_end_2d} :catch_2e

    .line 194
    return v0

    .line 195
    :catch_2e
    move-exception v1

    .line 196
    .local v1, "e":Landroid/system/ErrnoException;
    iget v2, v1, Landroid/system/ErrnoException;->errno:I

    sget v3, Landroid/system/OsConstants;->ENOENT:I

    if-ne v2, v3, :cond_36

    .line 204
    .end local v1    # "e":Landroid/system/ErrnoException;
    return v0

    .line 196
    .restart local v1    # "e":Landroid/system/ErrnoException;
    :cond_36
    throw v1

    .line 189
    .end local v1    # "e":Landroid/system/ErrnoException;
    .restart local v0    # "e":Landroid/system/ErrnoException;
    :cond_37
    throw v0
.end method

.method public blacklist replaceEntry(Landroid/net/connectivity/com/android/net/module/util/Struct;Landroid/net/connectivity/com/android/net/module/util/Struct;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 166
    .local p0, "this":Landroid/net/connectivity/com/android/net/module/util/BpfMap;, "Landroid/net/connectivity/com/android/net/module/util/BpfMap<TK;TV;>;"
    .local p1, "key":Landroid/net/connectivity/com/android/net/module/util/Struct;, "TK;"
    .local p2, "value":Landroid/net/connectivity/com/android/net/module/util/Struct;, "TV;"
    :try_start_0
    iget-object v0, p0, Landroid/net/connectivity/com/android/net/module/util/BpfMap;->mMapFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v0

    invoke-virtual {p1}, Landroid/net/connectivity/com/android/net/module/util/Struct;->writeToBytes()[B

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/connectivity/com/android/net/module/util/Struct;->writeToBytes()[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/net/connectivity/com/android/net/module/util/BpfMap;->nativeWriteToMapEntry(I[B[BI)V
    :try_end_12
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_12} :catch_14

    .line 172
    nop

    .line 173
    return-void

    .line 168
    :catch_14
    move-exception v0

    .line 169
    .local v0, "e":Landroid/system/ErrnoException;
    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    sget v2, Landroid/system/OsConstants;->ENOENT:I

    if-ne v1, v2, :cond_34

    new-instance v1, Ljava/util/NoSuchElementException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 171
    :cond_34
    throw v0
.end method

.method public blacklist updateEntry(Landroid/net/connectivity/com/android/net/module/util/Struct;Landroid/net/connectivity/com/android/net/module/util/Struct;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 138
    .local p0, "this":Landroid/net/connectivity/com/android/net/module/util/BpfMap;, "Landroid/net/connectivity/com/android/net/module/util/BpfMap<TK;TV;>;"
    .local p1, "key":Landroid/net/connectivity/com/android/net/module/util/Struct;, "TK;"
    .local p2, "value":Landroid/net/connectivity/com/android/net/module/util/Struct;, "TV;"
    iget-object v0, p0, Landroid/net/connectivity/com/android/net/module/util/BpfMap;->mMapFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v0

    invoke-virtual {p1}, Landroid/net/connectivity/com/android/net/module/util/Struct;->writeToBytes()[B

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/connectivity/com/android/net/module/util/Struct;->writeToBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/net/connectivity/com/android/net/module/util/BpfMap;->nativeWriteToMapEntry(I[B[BI)V

    .line 139
    return-void
.end method
