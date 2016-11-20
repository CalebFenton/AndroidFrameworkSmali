.class public final Ljava/nio/NioUtils;
.super Ljava/lang/Object;
.source "NioUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static freeDirectBuffer(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 39
    if-nez p0, :cond_0

    #@2
    .line 40
    return-void

    #@3
    :cond_0
    move-object v0, p0

    #@4
    .line 43
    check-cast v0, Ljava/nio/DirectByteBuffer;

    #@6
    .line 45
    .local v0, "dbb":Ljava/nio/DirectByteBuffer;
    iget-object v1, v0, Ljava/nio/DirectByteBuffer;->cleaner:Lsun/misc/Cleaner;

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 46
    iget-object v1, v0, Ljava/nio/DirectByteBuffer;->cleaner:Lsun/misc/Cleaner;

    #@c
    invoke-virtual {v1}, Lsun/misc/Cleaner;->clean()V

    #@f
    .line 49
    :cond_1
    iget-object v1, v0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    #@11
    invoke-virtual {v1}, Ljava/nio/DirectByteBuffer$MemoryRef;->free()V

    #@14
    .line 38
    return-void
.end method

.method public static getFD(Ljava/nio/channels/FileChannel;)Ljava/io/FileDescriptor;
    .locals 1
    .param p0, "fc"    # Ljava/nio/channels/FileChannel;

    #@0
    .prologue
    .line 56
    check-cast p0, Lsun/nio/ch/FileChannelImpl;

    #@2
    .end local p0    # "fc":Ljava/nio/channels/FileChannel;
    iget-object v0, p0, Lsun/nio/ch/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@4
    return-object v0
.end method

.method public static newFileChannel(Ljava/io/Closeable;Ljava/io/FileDescriptor;I)Ljava/nio/channels/FileChannel;
    .locals 6
    .param p0, "ioObject"    # Ljava/io/Closeable;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "mode"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 63
    sget v0, Landroid/system/OsConstants;->O_RDONLY:I

    #@3
    sget v1, Landroid/system/OsConstants;->O_RDWR:I

    #@5
    or-int/2addr v0, v1

    #@6
    sget v1, Landroid/system/OsConstants;->O_SYNC:I

    #@8
    or-int/2addr v0, v1

    #@9
    and-int/2addr v0, p2

    #@a
    if-eqz v0, :cond_1

    #@c
    const/4 v2, 0x1

    #@d
    .line 64
    .local v2, "readable":Z
    :goto_0
    sget v0, Landroid/system/OsConstants;->O_WRONLY:I

    #@f
    sget v1, Landroid/system/OsConstants;->O_RDWR:I

    #@11
    or-int/2addr v0, v1

    #@12
    sget v1, Landroid/system/OsConstants;->O_SYNC:I

    #@14
    or-int/2addr v0, v1

    #@15
    and-int/2addr v0, p2

    #@16
    if-eqz v0, :cond_2

    #@18
    const/4 v3, 0x1

    #@19
    .line 65
    .local v3, "writable":Z
    :goto_1
    sget v0, Landroid/system/OsConstants;->O_APPEND:I

    #@1b
    and-int/2addr v0, p2

    #@1c
    if-eqz v0, :cond_0

    #@1e
    const/4 v4, 0x1

    #@1f
    .line 66
    .local v4, "append":Z
    :cond_0
    const/4 v1, 0x0

    #@20
    move-object v0, p1

    #@21
    move-object v5, p0

    #@22
    invoke-static/range {v0 .. v5}, Lsun/nio/ch/FileChannelImpl;->open(Ljava/io/FileDescriptor;Ljava/lang/String;ZZZLjava/lang/Object;)Ljava/nio/channels/FileChannel;

    #@25
    move-result-object v0

    #@26
    return-object v0

    #@27
    .line 63
    .end local v2    # "readable":Z
    .end local v3    # "writable":Z
    .end local v4    # "append":Z
    :cond_1
    const/4 v2, 0x0

    #@28
    .restart local v2    # "readable":Z
    goto :goto_0

    #@29
    .line 64
    :cond_2
    const/4 v3, 0x0

    #@2a
    .restart local v3    # "writable":Z
    goto :goto_1
.end method

.method public static unsafeArray(Ljava/nio/ByteBuffer;)[B
    .locals 1
    .param p0, "b"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 74
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static unsafeArrayOffset(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p0, "b"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 82
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    #@3
    move-result v0

    #@4
    return v0
.end method
