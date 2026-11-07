.class public final Ljava/nio/NioUtils;
.super Ljava/lang/Object;
.source "NioUtils.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static greylist test-api freeDirectBuffer(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 53
    if-nez p0, :cond_3

    .line 54
    return-void

    .line 57
    :cond_3
    move-object v0, p0

    check-cast v0, Ljava/nio/DirectByteBuffer;

    .line 59
    .local v0, "dbb":Ljava/nio/DirectByteBuffer;
    iget-object v1, v0, Ljava/nio/DirectByteBuffer;->cleaner:Lsun/misc/Cleaner;

    if-eqz v1, :cond_f

    .line 60
    iget-object v1, v0, Ljava/nio/DirectByteBuffer;->cleaner:Lsun/misc/Cleaner;

    invoke-virtual {v1}, Lsun/misc/Cleaner;->clean()V

    .line 63
    :cond_f
    iget-object v1, v0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    invoke-virtual {v1}, Ljava/nio/DirectByteBuffer$MemoryRef;->free()V

    .line 64
    return-void
.end method

.method public static greylist-max-o getFD(Ljava/nio/channels/FileChannel;)Ljava/io/FileDescriptor;
    .registers 2
    .param p0, "fc"    # Ljava/nio/channels/FileChannel;

    .line 72
    move-object v0, p0

    check-cast v0, Lsun/nio/ch/FileChannelImpl;

    iget-object v0, v0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public static greylist-max-o newFileChannel(Ljava/io/Closeable;Ljava/io/FileDescriptor;I)Ljava/nio/channels/FileChannel;
    .registers 8
    .param p0, "ioObject"    # Ljava/io/Closeable;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "mode"    # I

    .line 82
    sget v0, Landroid/system/OsConstants;->O_ACCMODE:I

    and-int/2addr v0, p2

    sget v1, Landroid/system/OsConstants;->O_WRONLY:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_b

    move v0, v2

    goto :goto_c

    :cond_b
    move v0, v3

    .line 83
    .local v0, "readable":Z
    :goto_c
    sget v1, Landroid/system/OsConstants;->O_ACCMODE:I

    and-int/2addr v1, p2

    sget v4, Landroid/system/OsConstants;->O_RDONLY:I

    if-eq v1, v4, :cond_14

    goto :goto_15

    :cond_14
    move v2, v3

    .line 84
    .local v2, "writable":Z
    :goto_15
    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v2, p0}, Lsun/nio/ch/FileChannelImpl;->open(Ljava/io/FileDescriptor;Ljava/lang/String;ZZLjava/lang/Object;)Ljava/nio/channels/FileChannel;

    move-result-object v1

    return-object v1
.end method

.method public static greylist test-api unsafeArray(Ljava/nio/ByteBuffer;)[B
    .registers 2
    .param p0, "b"    # Ljava/nio/ByteBuffer;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 100
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public static greylist test-api unsafeArrayOffset(Ljava/nio/ByteBuffer;)I
    .registers 2
    .param p0, "b"    # Ljava/nio/ByteBuffer;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 115
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    return v0
.end method
