.class public Landroid/filterfw/core/NativeFrame;
.super Landroid/filterfw/core/Frame;
.source "NativeFrame.java"


# instance fields
.field private greylist-max-o nativeFrameId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 229
    const-string v0, "filterfw"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V
    .registers 5
    .param p1, "format"    # Landroid/filterfw/core/FrameFormat;
    .param p2, "frameManager"    # Landroid/filterfw/core/FrameManager;

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/Frame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Landroid/filterfw/core/NativeFrame;->nativeFrameId:I

    .line 38
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v0

    .line 39
    .local v0, "capacity":I
    invoke-direct {p0, v0}, Landroid/filterfw/core/NativeFrame;->nativeAllocate(I)Z

    .line 40
    if-eqz v0, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    invoke-virtual {p0, v1}, Landroid/filterfw/core/NativeFrame;->setReusable(Z)V

    .line 41
    return-void
.end method

.method private native greylist-max-o getNativeBitmap(Landroid/graphics/Bitmap;II)Z
.end method

.method private native greylist-max-o getNativeBuffer(Landroid/filterfw/core/NativeBuffer;)Z
.end method

.method private native greylist-max-o getNativeCapacity()I
.end method

.method private native greylist-max-o getNativeData(I)[B
.end method

.method private native greylist-max-o getNativeFloats(I)[F
.end method

.method private native greylist-max-o getNativeInts(I)[I
.end method

.method private native greylist-max-o nativeAllocate(I)Z
.end method

.method private native greylist-max-o nativeCopyFromGL(Landroid/filterfw/core/GLFrame;)Z
.end method

.method private native greylist-max-o nativeCopyFromNative(Landroid/filterfw/core/NativeFrame;)Z
.end method

.method private native greylist-max-o nativeDeallocate()Z
.end method

.method private static native greylist-max-o nativeFloatSize()I
.end method

.method private static native greylist-max-o nativeIntSize()I
.end method

.method private native greylist-max-o setNativeBitmap(Landroid/graphics/Bitmap;II)Z
.end method

.method private native greylist-max-o setNativeData([BII)Z
.end method

.method private native greylist-max-o setNativeFloats([F)Z
.end method

.method private native greylist-max-o setNativeInts([I)Z
.end method


# virtual methods
.method public greylist-max-o getBitmap()Landroid/graphics/Bitmap;
    .registers 6

    .line 187
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getNumberOfDimensions()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3c

    .line 190
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v0

    .line 191
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 190
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 193
    .local v0, "result":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    .line 194
    .local v1, "byteCount":I
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    move-result v2

    .line 195
    .local v2, "bps":I
    invoke-direct {p0, v0, v1, v2}, Landroid/filterfw/core/NativeFrame;->getNativeBitmap(Landroid/graphics/Bitmap;II)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 198
    return-object v0

    .line 196
    :cond_34
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Could not get bitmap data from native frame!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 188
    .end local v0    # "result":Landroid/graphics/Bitmap;
    .end local v1    # "byteCount":I
    .end local v2    # "bps":I
    :cond_3c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Attempting to get Bitmap for non 2-dimensional native frame!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getCapacity()I
    .registers 2

    .line 56
    invoke-direct {p0}, Landroid/filterfw/core/NativeFrame;->getNativeCapacity()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getData()Ljava/nio/ByteBuffer;
    .registers 3

    .line 163
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/filterfw/core/NativeFrame;->getNativeData(I)[B

    move-result-object v0

    .line 164
    .local v0, "data":[B
    if-nez v0, :cond_10

    const/4 v1, 0x0

    goto :goto_14

    :cond_10
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    :goto_14
    return-object v1
.end method

.method public greylist-max-o getFloats()[F
    .registers 2

    .line 139
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/filterfw/core/NativeFrame;->getNativeFloats(I)[F

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getInts()[I
    .registers 2

    .line 122
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/filterfw/core/NativeFrame;->getNativeInts(I)[I

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getObjectValue()Ljava/lang/Object;
    .registers 7

    .line 71
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getBaseType()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_11

    .line 72
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 76
    :cond_11
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getObjectClass()Ljava/lang/Class;

    move-result-object v0

    .line 77
    .local v0, "structClass":Ljava/lang/Class;
    if-eqz v0, :cond_65

    .line 83
    const-class v1, Landroid/filterfw/core/NativeBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 89
    const/4 v1, 0x0

    .line 91
    .local v1, "structData":Landroid/filterfw/core/NativeBuffer;
    :try_start_24
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/filterfw/core/NativeBuffer;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2a} :catch_3d

    .line 95
    .end local v1    # "structData":Landroid/filterfw/core/NativeBuffer;
    .local v2, "structData":Landroid/filterfw/core/NativeBuffer;
    nop

    .line 98
    invoke-direct {p0, v2}, Landroid/filterfw/core/NativeFrame;->getNativeBuffer(Landroid/filterfw/core/NativeBuffer;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 103
    invoke-virtual {v2, p0}, Landroid/filterfw/core/NativeBuffer;->attachToFrame(Landroid/filterfw/core/Frame;)V

    .line 105
    return-object v2

    .line 99
    :cond_35
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "Could not get the native structured data for frame!"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 92
    .end local v2    # "structData":Landroid/filterfw/core/NativeBuffer;
    .restart local v1    # "structData":Landroid/filterfw/core/NativeBuffer;
    :catch_3d
    move-exception v2

    .line 93
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not instantiate new structure instance of type \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 84
    .end local v1    # "structData":Landroid/filterfw/core/NativeBuffer;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5d
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "NativeFrame object class must be a subclass of NativeBuffer!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    :cond_65
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Attempting to get object data from frame that does not specify a structure object class!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected declared-synchronized greylist-max-o hasNativeAllocation()Z
    .registers 3

    monitor-enter p0

    .line 51
    :try_start_1
    iget v0, p0, Landroid/filterfw/core/NativeFrame;->nativeFrameId:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_b

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    monitor-exit p0

    return v0

    .line 51
    .end local p0    # "this":Landroid/filterfw/core/NativeFrame;
    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method protected declared-synchronized greylist-max-o releaseNativeAllocation()V
    .registers 2

    monitor-enter p0

    .line 45
    :try_start_1
    invoke-direct {p0}, Landroid/filterfw/core/NativeFrame;->nativeDeallocate()Z

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Landroid/filterfw/core/NativeFrame;->nativeFrameId:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 47
    monitor-exit p0

    return-void

    .line 44
    .end local p0    # "this":Landroid/filterfw/core/NativeFrame;
    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public greylist-max-o setBitmap(Landroid/graphics/Bitmap;)V
    .registers 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 169
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->assertFrameMutable()V

    .line 170
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getNumberOfDimensions()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_51

    .line 172
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_49

    .line 173
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_49

    .line 176
    invoke-static {p1}, Landroid/filterfw/core/NativeFrame;->convertBitmapToRGBA(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 177
    .local v0, "rgbaBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    .line 178
    .local v1, "byteCount":I
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    move-result v2

    .line 179
    .local v2, "bps":I
    invoke-direct {p0, v0, v1, v2}, Landroid/filterfw/core/NativeFrame;->setNativeBitmap(Landroid/graphics/Bitmap;II)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 183
    .end local v0    # "rgbaBitmap":Landroid/graphics/Bitmap;
    .end local v1    # "byteCount":I
    .end local v2    # "bps":I
    return-void

    .line 180
    .restart local v0    # "rgbaBitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "byteCount":I
    .restart local v2    # "bps":I
    :cond_41
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Could not set native frame bitmap data!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 174
    .end local v0    # "rgbaBitmap":Landroid/graphics/Bitmap;
    .end local v1    # "byteCount":I
    .end local v2    # "bps":I
    :cond_49
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Bitmap dimensions do not match native frame dimensions!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_51
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Attempting to set Bitmap for non 2-dimensional native frame!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setData(Ljava/nio/ByteBuffer;II)V
    .registers 8
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 146
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->assertFrameMutable()V

    .line 147
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 148
    .local v0, "bytes":[B
    add-int v1, p3, p2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    if-gt v1, v2, :cond_59

    .line 152
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v1

    if-ne v1, p3, :cond_28

    .line 156
    invoke-direct {p0, v0, p2, p3}, Landroid/filterfw/core/NativeFrame;->setNativeData([BII)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 159
    return-void

    .line 157
    :cond_20
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not set native frame data!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 153
    :cond_28
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data size in setData does not match native frame size: Frame size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 154
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v3

    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes, but "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes given!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 149
    :cond_59
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Offset and length exceed buffer size in native setData: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int v3, p3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes given, but only "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 150
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes available!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-o setDataFromFrame(Landroid/filterfw/core/Frame;)V
    .registers 5
    .param p1, "frame"    # Landroid/filterfw/core/Frame;

    .line 204
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v0

    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v1

    if-lt v0, v1, :cond_38

    .line 211
    instance-of v0, p1, Landroid/filterfw/core/NativeFrame;

    if-eqz v0, :cond_1d

    .line 212
    move-object v0, p1

    check-cast v0, Landroid/filterfw/core/NativeFrame;

    invoke-direct {p0, v0}, Landroid/filterfw/core/NativeFrame;->nativeCopyFromNative(Landroid/filterfw/core/NativeFrame;)Z

    goto :goto_37

    .line 213
    :cond_1d
    instance-of v0, p1, Landroid/filterfw/core/GLFrame;

    if-eqz v0, :cond_28

    .line 214
    move-object v0, p1

    check-cast v0, Landroid/filterfw/core/GLFrame;

    invoke-direct {p0, v0}, Landroid/filterfw/core/NativeFrame;->nativeCopyFromGL(Landroid/filterfw/core/GLFrame;)Z

    goto :goto_37

    .line 215
    :cond_28
    instance-of v0, p1, Landroid/filterfw/core/SimpleFrame;

    if-eqz v0, :cond_34

    .line 216
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getObjectValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/filterfw/core/NativeFrame;->setObjectValue(Ljava/lang/Object;)V

    goto :goto_37

    .line 218
    :cond_34
    invoke-super {p0, p1}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    .line 220
    :goto_37
    return-void

    .line 205
    :cond_38
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to assign frame of size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 206
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to smaller native frame of size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 207
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setFloats([F)V
    .registers 6
    .param p1, "floats"    # [F

    .line 127
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->assertFrameMutable()V

    .line 128
    array-length v0, p1

    invoke-static {}, Landroid/filterfw/core/NativeFrame;->nativeFloatSize()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v1

    if-gt v0, v1, :cond_22

    .line 132
    invoke-direct {p0, p1}, Landroid/filterfw/core/NativeFrame;->setNativeFloats([F)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 135
    return-void

    .line 133
    :cond_1a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not set int values for native frame!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_22
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NativeFrame cannot hold "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " floats. (Can only hold "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 131
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v2

    invoke-static {}, Landroid/filterfw/core/NativeFrame;->nativeFloatSize()I

    move-result v3

    div-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " floats)."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setInts([I)V
    .registers 6
    .param p1, "ints"    # [I

    .line 110
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->assertFrameMutable()V

    .line 111
    array-length v0, p1

    invoke-static {}, Landroid/filterfw/core/NativeFrame;->nativeIntSize()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v1

    if-gt v0, v1, :cond_22

    .line 115
    invoke-direct {p0, p1}, Landroid/filterfw/core/NativeFrame;->setNativeInts([I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 118
    return-void

    .line 116
    :cond_1a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not set int values for native frame!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_22
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NativeFrame cannot hold "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " integers. (Can only hold "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 114
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v2

    invoke-static {}, Landroid/filterfw/core/NativeFrame;->nativeIntSize()I

    move-result v3

    div-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " integers)."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NativeFrame id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/filterfw/core/NativeFrame;->nativeFrameId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") of size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 225
    invoke-virtual {p0}, Landroid/filterfw/core/NativeFrame;->getCapacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    return-object v0
.end method
