.class public Landroid/filterfw/core/VertexFrame;
.super Landroid/filterfw/core/Frame;
.source "VertexFrame.java"


# instance fields
.field private vertexFrameId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 129
    const-string/jumbo v0, "filterfw"

    #@3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    #@6
    .line 30
    return-void
.end method

.method constructor <init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V
    .locals 2
    .param p1, "format"    # Landroid/filterfw/core/FrameFormat;
    .param p2, "frameManager"    # Landroid/filterfw/core/FrameManager;

    #@0
    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/Frame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V

    #@3
    .line 32
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/filterfw/core/VertexFrame;->vertexFrameId:I

    #@6
    .line 36
    invoke-virtual {p0}, Landroid/filterfw/core/VertexFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getSize()I

    #@d
    move-result v0

    #@e
    if-gtz v0, :cond_0

    #@10
    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    const-string/jumbo v1, "Initializing vertex frame with zero size!"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 39
    :cond_0
    invoke-virtual {p0}, Landroid/filterfw/core/VertexFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getSize()I

    #@20
    move-result v0

    #@21
    invoke-direct {p0, v0}, Landroid/filterfw/core/VertexFrame;->nativeAllocate(I)Z

    #@24
    move-result v0

    #@25
    if-nez v0, :cond_1

    #@27
    .line 40
    new-instance v0, Ljava/lang/RuntimeException;

    #@29
    const-string/jumbo v1, "Could not allocate vertex frame!"

    #@2c
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v0

    #@30
    .line 34
    :cond_1
    return-void
.end method

.method private native getNativeVboId()I
.end method

.method private native nativeAllocate(I)Z
.end method

.method private native nativeDeallocate()Z
.end method

.method private native setNativeData([BII)Z
.end method

.method private native setNativeFloats([F)Z
.end method

.method private native setNativeInts([I)Z
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 2

    #@0
    .prologue
    .line 110
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    const-string/jumbo v1, "Vertex frames do not support reading data!"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public getData()Ljava/nio/ByteBuffer;
    .locals 2

    #@0
    .prologue
    .line 100
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    const-string/jumbo v1, "Vertex frames do not support reading data!"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public getFloats()[F
    .locals 2

    #@0
    .prologue
    .line 84
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    const-string/jumbo v1, "Vertex frames do not support reading data!"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public getInts()[I
    .locals 2

    #@0
    .prologue
    .line 71
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    const-string/jumbo v1, "Vertex frames do not support reading data!"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public getObjectValue()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 58
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    const-string/jumbo v1, "Vertex frames do not support reading data!"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public getVboId()I
    .locals 1

    #@0
    .prologue
    .line 120
    invoke-direct {p0}, Landroid/filterfw/core/VertexFrame;->getNativeVboId()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method protected declared-synchronized hasNativeAllocation()Z
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 47
    :try_start_0
    iget v0, p0, Landroid/filterfw/core/VertexFrame;->vertexFrameId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    const/4 v1, -0x1

    #@4
    if-eq v0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    monitor-exit p0

    #@8
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method

.method protected declared-synchronized releaseNativeAllocation()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 52
    :try_start_0
    invoke-direct {p0}, Landroid/filterfw/core/VertexFrame;->nativeDeallocate()Z

    #@4
    .line 53
    const/4 v0, -0x1

    #@5
    iput v0, p0, Landroid/filterfw/core/VertexFrame;->vertexFrameId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    .line 51
    return-void

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 105
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    const-string/jumbo v1, "Unsupported: Cannot set vertex frame bitmap value!"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public setData(Ljava/nio/ByteBuffer;II)V
    .locals 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 89
    invoke-virtual {p0}, Landroid/filterfw/core/VertexFrame;->assertFrameMutable()V

    #@3
    .line 90
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    #@6
    move-result-object v0

    #@7
    .line 91
    .local v0, "bytes":[B
    invoke-virtual {p0}, Landroid/filterfw/core/VertexFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getSize()I

    #@e
    move-result v1

    #@f
    array-length v2, v0

    #@10
    if-eq v1, v2, :cond_0

    #@12
    .line 92
    new-instance v1, Ljava/lang/RuntimeException;

    #@14
    const-string/jumbo v2, "Data size in setData does not match vertex frame size!"

    #@17
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v1

    #@1b
    .line 93
    :cond_0
    invoke-direct {p0, v0, p2, p3}, Landroid/filterfw/core/VertexFrame;->setNativeData([BII)Z

    #@1e
    move-result v1

    #@1f
    if-nez v1, :cond_1

    #@21
    .line 94
    new-instance v1, Ljava/lang/RuntimeException;

    #@23
    const-string/jumbo v2, "Could not set vertex frame data!"

    #@26
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@29
    throw v1

    #@2a
    .line 88
    :cond_1
    return-void
.end method

.method public setDataFromFrame(Landroid/filterfw/core/Frame;)V
    .locals 0
    .param p1, "frame"    # Landroid/filterfw/core/Frame;

    #@0
    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    #@3
    .line 114
    return-void
.end method

.method public setFloats([F)V
    .locals 2
    .param p1, "floats"    # [F

    #@0
    .prologue
    .line 76
    invoke-virtual {p0}, Landroid/filterfw/core/VertexFrame;->assertFrameMutable()V

    #@3
    .line 77
    invoke-direct {p0, p1}, Landroid/filterfw/core/VertexFrame;->setNativeFloats([F)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 78
    new-instance v0, Ljava/lang/RuntimeException;

    #@b
    const-string/jumbo v1, "Could not set int values for vertex frame!"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 75
    :cond_0
    return-void
.end method

.method public setInts([I)V
    .locals 2
    .param p1, "ints"    # [I

    #@0
    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/filterfw/core/VertexFrame;->assertFrameMutable()V

    #@3
    .line 64
    invoke-direct {p0, p1}, Landroid/filterfw/core/VertexFrame;->setNativeInts([I)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 65
    new-instance v0, Ljava/lang/RuntimeException;

    #@b
    const-string/jumbo v1, "Could not set int values for vertex frame!"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 62
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "VertexFrame ("

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0}, Landroid/filterfw/core/VertexFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    const-string/jumbo v1, ") with VBO ID "

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {p0}, Landroid/filterfw/core/VertexFrame;->getVboId()I

    #@1e
    move-result v1

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    return-object v0
.end method
