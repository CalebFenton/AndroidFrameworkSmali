.class public final Ljava/nio/NioUtils;
.super Ljava/lang/Object;
.source "NioUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static freeDirectBuffer(Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 34
    if-nez p0, :cond_0

    #@2
    .line 35
    return-void

    #@3
    .line 37
    :cond_0
    check-cast p0, Ljava/nio/DirectByteBuffer;

    #@5
    .end local p0    # "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->free()V

    #@8
    .line 33
    return-void
.end method

.method public static getFD(Ljava/nio/channels/FileChannel;)Ljava/io/FileDescriptor;
    .locals 1
    .param p0, "fc"    # Ljava/nio/channels/FileChannel;

    #@0
    .prologue
    .line 44
    check-cast p0, Ljava/nio/FileChannelImpl;

    #@2
    .end local p0    # "fc":Ljava/nio/channels/FileChannel;
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->getFD()Ljava/io/FileDescriptor;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static newFileChannel(Ljava/io/Closeable;Ljava/io/FileDescriptor;I)Ljava/nio/channels/FileChannel;
    .locals 1
    .param p0, "ioObject"    # Ljava/io/Closeable;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "mode"    # I

    #@0
    .prologue
    .line 51
    new-instance v0, Ljava/nio/FileChannelImpl;

    #@2
    invoke-direct {v0, p0, p1, p2}, Ljava/nio/FileChannelImpl;-><init>(Ljava/io/Closeable;Ljava/io/FileDescriptor;I)V

    #@5
    return-object v0
.end method

.method public static unsafeArray(Ljava/nio/ByteBuffer;)[B
    .locals 1
    .param p0, "b"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 59
    check-cast p0, Ljava/nio/ByteArrayBuffer;

    #@2
    .end local p0    # "b":Ljava/nio/ByteBuffer;
    iget-object v0, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    #@4
    return-object v0
.end method

.method public static unsafeArrayOffset(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p0, "b"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 67
    check-cast p0, Ljava/nio/ByteArrayBuffer;

    #@2
    .end local p0    # "b":Ljava/nio/ByteBuffer;
    iget v0, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    #@4
    return v0
.end method
