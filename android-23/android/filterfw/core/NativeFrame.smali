.class public Landroid/filterfw/core/NativeFrame;
.super Landroid/filterfw/core/Frame;
.source "NativeFrame.java"


# instance fields
.field private nativeFrameId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 229
    const-string/jumbo v0, "filterfw"

    #@3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    #@6
    .line 32
    return-void
.end method

.method constructor <init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V
    .locals 3
    .param p1, "format"    # Landroid/filterfw/core/FrameFormat;
    .param p2, "frameManager"    # Landroid/filterfw/core/FrameManager;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/Frame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V

    #@4
    .line 34
    const/4 v2, -0x1

    #@5
    iput v2, p0, Landroid/filterfw/core/NativeFrame;->nativeFrameId:I

    #@7
    .line 38
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getSize()I

    #@a
    move-result v0

    #@b
    .line 39
    .local v0, "capacity":I
    invoke-direct {p0, v0}, Landroid/filterfw/core/NativeFrame;->nativeAllocate(I)Z

    #@e
    .line 40
    if-eqz v0, :cond_0

    #@10
    const/4 v1, 0x1

    #@11
    :cond_0
    invoke-virtual {p0, v1}, Landroid/filterfw/core/NativeFrame;->setReusable(Z)V

    #@14
    .line 36
    return-void
.end method

.method private native getNativeBitmap(Landroid/graphics/Bitmap;II)Z
.end method

.method private native getNativeBuffer(Landroid/filterfw/core/NativeBuffer;)Z
.end method

.method private native getNativeCapacity()I
.end method

.method private native getNativeData(I)[B
.end method

.method private native getNativeFloats(I)[F
.end method

.method private native getNativeInts(I)[I
.end method

.method private native nativeAllocate(I)Z
.end method

.method private native nativeCopyFromGL(Landroid/filterfw/core/GLFrame;)Z
.end method

.method private native nativeCopyFromNative(Landroid/filterfw/core/NativeFrame;)Z
.end method

.method private native nativeDeallocate()Z
.end method

.method private static native nativeFloatSize()I
.end method

.method private static native nativeIntSize()I
.end method

.method private native setNativeBitmap(Landroid/graphics/Bitmap;II)Z
.end method

.method private native setNativeData([BII)Z
.end method

.method private native setNativeFloats([F)Z
.end method

.method private native setNativeInts([I)Z
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 6

    #@0
    .prologue
    .line 187
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@3
    move-result-object v3

    #@4
    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->getNumberOfDimensions()I

    #@7
    move-result v3

    #@8
    const/4 v4, 0x2

    #@9
    if-eq v3, v4, :cond_0

    #@b
    .line 188
    new-instance v3, Ljava/lang/RuntimeException;

    #@d
    const-string/jumbo v4, "Attempting to get Bitmap for non 2-dimensional native frame!"

    #@10
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@13
    throw v3

    #@14
    .line 190
    :cond_0
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    #@1b
    move-result v3

    #@1c
    .line 191
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v4}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    #@23
    move-result v4

    #@24
    .line 192
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@26
    .line 190
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@29
    move-result-object v2

    #@2a
    .line 193
    .local v2, "result":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getByteCount()I

    #@2d
    move-result v1

    #@2e
    .line 194
    .local v1, "byteCount":I
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    #@35
    move-result v0

    #@36
    .line 195
    .local v0, "bps":I
    invoke-direct {p0, v2, v1, v0}, Landroid/filterfw/core/NativeFrame;->getNativeBitmap(Landroid/graphics/Bitmap;II)Z

    #@39
    move-result v3

    #@3a
    if-nez v3, :cond_1

    #@3c
    .line 196
    new-instance v3, Ljava/lang/RuntimeException;

    #@3e
    const-string/jumbo v4, "Could not get bitmap data from native frame!"

    #@41
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@44
    throw v3

    #@45
    .line 198
    :cond_1
    return-object v2
.end method

.method public getCapacity()I
    .locals 1

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Landroid/filterfw/core/NativeFrame;->getNativeCapacity()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getData()Ljava/nio/ByteBuffer;
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 163
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@4
    move-result-object v2

    #@5
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getSize()I

    #@8
    move-result v2

    #@9
    invoke-direct {p0, v2}, Landroid/filterfw/core/NativeFrame;->getNativeData(I)[B

    #@c
    move-result-object v0

    #@d
    .line 164
    .local v0, "data":[B
    if-nez v0, :cond_0

    #@f
    :goto_0
    return-object v1

    #@10
    :cond_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@13
    move-result-object v1

    #@14
    goto :goto_0
.end method

.method public getFloats()[F
    .locals 1

    #@0
    .prologue
    .line 139
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getSize()I

    #@7
    move-result v0

    #@8
    invoke-direct {p0, v0}, Landroid/filterfw/core/NativeFrame;->getNativeFloats(I)[F

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getInts()[I
    .locals 1

    #@0
    .prologue
    .line 122
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getSize()I

    #@7
    move-result v0

    #@8
    invoke-direct {p0, v0}, Landroid/filterfw/core/NativeFrame;->getNativeInts(I)[I

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getObjectValue()Ljava/lang/Object;
    .locals 6

    #@0
    .prologue
    .line 71
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@3
    move-result-object v3

    #@4
    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->getBaseType()I

    #@7
    move-result v3

    #@8
    const/16 v4, 0x8

    #@a
    if-eq v3, v4, :cond_0

    #@c
    .line 72
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getData()Ljava/nio/ByteBuffer;

    #@f
    move-result-object v3

    #@10
    return-object v3

    #@11
    .line 76
    :cond_0
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->getObjectClass()Ljava/lang/Class;

    #@18
    move-result-object v1

    #@19
    .line 77
    .local v1, "structClass":Ljava/lang/Class;
    if-nez v1, :cond_1

    #@1b
    .line 78
    new-instance v3, Ljava/lang/RuntimeException;

    #@1d
    const-string/jumbo v4, "Attempting to get object data from frame that does not specify a structure object class!"

    #@20
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@23
    throw v3

    #@24
    .line 83
    :cond_1
    const-class v3, Landroid/filterfw/core/NativeBuffer;

    #@26
    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@29
    move-result v3

    #@2a
    if-nez v3, :cond_2

    #@2c
    .line 84
    new-instance v3, Ljava/lang/RuntimeException;

    #@2e
    const-string/jumbo v4, "NativeFrame object class must be a subclass of NativeBuffer!"

    #@31
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@34
    throw v3

    #@35
    .line 89
    :cond_2
    const/4 v2, 0x0

    #@36
    .line 91
    .local v2, "structData":Landroid/filterfw/core/NativeBuffer;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@39
    move-result-object v2

    #@3a
    .end local v2    # "structData":Landroid/filterfw/core/NativeBuffer;
    check-cast v2, Landroid/filterfw/core/NativeBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@3c
    .line 98
    .local v2, "structData":Landroid/filterfw/core/NativeBuffer;
    invoke-direct {p0, v2}, Landroid/filterfw/core/NativeFrame;->getNativeBuffer(Landroid/filterfw/core/NativeBuffer;)Z

    #@3f
    move-result v3

    #@40
    if-nez v3, :cond_3

    #@42
    .line 99
    new-instance v3, Ljava/lang/RuntimeException;

    #@44
    const-string/jumbo v4, "Could not get the native structured data for frame!"

    #@47
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v3

    #@4b
    .line 92
    .end local v2    # "structData":Landroid/filterfw/core/NativeBuffer;
    :catch_0
    move-exception v0

    #@4c
    .line 93
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    #@4e
    new-instance v4, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string/jumbo v5, "Could not instantiate new structure instance of type \'"

    #@56
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v4

    #@5a
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v4

    #@5e
    .line 94
    const-string/jumbo v5, "\'!"

    #@61
    .line 93
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v4

    #@65
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v4

    #@69
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@6c
    throw v3

    #@6d
    .line 103
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "structData":Landroid/filterfw/core/NativeBuffer;
    :cond_3
    invoke-virtual {v2, p0}, Landroid/filterfw/core/NativeBuffer;->attachToFrame(Landroid/filterfw/core/Frame;)V

    #@70
    .line 105
    return-object v2
.end method

.method protected declared-synchronized hasNativeAllocation()Z
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 51
    :try_start_0
    iget v0, p0, Landroid/filterfw/core/NativeFrame;->nativeFrameId:I
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
    .line 45
    :try_start_0
    invoke-direct {p0}, Landroid/filterfw/core/NativeFrame;->nativeDeallocate()Z

    #@4
    .line 46
    const/4 v0, -0x1

    #@5
    iput v0, p0, Landroid/filterfw/core/NativeFrame;->nativeFrameId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    .line 44
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
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 169
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->assertFrameMutable()V

    #@3
    .line 170
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@6
    move-result-object v3

    #@7
    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->getNumberOfDimensions()I

    #@a
    move-result v3

    #@b
    const/4 v4, 0x2

    #@c
    if-eq v3, v4, :cond_0

    #@e
    .line 171
    new-instance v3, Ljava/lang/RuntimeException;

    #@10
    const-string/jumbo v4, "Attempting to set Bitmap for non 2-dimensional native frame!"

    #@13
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@16
    throw v3

    #@17
    .line 172
    :cond_0
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    #@1e
    move-result v3

    #@1f
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    #@22
    move-result v4

    #@23
    if-ne v3, v4, :cond_1

    #@25
    .line 173
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    #@2c
    move-result v3

    #@2d
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    #@30
    move-result v4

    #@31
    if-eq v3, v4, :cond_2

    #@33
    .line 174
    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    #@35
    const-string/jumbo v4, "Bitmap dimensions do not match native frame dimensions!"

    #@38
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v3

    #@3c
    .line 176
    :cond_2
    invoke-static {p1}, Landroid/filterfw/core/NativeFrame;->convertBitmapToRGBA(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    #@3f
    move-result-object v2

    #@40
    .line 177
    .local v2, "rgbaBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getByteCount()I

    #@43
    move-result v1

    #@44
    .line 178
    .local v1, "byteCount":I
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@47
    move-result-object v3

    #@48
    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    #@4b
    move-result v0

    #@4c
    .line 179
    .local v0, "bps":I
    invoke-direct {p0, v2, v1, v0}, Landroid/filterfw/core/NativeFrame;->setNativeBitmap(Landroid/graphics/Bitmap;II)Z

    #@4f
    move-result v3

    #@50
    if-nez v3, :cond_3

    #@52
    .line 180
    new-instance v3, Ljava/lang/RuntimeException;

    #@54
    const-string/jumbo v4, "Could not set native frame bitmap data!"

    #@57
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@5a
    throw v3

    #@5b
    .line 168
    :cond_3
    return-void
.end method

.method public setData(Ljava/nio/ByteBuffer;II)V
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 146
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->assertFrameMutable()V

    #@3
    .line 147
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    #@6
    move-result-object v0

    #@7
    .line 148
    .local v0, "bytes":[B
    add-int v1, p3, p2

    #@9
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    #@c
    move-result v2

    #@d
    if-le v1, v2, :cond_0

    #@f
    .line 149
    new-instance v1, Ljava/lang/RuntimeException;

    #@11
    new-instance v2, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v3, "Offset and length exceed buffer size in native setData: "

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    .line 150
    add-int v3, p3, p2

    #@1f
    .line 149
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    .line 150
    const-string/jumbo v3, " bytes given, but only "

    #@26
    .line 149
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    .line 150
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    #@2d
    move-result v3

    #@2e
    .line 149
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    .line 151
    const-string/jumbo v3, " bytes available!"

    #@35
    .line 149
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v2

    #@3d
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@40
    throw v1

    #@41
    .line 152
    :cond_0
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@44
    move-result-object v1

    #@45
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getSize()I

    #@48
    move-result v1

    #@49
    if-eq v1, p3, :cond_1

    #@4b
    .line 153
    new-instance v1, Ljava/lang/RuntimeException;

    #@4d
    new-instance v2, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string/jumbo v3, "Data size in setData does not match native frame size: Frame size is "

    #@55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v2

    #@59
    .line 154
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@5c
    move-result-object v3

    #@5d
    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->getSize()I

    #@60
    move-result v3

    #@61
    .line 153
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@64
    move-result-object v2

    #@65
    .line 154
    const-string/jumbo v3, " bytes, but "

    #@68
    .line 153
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v2

    #@6c
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v2

    #@70
    .line 155
    const-string/jumbo v3, " bytes given!"

    #@73
    .line 153
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v2

    #@77
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v2

    #@7b
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@7e
    throw v1

    #@7f
    .line 156
    :cond_1
    invoke-direct {p0, v0, p2, p3}, Landroid/filterfw/core/NativeFrame;->setNativeData([BII)Z

    #@82
    move-result v1

    #@83
    if-nez v1, :cond_2

    #@85
    .line 157
    new-instance v1, Ljava/lang/RuntimeException;

    #@87
    const-string/jumbo v2, "Could not set native frame data!"

    #@8a
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@8d
    throw v1

    #@8e
    .line 145
    :cond_2
    return-void
.end method

.method public setDataFromFrame(Landroid/filterfw/core/Frame;)V
    .locals 3
    .param p1, "frame"    # Landroid/filterfw/core/Frame;

    #@0
    .prologue
    .line 204
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getSize()I

    #@7
    move-result v0

    #@8
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getSize()I

    #@f
    move-result v1

    #@10
    if-ge v0, v1, :cond_0

    #@12
    .line 205
    new-instance v0, Ljava/lang/RuntimeException;

    #@14
    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v2, "Attempting to assign frame of size "

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getSize()I

    #@27
    move-result v2

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    const-string/jumbo v2, " to "

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    .line 207
    const-string/jumbo v2, "smaller native frame of size "

    #@36
    .line 206
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    .line 207
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getSize()I

    #@41
    move-result v2

    #@42
    .line 206
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    .line 207
    const-string/jumbo v2, "!"

    #@49
    .line 206
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v1

    #@51
    .line 205
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@54
    throw v0

    #@55
    .line 211
    :cond_0
    instance-of v0, p1, Landroid/filterfw/core/NativeFrame;

    #@57
    if-eqz v0, :cond_1

    #@59
    .line 212
    check-cast p1, Landroid/filterfw/core/NativeFrame;

    #@5b
    .end local p1    # "frame":Landroid/filterfw/core/Frame;
    invoke-direct {p0, p1}, Landroid/filterfw/core/NativeFrame;->nativeCopyFromNative(Landroid/filterfw/core/NativeFrame;)Z

    #@5e
    .line 202
    :goto_0
    return-void

    #@5f
    .line 213
    .restart local p1    # "frame":Landroid/filterfw/core/Frame;
    :cond_1
    instance-of v0, p1, Landroid/filterfw/core/GLFrame;

    #@61
    if-eqz v0, :cond_2

    #@63
    .line 214
    check-cast p1, Landroid/filterfw/core/GLFrame;

    #@65
    .end local p1    # "frame":Landroid/filterfw/core/Frame;
    invoke-direct {p0, p1}, Landroid/filterfw/core/NativeFrame;->nativeCopyFromGL(Landroid/filterfw/core/GLFrame;)Z

    #@68
    goto :goto_0

    #@69
    .line 215
    .restart local p1    # "frame":Landroid/filterfw/core/Frame;
    :cond_2
    instance-of v0, p1, Landroid/filterfw/core/SimpleFrame;

    #@6b
    if-eqz v0, :cond_3

    #@6d
    .line 216
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getObjectValue()Ljava/lang/Object;

    #@70
    move-result-object v0

    #@71
    invoke-virtual {p0, v0}, Landroid/filterfw/core/NativeFrame;->setObjectValue(Ljava/lang/Object;)V

    #@74
    goto :goto_0

    #@75
    .line 218
    :cond_3
    invoke-super {p0, p1}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    #@78
    goto :goto_0
.end method

.method public setFloats([F)V
    .locals 4
    .param p1, "floats"    # [F

    #@0
    .prologue
    .line 127
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->assertFrameMutable()V

    #@3
    .line 128
    array-length v0, p1

    #@4
    invoke-static {}, Landroid/filterfw/core/NativeFrame;->nativeFloatSize()I

    #@7
    move-result v1

    #@8
    mul-int/2addr v0, v1

    #@9
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getSize()I

    #@10
    move-result v1

    #@11
    if-le v0, v1, :cond_0

    #@13
    .line 129
    new-instance v0, Ljava/lang/RuntimeException;

    #@15
    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v2, "NativeFrame cannot hold "

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    array-length v2, p1

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    const-string/jumbo v2, " floats. (Can only hold "

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    .line 131
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getSize()I

    #@34
    move-result v2

    #@35
    invoke-static {}, Landroid/filterfw/core/NativeFrame;->nativeFloatSize()I

    #@38
    move-result v3

    #@39
    div-int/2addr v2, v3

    #@3a
    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    .line 131
    const-string/jumbo v2, " floats)."

    #@41
    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v1

    #@45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v1

    #@49
    .line 129
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v0

    #@4d
    .line 132
    :cond_0
    invoke-direct {p0, p1}, Landroid/filterfw/core/NativeFrame;->setNativeFloats([F)Z

    #@50
    move-result v0

    #@51
    if-nez v0, :cond_1

    #@53
    .line 133
    new-instance v0, Ljava/lang/RuntimeException;

    #@55
    const-string/jumbo v1, "Could not set int values for native frame!"

    #@58
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@5b
    throw v0

    #@5c
    .line 126
    :cond_1
    return-void
.end method

.method public setInts([I)V
    .locals 4
    .param p1, "ints"    # [I

    #@0
    .prologue
    .line 110
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->assertFrameMutable()V

    #@3
    .line 111
    array-length v0, p1

    #@4
    invoke-static {}, Landroid/filterfw/core/NativeFrame;->nativeIntSize()I

    #@7
    move-result v1

    #@8
    mul-int/2addr v0, v1

    #@9
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getSize()I

    #@10
    move-result v1

    #@11
    if-le v0, v1, :cond_0

    #@13
    .line 112
    new-instance v0, Ljava/lang/RuntimeException;

    #@15
    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v2, "NativeFrame cannot hold "

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    array-length v2, p1

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    const-string/jumbo v2, " integers. (Can only hold "

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    .line 114
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getSize()I

    #@34
    move-result v2

    #@35
    invoke-static {}, Landroid/filterfw/core/NativeFrame;->nativeIntSize()I

    #@38
    move-result v3

    #@39
    div-int/2addr v2, v3

    #@3a
    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    .line 114
    const-string/jumbo v2, " integers)."

    #@41
    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v1

    #@45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v1

    #@49
    .line 112
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v0

    #@4d
    .line 115
    :cond_0
    invoke-direct {p0, p1}, Landroid/filterfw/core/NativeFrame;->setNativeInts([I)Z

    #@50
    move-result v0

    #@51
    if-nez v0, :cond_1

    #@53
    .line 116
    new-instance v0, Ljava/lang/RuntimeException;

    #@55
    const-string/jumbo v1, "Could not set int values for native frame!"

    #@58
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@5b
    throw v0

    #@5c
    .line 109
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "NativeFrame id: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid/filterfw/core/NativeFrame;->nativeFrameId:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, " ("

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    const-string/jumbo v1, ") of size "

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    .line 225
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getCapacity()I

    #@2b
    move-result v1

    #@2c
    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    return-object v0
.end method
