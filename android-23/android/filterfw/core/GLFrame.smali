.class public Landroid/filterfw/core/GLFrame;
.super Landroid/filterfw/core/Frame;
.source "GLFrame.java"


# static fields
.field public static final EXISTING_FBO_BINDING:I = 0x65

.field public static final EXISTING_TEXTURE_BINDING:I = 0x64

.field public static final EXTERNAL_TEXTURE:I = 0x68

.field public static final NEW_FBO_BINDING:I = 0x67

.field public static final NEW_TEXTURE_BINDING:I = 0x66


# instance fields
.field private glFrameId:I

.field private mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

.field private mOwnsTexture:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 361
    const-string/jumbo v0, "filterfw"

    #@3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    #@6
    .line 47
    return-void
.end method

.method constructor <init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V
    .locals 1
    .param p1, "format"    # Landroid/filterfw/core/FrameFormat;
    .param p2, "frameManager"    # Landroid/filterfw/core/FrameManager;

    #@0
    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/Frame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V

    #@3
    .line 56
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/filterfw/core/GLFrame;->glFrameId:I

    #@6
    .line 62
    const/4 v0, 0x1

    #@7
    iput-boolean v0, p0, Landroid/filterfw/core/GLFrame;->mOwnsTexture:Z

    #@9
    .line 70
    return-void
.end method

.method constructor <init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;IJ)V
    .locals 2
    .param p1, "format"    # Landroid/filterfw/core/FrameFormat;
    .param p2, "frameManager"    # Landroid/filterfw/core/FrameManager;
    .param p3, "bindingType"    # I
    .param p4, "bindingId"    # J

    #@0
    .prologue
    .line 75
    invoke-direct/range {p0 .. p5}, Landroid/filterfw/core/Frame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;IJ)V

    #@3
    .line 56
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/filterfw/core/GLFrame;->glFrameId:I

    #@6
    .line 62
    const/4 v0, 0x1

    #@7
    iput-boolean v0, p0, Landroid/filterfw/core/GLFrame;->mOwnsTexture:Z

    #@9
    .line 74
    return-void
.end method

.method private assertGLEnvValid()V
    .locals 3

    #@0
    .prologue
    .line 349
    iget-object v0, p0, Landroid/filterfw/core/GLFrame;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    #@2
    invoke-virtual {v0}, Landroid/filterfw/core/GLEnvironment;->isContextActive()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_1

    #@8
    .line 350
    invoke-static {}, Landroid/filterfw/core/GLEnvironment;->isAnyContextActive()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 351
    new-instance v0, Ljava/lang/RuntimeException;

    #@10
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v2, "Attempting to access "

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    const-string/jumbo v2, " with foreign GL "

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    .line 352
    const-string/jumbo v2, "context active!"

    #@2a
    .line 351
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@35
    throw v0

    #@36
    .line 354
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    #@38
    new-instance v1, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v2, "Attempting to access "

    #@40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    const-string/jumbo v2, " with no GL context "

    #@4b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v1

    #@4f
    .line 355
    const-string/jumbo v2, " active!"

    #@52
    .line 354
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v1

    #@56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v1

    #@5a
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@5d
    throw v0

    #@5e
    .line 348
    :cond_1
    return-void
.end method

.method private native generateNativeMipMap()Z
.end method

.method private native getNativeBitmap(Landroid/graphics/Bitmap;)Z
.end method

.method private native getNativeData()[B
.end method

.method private native getNativeFboId()I
.end method

.method private native getNativeFloats()[F
.end method

.method private native getNativeInts()[I
.end method

.method private native getNativeTextureId()I
.end method

.method private initNew(Z)V
    .locals 3
    .param p1, "isExternal"    # Z

    #@0
    .prologue
    .line 115
    if-eqz p1, :cond_0

    #@2
    .line 116
    iget-object v0, p0, Landroid/filterfw/core/GLFrame;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    #@4
    invoke-direct {p0, v0}, Landroid/filterfw/core/GLFrame;->nativeAllocateExternal(Landroid/filterfw/core/GLEnvironment;)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_1

    #@a
    .line 117
    new-instance v0, Ljava/lang/RuntimeException;

    #@c
    const-string/jumbo v1, "Could not allocate external GL frame!"

    #@f
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 120
    :cond_0
    iget-object v0, p0, Landroid/filterfw/core/GLFrame;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    #@15
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    #@1c
    move-result v1

    #@1d
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    #@24
    move-result v2

    #@25
    invoke-direct {p0, v0, v1, v2}, Landroid/filterfw/core/GLFrame;->nativeAllocate(Landroid/filterfw/core/GLEnvironment;II)Z

    #@28
    move-result v0

    #@29
    if-nez v0, :cond_1

    #@2b
    .line 121
    new-instance v0, Ljava/lang/RuntimeException;

    #@2d
    const-string/jumbo v1, "Could not allocate GL frame!"

    #@30
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0

    #@34
    .line 114
    :cond_1
    return-void
.end method

.method private initWithFbo(I)V
    .locals 4
    .param p1, "fboId"    # I

    #@0
    .prologue
    .line 137
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    #@7
    move-result v1

    #@8
    .line 138
    .local v1, "width":I
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    #@f
    move-result v0

    #@10
    .line 139
    .local v0, "height":I
    iget-object v2, p0, Landroid/filterfw/core/GLFrame;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    #@12
    invoke-direct {p0, v2, p1, v1, v0}, Landroid/filterfw/core/GLFrame;->nativeAllocateWithFbo(Landroid/filterfw/core/GLEnvironment;III)Z

    #@15
    move-result v2

    #@16
    if-nez v2, :cond_0

    #@18
    .line 140
    new-instance v2, Ljava/lang/RuntimeException;

    #@1a
    const-string/jumbo v3, "Could not allocate FBO backed GL frame!"

    #@1d
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@20
    throw v2

    #@21
    .line 136
    :cond_0
    return-void
.end method

.method private initWithTexture(I)V
    .locals 4
    .param p1, "texId"    # I

    #@0
    .prologue
    .line 127
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    #@7
    move-result v1

    #@8
    .line 128
    .local v1, "width":I
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    #@f
    move-result v0

    #@10
    .line 129
    .local v0, "height":I
    iget-object v2, p0, Landroid/filterfw/core/GLFrame;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    #@12
    invoke-direct {p0, v2, p1, v1, v0}, Landroid/filterfw/core/GLFrame;->nativeAllocateWithTexture(Landroid/filterfw/core/GLEnvironment;III)Z

    #@15
    move-result v2

    #@16
    if-nez v2, :cond_0

    #@18
    .line 130
    new-instance v2, Ljava/lang/RuntimeException;

    #@1a
    const-string/jumbo v3, "Could not allocate texture backed GL frame!"

    #@1d
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@20
    throw v2

    #@21
    .line 132
    :cond_0
    const/4 v2, 0x0

    #@22
    iput-boolean v2, p0, Landroid/filterfw/core/GLFrame;->mOwnsTexture:Z

    #@24
    .line 133
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->markReadOnly()V

    #@27
    .line 126
    return-void
.end method

.method private native nativeAllocate(Landroid/filterfw/core/GLEnvironment;II)Z
.end method

.method private native nativeAllocateExternal(Landroid/filterfw/core/GLEnvironment;)Z
.end method

.method private native nativeAllocateWithFbo(Landroid/filterfw/core/GLEnvironment;III)Z
.end method

.method private native nativeAllocateWithTexture(Landroid/filterfw/core/GLEnvironment;III)Z
.end method

.method private native nativeCopyFromGL(Landroid/filterfw/core/GLFrame;)Z
.end method

.method private native nativeCopyFromNative(Landroid/filterfw/core/NativeFrame;)Z
.end method

.method private native nativeDeallocate()Z
.end method

.method private native nativeDetachTexFromFbo()Z
.end method

.method private native nativeFocus()Z
.end method

.method private native nativeReattachTexToFbo()Z
.end method

.method private native nativeResetParams()Z
.end method

.method private native setNativeBitmap(Landroid/graphics/Bitmap;I)Z
.end method

.method private native setNativeData([BII)Z
.end method

.method private native setNativeFloats([F)Z
.end method

.method private native setNativeInts([I)Z
.end method

.method private native setNativeTextureParam(II)Z
.end method

.method private native setNativeViewport(IIII)Z
.end method


# virtual methods
.method flushGPU(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 145
    invoke-static {}, Landroid/filterfw/core/GLFrameTimer;->get()Landroid/filterfw/core/StopWatchMap;

    #@3
    move-result-object v0

    #@4
    .line 146
    .local v0, "timer":Landroid/filterfw/core/StopWatchMap;
    iget-boolean v1, v0, Landroid/filterfw/core/StopWatchMap;->LOG_MFF_RUNNING_TIMES:Z

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "glFinish "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v0, v1}, Landroid/filterfw/core/StopWatchMap;->start(Ljava/lang/String;)V

    #@1f
    .line 148
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    #@22
    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v2, "glFinish "

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v0, v1}, Landroid/filterfw/core/StopWatchMap;->stop(Ljava/lang/String;)V

    #@39
    .line 144
    :cond_0
    return-void
.end method

.method public focus()V
    .locals 2

    #@0
    .prologue
    .line 312
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->nativeFocus()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 313
    new-instance v0, Ljava/lang/RuntimeException;

    #@8
    const-string/jumbo v1, "Could not focus on GLFrame for drawing!"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 311
    :cond_0
    return-void
.end method

.method public generateMipMap()V
    .locals 2

    #@0
    .prologue
    .line 287
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->assertFrameMutable()V

    #@3
    .line 288
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    #@6
    .line 289
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->generateNativeMipMap()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 290
    new-instance v0, Ljava/lang/RuntimeException;

    #@e
    const-string/jumbo v1, "Could not generate mip-map for GL frame!"

    #@11
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 286
    :cond_0
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 4

    #@0
    .prologue
    .line 242
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    #@3
    .line 243
    const-string/jumbo v1, "getBitmap"

    #@6
    invoke-virtual {p0, v1}, Landroid/filterfw/core/GLFrame;->flushGPU(Ljava/lang/String;)V

    #@9
    .line 244
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    #@10
    move-result v1

    #@11
    .line 245
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    #@18
    move-result v2

    #@19
    .line 246
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@1b
    .line 244
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@1e
    move-result-object v0

    #@1f
    .line 247
    .local v0, "result":Landroid/graphics/Bitmap;
    invoke-direct {p0, v0}, Landroid/filterfw/core/GLFrame;->getNativeBitmap(Landroid/graphics/Bitmap;)Z

    #@22
    move-result v1

    #@23
    if-nez v1, :cond_0

    #@25
    .line 248
    new-instance v1, Ljava/lang/RuntimeException;

    #@27
    const-string/jumbo v2, "Could not get bitmap data from GL frame!"

    #@2a
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v1

    #@2e
    .line 250
    :cond_0
    return-object v0
.end method

.method public getData()Ljava/nio/ByteBuffer;
    .locals 1

    #@0
    .prologue
    .line 220
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    #@3
    .line 221
    const-string/jumbo v0, "getData"

    #@6
    invoke-virtual {p0, v0}, Landroid/filterfw/core/GLFrame;->flushGPU(Ljava/lang/String;)V

    #@9
    .line 222
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->getNativeData()[B

    #@c
    move-result-object v0

    #@d
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public getFboId()I
    .locals 1

    #@0
    .prologue
    .line 308
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->getNativeFboId()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getFloats()[F
    .locals 1

    #@0
    .prologue
    .line 201
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    #@3
    .line 202
    const-string/jumbo v0, "getFloats"

    #@6
    invoke-virtual {p0, v0}, Landroid/filterfw/core/GLFrame;->flushGPU(Ljava/lang/String;)V

    #@9
    .line 203
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->getNativeFloats()[F

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public getGLEnvironment()Landroid/filterfw/core/GLEnvironment;
    .locals 1

    #@0
    .prologue
    .line 165
    iget-object v0, p0, Landroid/filterfw/core/GLFrame;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    #@2
    return-object v0
.end method

.method public getInts()[I
    .locals 1

    #@0
    .prologue
    .line 185
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    #@3
    .line 186
    const-string/jumbo v0, "getInts"

    #@6
    invoke-virtual {p0, v0}, Landroid/filterfw/core/GLFrame;->flushGPU(Ljava/lang/String;)V

    #@9
    .line 187
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->getNativeInts()[I

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public getObjectValue()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 170
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    #@3
    .line 171
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->getNativeData()[B

    #@6
    move-result-object v0

    #@7
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public getTextureId()I
    .locals 1

    #@0
    .prologue
    .line 304
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->getNativeTextureId()I

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
    .line 155
    :try_start_0
    iget v0, p0, Landroid/filterfw/core/GLFrame;->glFrameId:I
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

.method init(Landroid/filterfw/core/GLEnvironment;)V
    .locals 6
    .param p1, "glEnv"    # Landroid/filterfw/core/GLEnvironment;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 79
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@4
    move-result-object v1

    #@5
    .line 80
    .local v1, "format":Landroid/filterfw/core/FrameFormat;
    iput-object p1, p0, Landroid/filterfw/core/GLFrame;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    #@7
    .line 83
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    #@a
    move-result v3

    #@b
    const/4 v4, 0x4

    #@c
    if-eq v3, v4, :cond_0

    #@e
    .line 84
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v4, "GL frames must have 4 bytes per sample!"

    #@13
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v3

    #@17
    .line 85
    :cond_0
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getDimensionCount()I

    #@1a
    move-result v3

    #@1b
    const/4 v4, 0x2

    #@1c
    if-eq v3, v4, :cond_1

    #@1e
    .line 86
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@20
    const-string/jumbo v4, "GL frames must be 2-dimensional!"

    #@23
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v3

    #@27
    .line 87
    :cond_1
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->getSize()I

    #@2e
    move-result v3

    #@2f
    if-gez v3, :cond_2

    #@31
    .line 88
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@33
    const-string/jumbo v4, "Initializing GL frame with zero size!"

    #@36
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@39
    throw v3

    #@3a
    .line 92
    :cond_2
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getBindingType()I

    #@3d
    move-result v0

    #@3e
    .line 93
    .local v0, "bindingType":I
    const/4 v2, 0x1

    #@3f
    .line 94
    .local v2, "reusable":Z
    if-nez v0, :cond_3

    #@41
    .line 95
    invoke-direct {p0, v5}, Landroid/filterfw/core/GLFrame;->initNew(Z)V

    #@44
    .line 111
    :goto_0
    invoke-virtual {p0, v2}, Landroid/filterfw/core/GLFrame;->setReusable(Z)V

    #@47
    .line 78
    return-void

    #@48
    .line 96
    :cond_3
    const/16 v3, 0x68

    #@4a
    if-ne v0, v3, :cond_4

    #@4c
    .line 97
    const/4 v3, 0x1

    #@4d
    invoke-direct {p0, v3}, Landroid/filterfw/core/GLFrame;->initNew(Z)V

    #@50
    .line 98
    const/4 v2, 0x0

    #@51
    goto :goto_0

    #@52
    .line 99
    :cond_4
    const/16 v3, 0x64

    #@54
    if-ne v0, v3, :cond_5

    #@56
    .line 100
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getBindingId()J

    #@59
    move-result-wide v4

    #@5a
    long-to-int v3, v4

    #@5b
    invoke-direct {p0, v3}, Landroid/filterfw/core/GLFrame;->initWithTexture(I)V

    #@5e
    goto :goto_0

    #@5f
    .line 101
    :cond_5
    const/16 v3, 0x65

    #@61
    if-ne v0, v3, :cond_6

    #@63
    .line 102
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getBindingId()J

    #@66
    move-result-wide v4

    #@67
    long-to-int v3, v4

    #@68
    invoke-direct {p0, v3}, Landroid/filterfw/core/GLFrame;->initWithFbo(I)V

    #@6b
    goto :goto_0

    #@6c
    .line 103
    :cond_6
    const/16 v3, 0x66

    #@6e
    if-ne v0, v3, :cond_7

    #@70
    .line 104
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getBindingId()J

    #@73
    move-result-wide v4

    #@74
    long-to-int v3, v4

    #@75
    invoke-direct {p0, v3}, Landroid/filterfw/core/GLFrame;->initWithTexture(I)V

    #@78
    goto :goto_0

    #@79
    .line 105
    :cond_7
    const/16 v3, 0x67

    #@7b
    if-ne v0, v3, :cond_8

    #@7d
    .line 106
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getBindingId()J

    #@80
    move-result-wide v4

    #@81
    long-to-int v3, v4

    #@82
    invoke-direct {p0, v3}, Landroid/filterfw/core/GLFrame;->initWithFbo(I)V

    #@85
    goto :goto_0

    #@86
    .line 108
    :cond_8
    new-instance v3, Ljava/lang/RuntimeException;

    #@88
    new-instance v4, Ljava/lang/StringBuilder;

    #@8a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@8d
    const-string/jumbo v5, "Attempting to create GL frame with unknown binding type "

    #@90
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v4

    #@94
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@97
    move-result-object v4

    #@98
    .line 109
    const-string/jumbo v5, "!"

    #@9b
    .line 108
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v4

    #@9f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a2
    move-result-object v4

    #@a3
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@a6
    throw v3
.end method

.method protected onFrameFetch()V
    .locals 1

    #@0
    .prologue
    .line 341
    iget-boolean v0, p0, Landroid/filterfw/core/GLFrame;->mOwnsTexture:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 344
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->nativeReattachTexToFbo()Z

    #@7
    .line 340
    :cond_0
    return-void
.end method

.method protected onFrameStore()V
    .locals 1

    #@0
    .prologue
    .line 333
    iget-boolean v0, p0, Landroid/filterfw/core/GLFrame;->mOwnsTexture:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 335
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->nativeDetachTexFromFbo()Z

    #@7
    .line 332
    :cond_0
    return-void
.end method

.method protected declared-synchronized releaseNativeAllocation()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 160
    :try_start_0
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->nativeDeallocate()Z

    #@4
    .line 161
    const/4 v0, -0x1

    #@5
    iput v0, p0, Landroid/filterfw/core/GLFrame;->glFrameId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    .line 159
    return-void

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method protected reset(Landroid/filterfw/core/FrameFormat;)V
    .locals 2
    .param p1, "newFormat"    # Landroid/filterfw/core/FrameFormat;

    #@0
    .prologue
    .line 325
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->nativeResetParams()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 326
    new-instance v0, Ljava/lang/RuntimeException;

    #@8
    const-string/jumbo v1, "Could not reset GLFrame texture parameters!"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 328
    :cond_0
    invoke-super {p0, p1}, Landroid/filterfw/core/Frame;->reset(Landroid/filterfw/core/FrameFormat;)V

    #@12
    .line 324
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 227
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->assertFrameMutable()V

    #@3
    .line 228
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    #@6
    .line 229
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    #@d
    move-result v1

    #@e
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    #@11
    move-result v2

    #@12
    if-ne v1, v2, :cond_0

    #@14
    .line 230
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    #@1b
    move-result v1

    #@1c
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    #@1f
    move-result v2

    #@20
    if-eq v1, v2, :cond_1

    #@22
    .line 231
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    #@24
    const-string/jumbo v2, "Bitmap dimensions do not match GL frame dimensions!"

    #@27
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v1

    #@2b
    .line 233
    :cond_1
    invoke-static {p1}, Landroid/filterfw/core/GLFrame;->convertBitmapToRGBA(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    #@2e
    move-result-object v0

    #@2f
    .line 234
    .local v0, "rgbaBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    #@32
    move-result v1

    #@33
    invoke-direct {p0, v0, v1}, Landroid/filterfw/core/GLFrame;->setNativeBitmap(Landroid/graphics/Bitmap;I)Z

    #@36
    move-result v1

    #@37
    if-nez v1, :cond_2

    #@39
    .line 235
    new-instance v1, Ljava/lang/RuntimeException;

    #@3b
    const-string/jumbo v2, "Could not set GL frame bitmap data!"

    #@3e
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@41
    throw v1

    #@42
    .line 226
    :cond_2
    return-void
.end method

.method public setData(Ljava/nio/ByteBuffer;II)V
    .locals 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 208
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->assertFrameMutable()V

    #@3
    .line 209
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    #@6
    .line 210
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    #@9
    move-result-object v0

    #@a
    .line 211
    .local v0, "bytes":[B
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getSize()I

    #@11
    move-result v1

    #@12
    array-length v2, v0

    #@13
    if-eq v1, v2, :cond_0

    #@15
    .line 212
    new-instance v1, Ljava/lang/RuntimeException;

    #@17
    const-string/jumbo v2, "Data size in setData does not match GL frame size!"

    #@1a
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v1

    #@1e
    .line 213
    :cond_0
    invoke-direct {p0, v0, p2, p3}, Landroid/filterfw/core/GLFrame;->setNativeData([BII)Z

    #@21
    move-result v1

    #@22
    if-nez v1, :cond_1

    #@24
    .line 214
    new-instance v1, Ljava/lang/RuntimeException;

    #@26
    const-string/jumbo v2, "Could not set GL frame data!"

    #@29
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v1

    #@2d
    .line 207
    :cond_1
    return-void
.end method

.method public setDataFromFrame(Landroid/filterfw/core/Frame;)V
    .locals 3
    .param p1, "frame"    # Landroid/filterfw/core/Frame;

    #@0
    .prologue
    .line 255
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    #@3
    .line 258
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getSize()I

    #@a
    move-result v0

    #@b
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getSize()I

    #@12
    move-result v1

    #@13
    if-ge v0, v1, :cond_0

    #@15
    .line 259
    new-instance v0, Ljava/lang/RuntimeException;

    #@17
    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v2, "Attempting to assign frame of size "

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getSize()I

    #@2a
    move-result v2

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    const-string/jumbo v2, " to "

    #@32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    .line 261
    const-string/jumbo v2, "smaller GL frame of size "

    #@39
    .line 260
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    .line 261
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@40
    move-result-object v2

    #@41
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getSize()I

    #@44
    move-result v2

    #@45
    .line 260
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    .line 261
    const-string/jumbo v2, "!"

    #@4c
    .line 260
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v1

    #@54
    .line 259
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@57
    throw v0

    #@58
    .line 265
    :cond_0
    instance-of v0, p1, Landroid/filterfw/core/NativeFrame;

    #@5a
    if-eqz v0, :cond_1

    #@5c
    .line 266
    check-cast p1, Landroid/filterfw/core/NativeFrame;

    #@5e
    .end local p1    # "frame":Landroid/filterfw/core/Frame;
    invoke-direct {p0, p1}, Landroid/filterfw/core/GLFrame;->nativeCopyFromNative(Landroid/filterfw/core/NativeFrame;)Z

    #@61
    .line 254
    :goto_0
    return-void

    #@62
    .line 267
    .restart local p1    # "frame":Landroid/filterfw/core/Frame;
    :cond_1
    instance-of v0, p1, Landroid/filterfw/core/GLFrame;

    #@64
    if-eqz v0, :cond_2

    #@66
    .line 268
    check-cast p1, Landroid/filterfw/core/GLFrame;

    #@68
    .end local p1    # "frame":Landroid/filterfw/core/Frame;
    invoke-direct {p0, p1}, Landroid/filterfw/core/GLFrame;->nativeCopyFromGL(Landroid/filterfw/core/GLFrame;)Z

    #@6b
    goto :goto_0

    #@6c
    .line 269
    .restart local p1    # "frame":Landroid/filterfw/core/Frame;
    :cond_2
    instance-of v0, p1, Landroid/filterfw/core/SimpleFrame;

    #@6e
    if-eqz v0, :cond_3

    #@70
    .line 270
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getObjectValue()Ljava/lang/Object;

    #@73
    move-result-object v0

    #@74
    invoke-virtual {p0, v0}, Landroid/filterfw/core/GLFrame;->setObjectValue(Ljava/lang/Object;)V

    #@77
    goto :goto_0

    #@78
    .line 272
    :cond_3
    invoke-super {p0, p1}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    #@7b
    goto :goto_0
.end method

.method public setFloats([F)V
    .locals 2
    .param p1, "floats"    # [F

    #@0
    .prologue
    .line 192
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->assertFrameMutable()V

    #@3
    .line 193
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    #@6
    .line 194
    invoke-direct {p0, p1}, Landroid/filterfw/core/GLFrame;->setNativeFloats([F)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 195
    new-instance v0, Ljava/lang/RuntimeException;

    #@e
    const-string/jumbo v1, "Could not set int values for GL frame!"

    #@11
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 191
    :cond_0
    return-void
.end method

.method public setInts([I)V
    .locals 2
    .param p1, "ints"    # [I

    #@0
    .prologue
    .line 176
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->assertFrameMutable()V

    #@3
    .line 177
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    #@6
    .line 178
    invoke-direct {p0, p1}, Landroid/filterfw/core/GLFrame;->setNativeInts([I)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 179
    new-instance v0, Ljava/lang/RuntimeException;

    #@e
    const-string/jumbo v1, "Could not set int values for GL frame!"

    #@11
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 175
    :cond_0
    return-void
.end method

.method public setTextureParameter(II)V
    .locals 3
    .param p1, "param"    # I
    .param p2, "value"    # I

    #@0
    .prologue
    .line 295
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->assertFrameMutable()V

    #@3
    .line 296
    invoke-direct {p0}, Landroid/filterfw/core/GLFrame;->assertGLEnvValid()V

    #@6
    .line 297
    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/GLFrame;->setNativeTextureParam(II)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 298
    new-instance v0, Ljava/lang/RuntimeException;

    #@e
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v2, "Could not set texture value "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    const-string/jumbo v2, " = "

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    const-string/jumbo v2, " "

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    .line 299
    const-string/jumbo v2, "for GLFrame!"

    #@33
    .line 298
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v0

    #@3f
    .line 294
    :cond_0
    return-void
.end method

.method public setViewport(IIII)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    #@0
    .prologue
    .line 277
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->assertFrameMutable()V

    #@3
    .line 278
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/filterfw/core/GLFrame;->setNativeViewport(IIII)Z

    #@6
    .line 276
    return-void
.end method

.method public setViewport(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "rect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 282
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->assertFrameMutable()V

    #@3
    .line 283
    iget v0, p1, Landroid/graphics/Rect;->left:I

    #@5
    iget v1, p1, Landroid/graphics/Rect;->top:I

    #@7
    iget v2, p1, Landroid/graphics/Rect;->right:I

    #@9
    iget v3, p1, Landroid/graphics/Rect;->left:I

    #@b
    sub-int/2addr v2, v3

    #@c
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    #@e
    iget v4, p1, Landroid/graphics/Rect;->top:I

    #@10
    sub-int/2addr v3, v4

    #@11
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/filterfw/core/GLFrame;->setNativeViewport(IIII)Z

    #@14
    .line 281
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "GLFrame id: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid/filterfw/core/GLFrame;->glFrameId:I

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
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    const-string/jumbo v1, ") with texture ID "

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    .line 320
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getTextureId()I

    #@2b
    move-result v1

    #@2c
    .line 319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    .line 320
    const-string/jumbo v1, ", FBO ID "

    #@33
    .line 319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    .line 320
    invoke-virtual {p0}, Landroid/filterfw/core/GLFrame;->getFboId()I

    #@3a
    move-result v1

    #@3b
    .line 319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v0

    #@43
    return-object v0
.end method
