.class public Landroid/filterfw/core/ShaderProgram;
.super Landroid/filterfw/core/Program;
.source "ShaderProgram.java"


# instance fields
.field private mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

.field private mMaxTileSize:I

.field private mTimer:Landroid/filterfw/core/StopWatchMap;

.field private shaderProgramId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 248
    const-string/jumbo v0, "filterfw"

    #@3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    #@6
    .line 31
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Landroid/filterfw/core/Program;-><init>()V

    #@3
    .line 35
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/filterfw/core/ShaderProgram;->mMaxTileSize:I

    #@6
    .line 41
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Landroid/filterfw/core/ShaderProgram;->mTimer:Landroid/filterfw/core/StopWatchMap;

    #@9
    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "fragmentShader"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 54
    invoke-direct {p0}, Landroid/filterfw/core/Program;-><init>()V

    #@4
    .line 35
    const/4 v0, 0x0

    #@5
    iput v0, p0, Landroid/filterfw/core/ShaderProgram;->mMaxTileSize:I

    #@7
    .line 41
    iput-object v1, p0, Landroid/filterfw/core/ShaderProgram;->mTimer:Landroid/filterfw/core/StopWatchMap;

    #@9
    .line 55
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->getGLEnvironment(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/GLEnvironment;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/filterfw/core/ShaderProgram;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    #@f
    .line 56
    iget-object v0, p0, Landroid/filterfw/core/ShaderProgram;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    #@11
    invoke-direct {p0, v0, v1, p2}, Landroid/filterfw/core/ShaderProgram;->allocate(Landroid/filterfw/core/GLEnvironment;Ljava/lang/String;Ljava/lang/String;)Z

    #@14
    .line 57
    invoke-direct {p0}, Landroid/filterfw/core/ShaderProgram;->compileAndLink()Z

    #@17
    move-result v0

    #@18
    if-nez v0, :cond_0

    #@1a
    .line 58
    new-instance v0, Ljava/lang/RuntimeException;

    #@1c
    const-string/jumbo v1, "Could not compile and link shader!"

    #@1f
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    .line 60
    :cond_0
    invoke-direct {p0}, Landroid/filterfw/core/ShaderProgram;->setTimer()V

    #@26
    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "vertexShader"    # Ljava/lang/String;
    .param p3, "fragmentShader"    # Ljava/lang/String;

    #@0
    .prologue
    .line 63
    invoke-direct {p0}, Landroid/filterfw/core/Program;-><init>()V

    #@3
    .line 35
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/filterfw/core/ShaderProgram;->mMaxTileSize:I

    #@6
    .line 41
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Landroid/filterfw/core/ShaderProgram;->mTimer:Landroid/filterfw/core/StopWatchMap;

    #@9
    .line 64
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->getGLEnvironment(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/GLEnvironment;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/filterfw/core/ShaderProgram;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    #@f
    .line 65
    iget-object v0, p0, Landroid/filterfw/core/ShaderProgram;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    #@11
    invoke-direct {p0, v0, p2, p3}, Landroid/filterfw/core/ShaderProgram;->allocate(Landroid/filterfw/core/GLEnvironment;Ljava/lang/String;Ljava/lang/String;)Z

    #@14
    .line 66
    invoke-direct {p0}, Landroid/filterfw/core/ShaderProgram;->compileAndLink()Z

    #@17
    move-result v0

    #@18
    if-nez v0, :cond_0

    #@1a
    .line 67
    new-instance v0, Ljava/lang/RuntimeException;

    #@1c
    const-string/jumbo v1, "Could not compile and link shader!"

    #@1f
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    .line 69
    :cond_0
    invoke-direct {p0}, Landroid/filterfw/core/ShaderProgram;->setTimer()V

    #@26
    .line 63
    return-void
.end method

.method private constructor <init>(Landroid/filterfw/core/NativeAllocatorTag;)V
    .locals 1
    .param p1, "tag"    # Landroid/filterfw/core/NativeAllocatorTag;

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Landroid/filterfw/core/Program;-><init>()V

    #@3
    .line 35
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/filterfw/core/ShaderProgram;->mMaxTileSize:I

    #@6
    .line 41
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Landroid/filterfw/core/ShaderProgram;->mTimer:Landroid/filterfw/core/StopWatchMap;

    #@9
    .line 51
    return-void
.end method

.method private native allocate(Landroid/filterfw/core/GLEnvironment;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native beginShaderDrawing()Z
.end method

.method private native compileAndLink()Z
.end method

.method public static createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;
    .locals 2
    .param p0, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 73
    invoke-static {p0}, Landroid/filterfw/core/ShaderProgram;->getGLEnvironment(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/GLEnvironment;

    #@3
    move-result-object v1

    #@4
    invoke-static {v1}, Landroid/filterfw/core/ShaderProgram;->nativeCreateIdentity(Landroid/filterfw/core/GLEnvironment;)Landroid/filterfw/core/ShaderProgram;

    #@7
    move-result-object v0

    #@8
    .line 74
    .local v0, "program":Landroid/filterfw/core/ShaderProgram;
    invoke-direct {v0}, Landroid/filterfw/core/ShaderProgram;->setTimer()V

    #@b
    .line 75
    return-object v0
.end method

.method private native deallocate()Z
.end method

.method private static getGLEnvironment(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/GLEnvironment;
    .locals 3
    .param p0, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 239
    if-eqz p0, :cond_0

    #@2
    invoke-virtual {p0}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    #@5
    move-result-object v0

    #@6
    .line 240
    :goto_0
    if-nez v0, :cond_1

    #@8
    .line 241
    new-instance v1, Ljava/lang/NullPointerException;

    #@a
    const-string/jumbo v2, "Attempting to create ShaderProgram with no GL environment in place!"

    #@d
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 239
    :cond_0
    const/4 v0, 0x0

    #@12
    .local v0, "result":Landroid/filterfw/core/GLEnvironment;
    goto :goto_0

    #@13
    .line 244
    .end local v0    # "result":Landroid/filterfw/core/GLEnvironment;
    :cond_1
    return-object v0
.end method

.method private native getUniformValue(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method private static native nativeCreateIdentity(Landroid/filterfw/core/GLEnvironment;)Landroid/filterfw/core/ShaderProgram;
.end method

.method private native setShaderAttributeValues(Ljava/lang/String;[FI)Z
.end method

.method private native setShaderAttributeVertexFrame(Ljava/lang/String;Landroid/filterfw/core/VertexFrame;IIIIZ)Z
.end method

.method private native setShaderBlendEnabled(Z)Z
.end method

.method private native setShaderBlendFunc(II)Z
.end method

.method private native setShaderClearColor(FFF)Z
.end method

.method private native setShaderClearsOutput(Z)Z
.end method

.method private native setShaderDrawMode(I)Z
.end method

.method private native setShaderTileCounts(II)Z
.end method

.method private native setShaderVertexCount(I)Z
.end method

.method private native setTargetRegion(FFFFFFFF)Z
.end method

.method private setTimer()V
    .locals 1

    #@0
    .prologue
    .line 44
    new-instance v0, Landroid/filterfw/core/StopWatchMap;

    #@2
    invoke-direct {v0}, Landroid/filterfw/core/StopWatchMap;-><init>()V

    #@5
    iput-object v0, p0, Landroid/filterfw/core/ShaderProgram;->mTimer:Landroid/filterfw/core/StopWatchMap;

    #@7
    .line 43
    return-void
.end method

.method private native setUniformValue(Ljava/lang/String;Ljava/lang/Object;)Z
.end method

.method private native shaderProcess([Landroid/filterfw/core/GLFrame;Landroid/filterfw/core/GLFrame;)Z
.end method


# virtual methods
.method public beginDrawing()V
    .locals 2

    #@0
    .prologue
    .line 233
    invoke-direct {p0}, Landroid/filterfw/core/ShaderProgram;->beginShaderDrawing()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 234
    new-instance v0, Ljava/lang/RuntimeException;

    #@8
    const-string/jumbo v1, "Could not prepare shader-program for drawing!"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 232
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 80
    invoke-direct {p0}, Landroid/filterfw/core/ShaderProgram;->deallocate()Z

    #@3
    .line 79
    return-void
.end method

.method public getGLEnvironment()Landroid/filterfw/core/GLEnvironment;
    .locals 1

    #@0
    .prologue
    .line 84
    iget-object v0, p0, Landroid/filterfw/core/ShaderProgram;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    #@2
    return-object v0
.end method

.method public getHostValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "variableName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 141
    invoke-direct {p0, p1}, Landroid/filterfw/core/ShaderProgram;->getUniformValue(Ljava/lang/String;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V
    .locals 8
    .param p1, "inputs"    # [Landroid/filterfw/core/Frame;
    .param p2, "output"    # Landroid/filterfw/core/Frame;

    #@0
    .prologue
    .line 89
    iget-object v5, p0, Landroid/filterfw/core/ShaderProgram;->mTimer:Landroid/filterfw/core/StopWatchMap;

    #@2
    iget-boolean v5, v5, Landroid/filterfw/core/StopWatchMap;->LOG_MFF_RUNNING_TIMES:Z

    #@4
    if-eqz v5, :cond_0

    #@6
    .line 90
    iget-object v5, p0, Landroid/filterfw/core/ShaderProgram;->mTimer:Landroid/filterfw/core/StopWatchMap;

    #@8
    const-string/jumbo v6, "glFinish"

    #@b
    invoke-virtual {v5, v6}, Landroid/filterfw/core/StopWatchMap;->start(Ljava/lang/String;)V

    #@e
    .line 91
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    #@11
    .line 92
    iget-object v5, p0, Landroid/filterfw/core/ShaderProgram;->mTimer:Landroid/filterfw/core/StopWatchMap;

    #@13
    const-string/jumbo v6, "glFinish"

    #@16
    invoke-virtual {v5, v6}, Landroid/filterfw/core/StopWatchMap;->stop(Ljava/lang/String;)V

    #@19
    .line 97
    :cond_0
    array-length v5, p1

    #@1a
    new-array v0, v5, [Landroid/filterfw/core/GLFrame;

    #@1c
    .line 98
    .local v0, "glInputs":[Landroid/filterfw/core/GLFrame;
    const/4 v2, 0x0

    #@1d
    .local v2, "i":I
    :goto_0
    array-length v5, p1

    #@1e
    if-ge v2, v5, :cond_2

    #@20
    .line 99
    aget-object v5, p1, v2

    #@22
    instance-of v5, v5, Landroid/filterfw/core/GLFrame;

    #@24
    if-eqz v5, :cond_1

    #@26
    .line 100
    aget-object v5, p1, v2

    #@28
    check-cast v5, Landroid/filterfw/core/GLFrame;

    #@2a
    aput-object v5, v0, v2

    #@2c
    .line 98
    add-int/lit8 v2, v2, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 102
    :cond_1
    new-instance v5, Ljava/lang/RuntimeException;

    #@31
    new-instance v6, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v7, "ShaderProgram got non-GL frame as input "

    #@39
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v6

    #@3d
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v6

    #@41
    const-string/jumbo v7, "!"

    #@44
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v6

    #@48
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v6

    #@4c
    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v5

    #@50
    .line 107
    :cond_2
    const/4 v1, 0x0

    #@51
    .line 108
    .local v1, "glOutput":Landroid/filterfw/core/GLFrame;
    instance-of v5, p2, Landroid/filterfw/core/GLFrame;

    #@53
    if-eqz v5, :cond_4

    #@55
    move-object v1, p2

    #@56
    .line 109
    check-cast v1, Landroid/filterfw/core/GLFrame;

    #@58
    .line 115
    .local v1, "glOutput":Landroid/filterfw/core/GLFrame;
    iget v5, p0, Landroid/filterfw/core/ShaderProgram;->mMaxTileSize:I

    #@5a
    if-lez v5, :cond_3

    #@5c
    .line 116
    invoke-virtual {p2}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@5f
    move-result-object v5

    #@60
    invoke-virtual {v5}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    #@63
    move-result v5

    #@64
    iget v6, p0, Landroid/filterfw/core/ShaderProgram;->mMaxTileSize:I

    #@66
    add-int/2addr v5, v6

    #@67
    add-int/lit8 v5, v5, -0x1

    #@69
    iget v6, p0, Landroid/filterfw/core/ShaderProgram;->mMaxTileSize:I

    #@6b
    div-int v3, v5, v6

    #@6d
    .line 117
    .local v3, "xTiles":I
    invoke-virtual {p2}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@70
    move-result-object v5

    #@71
    invoke-virtual {v5}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    #@74
    move-result v5

    #@75
    iget v6, p0, Landroid/filterfw/core/ShaderProgram;->mMaxTileSize:I

    #@77
    add-int/2addr v5, v6

    #@78
    add-int/lit8 v5, v5, -0x1

    #@7a
    iget v6, p0, Landroid/filterfw/core/ShaderProgram;->mMaxTileSize:I

    #@7c
    div-int v4, v5, v6

    #@7e
    .line 118
    .local v4, "yTiles":I
    invoke-direct {p0, v3, v4}, Landroid/filterfw/core/ShaderProgram;->setShaderTileCounts(II)Z

    #@81
    .line 122
    .end local v3    # "xTiles":I
    .end local v4    # "yTiles":I
    :cond_3
    invoke-direct {p0, v0, v1}, Landroid/filterfw/core/ShaderProgram;->shaderProcess([Landroid/filterfw/core/GLFrame;Landroid/filterfw/core/GLFrame;)Z

    #@84
    move-result v5

    #@85
    if-nez v5, :cond_5

    #@87
    .line 123
    new-instance v5, Ljava/lang/RuntimeException;

    #@89
    const-string/jumbo v6, "Error executing ShaderProgram!"

    #@8c
    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@8f
    throw v5

    #@90
    .line 111
    .local v1, "glOutput":Landroid/filterfw/core/GLFrame;
    :cond_4
    new-instance v5, Ljava/lang/RuntimeException;

    #@92
    const-string/jumbo v6, "ShaderProgram got non-GL output frame!"

    #@95
    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@98
    throw v5

    #@99
    .line 126
    .local v1, "glOutput":Landroid/filterfw/core/GLFrame;
    :cond_5
    iget-object v5, p0, Landroid/filterfw/core/ShaderProgram;->mTimer:Landroid/filterfw/core/StopWatchMap;

    #@9b
    iget-boolean v5, v5, Landroid/filterfw/core/StopWatchMap;->LOG_MFF_RUNNING_TIMES:Z

    #@9d
    if-eqz v5, :cond_6

    #@9f
    .line 127
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    #@a2
    .line 88
    :cond_6
    return-void
.end method

.method public setAttributeValues(Ljava/lang/String;Landroid/filterfw/core/VertexFrame;IIIIZ)V
    .locals 3
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "vertexData"    # Landroid/filterfw/core/VertexFrame;
    .param p3, "type"    # I
    .param p4, "componentCount"    # I
    .param p5, "strideInBytes"    # I
    .param p6, "offsetInBytes"    # I
    .param p7, "normalize"    # Z

    #@0
    .prologue
    .line 158
    invoke-direct/range {p0 .. p7}, Landroid/filterfw/core/ShaderProgram;->setShaderAttributeVertexFrame(Ljava/lang/String;Landroid/filterfw/core/VertexFrame;IIIIZ)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 165
    new-instance v0, Ljava/lang/RuntimeException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Error setting attribute value for attribute \'"

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    .line 166
    const-string/jumbo v2, "\'!"

    #@1b
    .line 165
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 157
    :cond_0
    return-void
.end method

.method public setAttributeValues(Ljava/lang/String;[FI)V
    .locals 3
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "data"    # [F
    .param p3, "componentCount"    # I

    #@0
    .prologue
    .line 145
    invoke-direct {p0, p1, p2, p3}, Landroid/filterfw/core/ShaderProgram;->setShaderAttributeValues(Ljava/lang/String;[FI)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 146
    new-instance v0, Ljava/lang/RuntimeException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Error setting attribute value for attribute \'"

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    .line 147
    const-string/jumbo v2, "\'!"

    #@1b
    .line 146
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 144
    :cond_0
    return-void
.end method

.method public setBlendEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 205
    invoke-direct {p0, p1}, Landroid/filterfw/core/ShaderProgram;->setShaderBlendEnabled(Z)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 206
    new-instance v0, Ljava/lang/RuntimeException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Could not set Blending "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    const-string/jumbo v2, "!"

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 204
    :cond_0
    return-void
.end method

.method public setBlendFunc(II)V
    .locals 3
    .param p1, "sfactor"    # I
    .param p2, "dfactor"    # I

    #@0
    .prologue
    .line 211
    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/ShaderProgram;->setShaderBlendFunc(II)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 212
    new-instance v0, Ljava/lang/RuntimeException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Could not set BlendFunc "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    const-string/jumbo v2, ","

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    const-string/jumbo v2, "!"

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@31
    throw v0

    #@32
    .line 210
    :cond_0
    return-void
.end method

.method public setClearColor(FFF)V
    .locals 3
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F

    #@0
    .prologue
    .line 199
    invoke-direct {p0, p1, p2, p3}, Landroid/filterfw/core/ShaderProgram;->setShaderClearColor(FFF)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 200
    new-instance v0, Ljava/lang/RuntimeException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Could not set clear color to "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    const-string/jumbo v2, ","

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    const-string/jumbo v2, ","

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    const-string/jumbo v2, "!"

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v0

    #@3d
    .line 198
    :cond_0
    return-void
.end method

.method public setClearsOutput(Z)V
    .locals 3
    .param p1, "clears"    # Z

    #@0
    .prologue
    .line 193
    invoke-direct {p0, p1}, Landroid/filterfw/core/ShaderProgram;->setShaderClearsOutput(Z)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 194
    new-instance v0, Ljava/lang/RuntimeException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Could not set clears-output flag to "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    const-string/jumbo v2, "!"

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 192
    :cond_0
    return-void
.end method

.method public setDrawMode(I)V
    .locals 3
    .param p1, "drawMode"    # I

    #@0
    .prologue
    .line 217
    invoke-direct {p0, p1}, Landroid/filterfw/core/ShaderProgram;->setShaderDrawMode(I)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 218
    new-instance v0, Ljava/lang/RuntimeException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Could not set GL draw-mode to "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    const-string/jumbo v2, "!"

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 216
    :cond_0
    return-void
.end method

.method public setHostValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "variableName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/ShaderProgram;->setUniformValue(Ljava/lang/String;Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 134
    new-instance v0, Ljava/lang/RuntimeException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Error setting uniform value for variable \'"

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    .line 135
    const-string/jumbo v2, "\'!"

    #@1b
    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 132
    :cond_0
    return-void
.end method

.method public setMaximumTileSize(I)V
    .locals 0
    .param p1, "size"    # I

    #@0
    .prologue
    .line 229
    iput p1, p0, Landroid/filterfw/core/ShaderProgram;->mMaxTileSize:I

    #@2
    .line 228
    return-void
.end method

.method public setSourceRect(FFFF)V
    .locals 9
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    #@0
    .prologue
    .line 185
    add-float v3, p1, p3

    #@2
    add-float v6, p2, p4

    #@4
    add-float v7, p1, p3

    #@6
    add-float v8, p2, p4

    #@8
    move-object v0, p0

    #@9
    move v1, p1

    #@a
    move v2, p2

    #@b
    move v4, p2

    #@c
    move v5, p1

    #@d
    invoke-virtual/range {v0 .. v8}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(FFFFFFFF)Z

    #@10
    .line 184
    return-void
.end method

.method public setSourceRegion(Landroid/filterfw/geometry/Quad;)V
    .locals 9
    .param p1, "region"    # Landroid/filterfw/geometry/Quad;

    #@0
    .prologue
    .line 171
    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    #@2
    iget v1, v0, Landroid/filterfw/geometry/Point;->x:F

    #@4
    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    #@6
    iget v2, v0, Landroid/filterfw/geometry/Point;->y:F

    #@8
    .line 172
    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    #@a
    iget v3, v0, Landroid/filterfw/geometry/Point;->x:F

    #@c
    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    #@e
    iget v4, v0, Landroid/filterfw/geometry/Point;->y:F

    #@10
    .line 173
    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    #@12
    iget v5, v0, Landroid/filterfw/geometry/Point;->x:F

    #@14
    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    #@16
    iget v6, v0, Landroid/filterfw/geometry/Point;->y:F

    #@18
    .line 174
    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    #@1a
    iget v7, v0, Landroid/filterfw/geometry/Point;->x:F

    #@1c
    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    #@1e
    iget v8, v0, Landroid/filterfw/geometry/Point;->y:F

    #@20
    move-object v0, p0

    #@21
    .line 171
    invoke-virtual/range {v0 .. v8}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(FFFFFFFF)Z

    #@24
    .line 170
    return-void
.end method

.method public native setSourceRegion(FFFFFFFF)Z
.end method

.method public setTargetRect(FFFF)V
    .locals 9
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    #@0
    .prologue
    .line 189
    add-float v3, p1, p3

    #@2
    add-float v6, p2, p4

    #@4
    add-float v7, p1, p3

    #@6
    add-float v8, p2, p4

    #@8
    move-object v0, p0

    #@9
    move v1, p1

    #@a
    move v2, p2

    #@b
    move v4, p2

    #@c
    move v5, p1

    #@d
    invoke-direct/range {v0 .. v8}, Landroid/filterfw/core/ShaderProgram;->setTargetRegion(FFFFFFFF)Z

    #@10
    .line 188
    return-void
.end method

.method public setTargetRegion(Landroid/filterfw/geometry/Quad;)V
    .locals 9
    .param p1, "region"    # Landroid/filterfw/geometry/Quad;

    #@0
    .prologue
    .line 178
    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    #@2
    iget v1, v0, Landroid/filterfw/geometry/Point;->x:F

    #@4
    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    #@6
    iget v2, v0, Landroid/filterfw/geometry/Point;->y:F

    #@8
    .line 179
    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    #@a
    iget v3, v0, Landroid/filterfw/geometry/Point;->x:F

    #@c
    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    #@e
    iget v4, v0, Landroid/filterfw/geometry/Point;->y:F

    #@10
    .line 180
    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    #@12
    iget v5, v0, Landroid/filterfw/geometry/Point;->x:F

    #@14
    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    #@16
    iget v6, v0, Landroid/filterfw/geometry/Point;->y:F

    #@18
    .line 181
    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    #@1a
    iget v7, v0, Landroid/filterfw/geometry/Point;->x:F

    #@1c
    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    #@1e
    iget v8, v0, Landroid/filterfw/geometry/Point;->y:F

    #@20
    move-object v0, p0

    #@21
    .line 178
    invoke-direct/range {v0 .. v8}, Landroid/filterfw/core/ShaderProgram;->setTargetRegion(FFFFFFFF)Z

    #@24
    .line 177
    return-void
.end method

.method public setVertexCount(I)V
    .locals 3
    .param p1, "count"    # I

    #@0
    .prologue
    .line 223
    invoke-direct {p0, p1}, Landroid/filterfw/core/ShaderProgram;->setShaderVertexCount(I)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 224
    new-instance v0, Ljava/lang/RuntimeException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Could not set GL vertex count to "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    const-string/jumbo v2, "!"

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 222
    :cond_0
    return-void
.end method
