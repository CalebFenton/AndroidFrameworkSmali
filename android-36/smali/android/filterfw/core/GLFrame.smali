.class public Landroid/filterfw/core/GLFrame;
.super Landroid/filterfw/core/Frame;
.source "GLFrame.java"


# static fields
.field public static final greylist-max-o EXISTING_FBO_BINDING:I = 0x65

.field public static final greylist-max-o EXISTING_TEXTURE_BINDING:I = 0x64

.field public static final greylist-max-o EXTERNAL_TEXTURE:I = 0x68

.field public static final greylist-max-o NEW_FBO_BINDING:I = 0x67

.field public static final greylist-max-o NEW_TEXTURE_BINDING:I = 0x66


# instance fields
.field private greylist-max-o glFrameId:I

.field private greylist-max-o mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

.field private greylist-max-o mOwnsTexture:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 361
    const-string v0, "filterfw"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 362
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V
    .registers 4
    .param p1, "format"    # Landroid/filterfw/core/FrameFormat;
    .param p2, "frameManager"    # Landroid/filterfw/core/FrameManager;

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/Frame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Landroid/filterfw/core/GLFrame;->glFrameId:I

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/filterfw/core/GLFrame;->mOwnsTexture:Z

    .line 68
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;IJ)V
    .registers 8
    .param p1, "format"    # Landroid/filterfw/core/FrameFormat;
    .param p2, "frameManager"    # Landroid/filterfw/core/FrameManager;
    .param p3, "bindingType"    # I
    .param p4, "bindingId"    # J

    .line 71
    invoke-direct/range {p0 .. p5}, Landroid/filterfw/core/Frame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;IJ)V

    .line 52
    move-wide v0, p4

    move p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .end local p1    # "format":Landroid/filterfw/core/FrameFormat;
    .local v0, "bindingId":J
    .local p2, "format":Landroid/filterfw/core/FrameFormat;
    .local p3, "frameManager":Landroid/filterfw/core/FrameManager;
    .local p4, "bindingType":I
    const/4 p5, -0x1

    iput p5, p1, Landroid/filterfw/core/GLFrame;->glFrameId:I

    .line 58
    const/4 p5, 0x1

    iput-boolean p5, p1, Landroid/filterfw/core/GLFrame;->mOwnsTexture:Z

    .line 72
    return-void
.end method

.method private greylist-max-o assertGLEnvValid()V
    .registers 4

    .line 349
    iget-object v0, p0, Landroid/filterfw/core/GLFrame;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    invoke-virtual {v0}, Landroid/filterfw/core/GLEnvironment;->isContextActive()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 350
    invoke-static {}, Landroid/filterfw/core/GLEnvironment;->isAnyContextActive()Z

    move-result v0

    const-string v1, "Attempting to access "

    if-eqz v0, :cond_2d

    .line 351
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with foreign GL context active!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :cond_2d
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with no GL context  active!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_4a
    return-void
.end method

.method private native greylist-max-o generateNativeMipMap()Z
.end method

.method private native greylist-max-o getNativeBitmap(Landroid/graphics/Bitmap;)Z
.end method

.method private native greylist-max-o getNativeData()[B
.end method

.method private native greylist-max-o getNativeFboId()I
.end method

.method private native greylist-max-o getNativeFloats()[F
.end method

.method private native greylist-max-o getNativeInts()[I
.end method

.method private native greylist-max-o getNativeTextureId()I
.end method

.method private greylist-max-o initNew(Z)V
    .registers 5
    .param p1, "isExternal"    # Z

    .line 111
    if-eqz p1, :cond_13

    .line 112
    iget-object v0, p0, Landroid/filterfw/core/GLFrame;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    invoke-direct {p0, v0}, Landroid/filterfw/core/GLFrame;->nativeAllocateExternal(Landroid/filterfw/core/GLEnvironment;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_2b

    .line 113
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not allocate external GL frame!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_13
    iget-object v0, p0, Landroid/filterfw/core/GLFrame;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/filterfw/core/GLFrame;->nativeAllocate(Landroid/filterfw/core/GLEnvironment;II)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 120
    :goto_2b
    return-void

    .line 117
    :cond_2c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not allocate GL frame!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o initWithFbo(I)V
    .registers 6
    .param p1, "fboId"    # I

    .line 133
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v0

    .line 134
    .local v0, "width":I
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v1

    .line 135
    .local v1, "height":I
    iget-object v2, p0, Landroid/filterfw/core/GLFrame;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    invoke-direct {p0, v2, p1, v0, v1}, Landroid/filterfw/core/GLFrame;->nativeAllocateWithFbo(Landroid/filterfw/core/GLEnvironment;III)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 138
    return-void

    .line 136
    :cond_19
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Could not allocate FBO backed GL frame!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private greylist-max-o initWithTexture(I)V
    .registers 6
    .param p1, "texId"    # I

    .line 123
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v0

    .line 124
    .local v0, "width":I
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v1

    .line 125
    .local v1, "height":I
    iget-object v2, p0, Landroid/filterfw/core/GLFrame;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    invoke-direct {p0, v2, p1, v0, v1}, Landroid/filterfw/core/GLFrame;->nativeAllocateWithTexture(Landroid/filterfw/core/GLEnvironment;III)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 128
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/filterfw/core/GLFrame;->mOwnsTexture:Z

    .line 129
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->markReadOnly()V

    .line 130
    return-void

    .line 126
    :cond_1f
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Could not allocate texture backed GL frame!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private native greylist-max-o nativeAllocate(Landroid/filterfw/core/GLEnvironment;II)Z
.end method

.method private native greylist-max-o nativeAllocateExternal(Landroid/filterfw/core/GLEnvironment;)Z
.end method

.method private native greylist-max-o nativeAllocateWithFbo(Landroid/filterfw/core/GLEnvironment;III)Z
.end method

.method private native greylist-max-o nativeAllocateWithTexture(Landroid/filterfw/core/GLEnvironment;III)Z
.end method

.method private native greylist-max-o nativeCopyFromGL(Landroid/filterfw/core/GLFrame;)Z
.end method

.method private native greylist-max-o nativeCopyFromNative(Landroid/filterfw/core/NativeFrame;)Z
.end method

.method private native greylist-max-o nativeDeallocate()Z
.end method

.method private native greylist-max-o nativeDetachTexFromFbo()Z
.end method

.method private native greylist-max-o nativeFocus()Z
.end method

.method private native greylist-max-o nativeReattachTexToFbo()Z
.end method

.method private native greylist-max-o nativeResetParams()Z
.end method

.method private native greylist-max-o setNativeBitmap(Landroid/graphics/Bitmap;I)Z
.end method

.method private native greylist-max-o setNativeData([BII)Z
.end method

.method private native greylist-max-o setNativeFloats([F)Z
.end method

.method private native greylist-max-o setNativeInts([I)Z
.end method

.method private native greylist-max-o setNativeTextureParam(II)Z
.end method

.method private native greylist-max-o setNativeViewport(IIII)Z
.end method


# virtual methods
.method greylist-max-o flushGPU(Ljava/lang/String;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;

    .line 141
    invoke-static {}, Landroid/filterfw/core/GLFrameTimer;->get()Landroid/filterfw/core/StopWatchMap;

    move-result-object v0

    .line 142
    .local v0, "timer":Landroid/filterfw/core/StopWatchMap;
    iget-boolean v1, v0, Landroid/filterfw/core/StopWatchMap;->LOG_MFF_RUNNING_TIMES:Z

    if-eqz v1, :cond_36

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "glFinish "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/filterfw/core/StopWatchMap;->start(Ljava/lang/String;)V

    .line 144
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/filterfw/core/StopWatchMap;->stop(Ljava/lang/String;)V

    .line 147
    :cond_36
    return-void
.end method

.method public greylist-max-o focus()V
    .registers 3

    .line 312
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->nativeFocus()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 315
    return-void

    .line 313
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not focus on GLFrame for drawing!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist generateMipMap()V
    .registers 3

    .line 285
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->assertFrameMutable()V

    .line 286
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    .line 287
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->generateNativeMipMap()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 290
    return-void

    .line 288
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not generate mip-map for GL frame!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getBitmap()Landroid/graphics/Bitmap;
    .registers 4

    .line 239
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    .line 240
    const-string v0, "getBitmap"

    invoke-virtual {p0, v0}, Landroid/filterfw/core/GLFrame;->flushGPU(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v0

    .line 242
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 241
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 244
    .local v0, "result":Landroid/graphics/Bitmap;
    invoke-direct {p0, v0}, Landroid/filterfw/core/GLFrame;->getNativeBitmap(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 247
    return-object v0

    .line 245
    :cond_25
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not get bitmap data from GL frame!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-o getData()Ljava/nio/ByteBuffer;
    .registers 2

    .line 216
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    .line 217
    const-string v0, "getData"

    invoke-virtual {p0, v0}, Landroid/filterfw/core/GLFrame;->flushGPU(Ljava/lang/String;)V

    .line 218
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->getNativeData()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getFboId()I
    .registers 2

    .line 308
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->getNativeFboId()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getFloats()[F
    .registers 2

    .line 197
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    .line 198
    const-string v0, "getFloats"

    invoke-virtual {p0, v0}, Landroid/filterfw/core/GLFrame;->flushGPU(Ljava/lang/String;)V

    .line 199
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->getNativeFloats()[F

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getGLEnvironment()Landroid/filterfw/core/GLEnvironment;
    .registers 2

    .line 161
    iget-object v0, p0, Landroid/filterfw/core/GLFrame;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    return-object v0
.end method

.method public greylist-max-o getInts()[I
    .registers 2

    .line 181
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    .line 182
    const-string v0, "getInts"

    invoke-virtual {p0, v0}, Landroid/filterfw/core/GLFrame;->flushGPU(Ljava/lang/String;)V

    .line 183
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->getNativeInts()[I

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getObjectValue()Ljava/lang/Object;
    .registers 2

    .line 166
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    .line 167
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->getNativeData()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public greylist getTextureId()I
    .registers 2

    .line 304
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->getNativeTextureId()I

    move-result v0

    return v0
.end method

.method protected declared-synchronized greylist-max-o hasNativeAllocation()Z
    .registers 3

    monitor-enter p0

    .line 151
    :try_start_1
    iget v0, p0, Landroid/filterfw/core/GLFrame;->glFrameId:I
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

    .line 151
    .end local p0    # "this":Landroid/filterfw/core/GLFrame;
    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method greylist-max-o init(Landroid/filterfw/core/GLEnvironment;)V
    .registers 8
    .param p1, "glEnv"    # Landroid/filterfw/core/GLEnvironment;

    .line 75
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    .line 76
    .local v0, "format":Landroid/filterfw/core/FrameFormat;
    iput-object p1, p0, Landroid/filterfw/core/GLFrame;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    .line 79
    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_9a

    .line 81
    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getDimensionCount()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_92

    .line 83
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v1

    if-ltz v1, :cond_8a

    .line 88
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getBindingType()I

    move-result v1

    .line 89
    .local v1, "bindingType":I
    const/4 v2, 0x1

    .line 90
    .local v2, "reusable":Z
    if-nez v1, :cond_2a

    .line 91
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Landroid/filterfw/core/GLFrame;->initNew(Z)V

    goto :goto_67

    .line 92
    :cond_2a
    const/16 v3, 0x68

    if-ne v1, v3, :cond_34

    .line 93
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Landroid/filterfw/core/GLFrame;->initNew(Z)V

    .line 94
    const/4 v2, 0x0

    goto :goto_67

    .line 95
    :cond_34
    const/16 v3, 0x64

    if-ne v1, v3, :cond_41

    .line 96
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getBindingId()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-direct {p0, v3}, Landroid/filterfw/core/GLFrame;->initWithTexture(I)V

    goto :goto_67

    .line 97
    :cond_41
    const/16 v3, 0x65

    if-ne v1, v3, :cond_4e

    .line 98
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getBindingId()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-direct {p0, v3}, Landroid/filterfw/core/GLFrame;->initWithFbo(I)V

    goto :goto_67

    .line 99
    :cond_4e
    const/16 v3, 0x66

    if-ne v1, v3, :cond_5b

    .line 100
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getBindingId()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-direct {p0, v3}, Landroid/filterfw/core/GLFrame;->initWithTexture(I)V

    goto :goto_67

    .line 101
    :cond_5b
    const/16 v3, 0x67

    if-ne v1, v3, :cond_6b

    .line 102
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getBindingId()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-direct {p0, v3}, Landroid/filterfw/core/GLFrame;->initWithFbo(I)V

    .line 107
    :goto_67
    invoke-virtual {p0, v2}, Landroid/filterfw/core/GLFrame;->setReusable(Z)V

    .line 108
    return-void

    .line 104
    :cond_6b
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempting to create GL frame with unknown binding type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 84
    .end local v1    # "bindingType":I
    .end local v2    # "reusable":Z
    :cond_8a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Initializing GL frame with zero size!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 82
    :cond_92
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "GL frames must be 2-dimensional!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 80
    :cond_9a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "GL frames must have 4 bytes per sample!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected greylist-max-o onFrameFetch()V
    .registers 2

    .line 341
    iget-boolean v0, p0, Landroid/filterfw/core/GLFrame;->mOwnsTexture:Z

    if-nez v0, :cond_7

    .line 344
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->nativeReattachTexToFbo()Z

    .line 346
    :cond_7
    return-void
.end method

.method protected greylist-max-o onFrameStore()V
    .registers 2

    .line 333
    iget-boolean v0, p0, Landroid/filterfw/core/GLFrame;->mOwnsTexture:Z

    if-nez v0, :cond_7

    .line 335
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->nativeDetachTexFromFbo()Z

    .line 337
    :cond_7
    return-void
.end method

.method protected declared-synchronized greylist-max-o releaseNativeAllocation()V
    .registers 2

    monitor-enter p0

    .line 156
    :try_start_1
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->nativeDeallocate()Z

    .line 157
    const/4 v0, -0x1

    iput v0, p0, Landroid/filterfw/core/GLFrame;->glFrameId:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 158
    monitor-exit p0

    return-void

    .line 155
    .end local p0    # "this":Landroid/filterfw/core/GLFrame;
    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method protected greylist-max-o reset(Landroid/filterfw/core/FrameFormat;)V
    .registers 4
    .param p1, "newFormat"    # Landroid/filterfw/core/FrameFormat;

    .line 325
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->nativeResetParams()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 328
    invoke-super {p0, p1}, Landroid/filterfw/core/Frame;->reset(Landroid/filterfw/core/FrameFormat;)V

    .line 329
    return-void

    .line 326
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not reset GLFrame texture parameters!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setBitmap(Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 224
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->assertFrameMutable()V

    .line 225
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    .line 226
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_39

    .line 227
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_39

    .line 230
    invoke-static {p1}, Landroid/filterfw/core/GLFrame;->convertBitmapToRGBA(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 231
    .local v0, "rgbaBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/filterfw/core/GLFrame;->setNativeBitmap(Landroid/graphics/Bitmap;I)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 235
    .end local v0    # "rgbaBitmap":Landroid/graphics/Bitmap;
    return-void

    .line 232
    .restart local v0    # "rgbaBitmap":Landroid/graphics/Bitmap;
    :cond_31
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not set GL frame bitmap data!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 228
    .end local v0    # "rgbaBitmap":Landroid/graphics/Bitmap;
    :cond_39
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Bitmap dimensions do not match GL frame dimensions!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setData(Ljava/nio/ByteBuffer;II)V
    .registers 7
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 204
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->assertFrameMutable()V

    .line 205
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    .line 206
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 207
    .local v0, "bytes":[B
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v1

    array-length v2, v0

    if-ne v1, v2, :cond_24

    .line 209
    invoke-direct {p0, v0, p2, p3}, Landroid/filterfw/core/GLFrame;->setNativeData([BII)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 212
    return-void

    .line 210
    :cond_1c
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not set GL frame data!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 208
    :cond_24
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Data size in setData does not match GL frame size!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-o setDataFromFrame(Landroid/filterfw/core/Frame;)V
    .registers 5
    .param p1, "frame"    # Landroid/filterfw/core/Frame;

    .line 252
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    .line 255
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v0

    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v1

    if-lt v0, v1, :cond_3b

    .line 262
    instance-of v0, p1, Landroid/filterfw/core/NativeFrame;

    if-eqz v0, :cond_20

    .line 263
    move-object v0, p1

    check-cast v0, Landroid/filterfw/core/NativeFrame;

    invoke-direct {p0, v0}, Landroid/filterfw/core/GLFrame;->nativeCopyFromNative(Landroid/filterfw/core/NativeFrame;)Z

    goto :goto_3a

    .line 264
    :cond_20
    instance-of v0, p1, Landroid/filterfw/core/GLFrame;

    if-eqz v0, :cond_2b

    .line 265
    move-object v0, p1

    check-cast v0, Landroid/filterfw/core/GLFrame;

    invoke-direct {p0, v0}, Landroid/filterfw/core/GLFrame;->nativeCopyFromGL(Landroid/filterfw/core/GLFrame;)Z

    goto :goto_3a

    .line 266
    :cond_2b
    instance-of v0, p1, Landroid/filterfw/core/SimpleFrame;

    if-eqz v0, :cond_37

    .line 267
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getObjectValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/filterfw/core/GLFrame;->setObjectValue(Ljava/lang/Object;)V

    goto :goto_3a

    .line 269
    :cond_37
    invoke-super {p0, p1}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    .line 271
    :goto_3a
    return-void

    .line 256
    :cond_3b
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to assign frame of size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 257
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to smaller GL frame of size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 258
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

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
    .registers 4
    .param p1, "floats"    # [F

    .line 188
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->assertFrameMutable()V

    .line 189
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    .line 190
    invoke-direct {p0, p1}, Landroid/filterfw/core/GLFrame;->setNativeFloats([F)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 193
    return-void

    .line 191
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not set int values for GL frame!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setInts([I)V
    .registers 4
    .param p1, "ints"    # [I

    .line 172
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->assertFrameMutable()V

    .line 173
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    .line 174
    invoke-direct {p0, p1}, Landroid/filterfw/core/GLFrame;->setNativeInts([I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 177
    return-void

    .line 175
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not set int values for GL frame!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setTextureParameter(II)V
    .registers 6
    .param p1, "param"    # I
    .param p2, "value"    # I

    .line 294
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->assertFrameMutable()V

    .line 295
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    .line 296
    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/GLFrame;->setNativeTextureParam(II)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 300
    return-void

    .line 297
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not set texture value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for GLFrame!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setViewport(IIII)V
    .registers 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 274
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->assertFrameMutable()V

    .line 275
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/filterfw/core/GLFrame;->setNativeViewport(IIII)Z

    .line 276
    return-void
.end method

.method public greylist-max-o setViewport(Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 279
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->assertFrameMutable()V

    .line 280
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/filterfw/core/GLFrame;->setNativeViewport(IIII)Z

    .line 281
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLFrame id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/filterfw/core/GLFrame;->glFrameId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") with texture ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 320
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getTextureId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", FBO ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFboId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 319
    return-object v0
.end method
