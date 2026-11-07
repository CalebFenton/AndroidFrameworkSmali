.class public Landroid/filterfw/core/ShaderProgram;
.super Landroid/filterfw/core/Program;
.source "ShaderProgram.java"


# instance fields
.field private greylist-max-o mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

.field private greylist-max-o mMaxTileSize:I

.field private greylist-max-o mTimer:Landroid/filterfw/core/StopWatchMap;

.field private greylist-max-o shaderProgramId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 251
    const-string v0, "filterfw"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Landroid/filterfw/core/Program;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterfw/core/ShaderProgram;->mMaxTileSize:I

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterfw/core/ShaderProgram;->mTimer:Landroid/filterfw/core/StopWatchMap;

    .line 45
    return-void
.end method

.method public constructor greylist <init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "fragmentShader"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0}, Landroid/filterfw/core/Program;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterfw/core/ShaderProgram;->mMaxTileSize:I

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterfw/core/ShaderProgram;->mTimer:Landroid/filterfw/core/StopWatchMap;

    .line 52
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->getGLEnvironment(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/GLEnvironment;

    move-result-object v1

    iput-object v1, p0, Landroid/filterfw/core/ShaderProgram;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    .line 53
    iget-object v1, p0, Landroid/filterfw/core/ShaderProgram;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    invoke-direct {p0, v1, v0, p2}, Landroid/filterfw/core/ShaderProgram;->allocate(Landroid/filterfw/core/GLEnvironment;Ljava/lang/String;Ljava/lang/String;)Z

    .line 54
    invoke-direct {p0}, Landroid/filterfw/core/ShaderProgram;->compileAndLink()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 57
    invoke-direct {p0}, Landroid/filterfw/core/ShaderProgram;->setTimer()V

    .line 58
    return-void

    .line 55
    :cond_1e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not compile and link shader!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor greylist-max-o <init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "vertexShader"    # Ljava/lang/String;
    .param p3, "fragmentShader"    # Ljava/lang/String;

    .line 60
    invoke-direct {p0}, Landroid/filterfw/core/Program;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterfw/core/ShaderProgram;->mMaxTileSize:I

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterfw/core/ShaderProgram;->mTimer:Landroid/filterfw/core/StopWatchMap;

    .line 61
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->getGLEnvironment(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/GLEnvironment;

    move-result-object v0

    iput-object v0, p0, Landroid/filterfw/core/ShaderProgram;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    .line 62
    iget-object v0, p0, Landroid/filterfw/core/ShaderProgram;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    invoke-direct {p0, v0, p2, p3}, Landroid/filterfw/core/ShaderProgram;->allocate(Landroid/filterfw/core/GLEnvironment;Ljava/lang/String;Ljava/lang/String;)Z

    .line 63
    invoke-direct {p0}, Landroid/filterfw/core/ShaderProgram;->compileAndLink()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 66
    invoke-direct {p0}, Landroid/filterfw/core/ShaderProgram;->setTimer()V

    .line 67
    return-void

    .line 64
    :cond_1e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not compile and link shader!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor greylist-max-o <init>(Landroid/filterfw/core/NativeAllocatorTag;)V
    .registers 3
    .param p1, "tag"    # Landroid/filterfw/core/NativeAllocatorTag;

    .line 47
    invoke-direct {p0}, Landroid/filterfw/core/Program;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterfw/core/ShaderProgram;->mMaxTileSize:I

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterfw/core/ShaderProgram;->mTimer:Landroid/filterfw/core/StopWatchMap;

    .line 48
    return-void
.end method

.method private native greylist-max-o allocate(Landroid/filterfw/core/GLEnvironment;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native greylist-max-o beginShaderDrawing()Z
.end method

.method private native greylist-max-o compileAndLink()Z
.end method

.method public static greylist createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;
    .registers 2
    .param p0, "context"    # Landroid/filterfw/core/FilterContext;

    .line 71
    invoke-static {p0}, Landroid/filterfw/core/ShaderProgram;->getGLEnvironment(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/GLEnvironment;

    move-result-object v0

    invoke-static {v0}, Landroid/filterfw/core/ShaderProgram;->nativeCreateIdentity(Landroid/filterfw/core/GLEnvironment;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v0

    .line 72
    .local v0, "program":Landroid/filterfw/core/ShaderProgram;
    invoke-direct {v0}, Landroid/filterfw/core/ShaderProgram;->setTimer()V

    .line 73
    return-object v0
.end method

.method private native greylist-max-o deallocate()Z
.end method

.method private static greylist-max-o getGLEnvironment(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/GLEnvironment;
    .registers 4
    .param p0, "context"    # Landroid/filterfw/core/FilterContext;

    .line 242
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 243
    .local v0, "result":Landroid/filterfw/core/GLEnvironment;
    :goto_8
    if-eqz v0, :cond_b

    .line 247
    return-object v0

    .line 244
    :cond_b
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Attempting to create ShaderProgram with no GL environment in place!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private native greylist-max-o getUniformValue(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method private static native greylist-max-o nativeCreateIdentity(Landroid/filterfw/core/GLEnvironment;)Landroid/filterfw/core/ShaderProgram;
.end method

.method private native greylist-max-o setShaderAttributeValues(Ljava/lang/String;[FI)Z
.end method

.method private native greylist-max-o setShaderAttributeVertexFrame(Ljava/lang/String;Landroid/filterfw/core/VertexFrame;IIIIZ)Z
.end method

.method private native greylist-max-o setShaderBlendEnabled(Z)Z
.end method

.method private native greylist-max-o setShaderBlendFunc(II)Z
.end method

.method private native greylist-max-o setShaderClearColor(FFF)Z
.end method

.method private native greylist-max-o setShaderClearsOutput(Z)Z
.end method

.method private native greylist-max-o setShaderDrawMode(I)Z
.end method

.method private native greylist-max-o setShaderTileCounts(II)Z
.end method

.method private native greylist-max-o setShaderVertexCount(I)Z
.end method

.method private native greylist-max-o setTargetRegion(FFFFFFFF)Z
.end method

.method private greylist-max-o setTimer()V
    .registers 2

    .line 40
    new-instance v0, Landroid/filterfw/core/StopWatchMap;

    invoke-direct {v0}, Landroid/filterfw/core/StopWatchMap;-><init>()V

    iput-object v0, p0, Landroid/filterfw/core/ShaderProgram;->mTimer:Landroid/filterfw/core/StopWatchMap;

    .line 41
    return-void
.end method

.method private native greylist-max-o setUniformValue(Ljava/lang/String;Ljava/lang/Object;)Z
.end method

.method private native greylist-max-o shaderProcess([Landroid/filterfw/core/GLFrame;Landroid/filterfw/core/GLFrame;)Z
.end method


# virtual methods
.method public greylist-max-o beginDrawing()V
    .registers 3

    .line 236
    invoke-direct {p0}, Landroid/filterfw/core/ShaderProgram;->beginShaderDrawing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 239
    return-void

    .line 237
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not prepare shader-program for drawing!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Landroid/filterfw/core/ShaderProgram;->deallocate()Z

    .line 79
    return-void
.end method

.method public greylist-max-o getGLEnvironment()Landroid/filterfw/core/GLEnvironment;
    .registers 2

    .line 82
    iget-object v0, p0, Landroid/filterfw/core/ShaderProgram;->mGLEnvironment:Landroid/filterfw/core/GLEnvironment;

    return-object v0
.end method

.method public greylist-max-o getHostValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "variableName"    # Ljava/lang/String;

    .line 141
    invoke-direct {p0, p1}, Landroid/filterfw/core/ShaderProgram;->getUniformValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public greylist process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V
    .registers 8
    .param p1, "inputs"    # [Landroid/filterfw/core/Frame;
    .param p2, "output"    # Landroid/filterfw/core/Frame;

    .line 88
    iget-object v0, p0, Landroid/filterfw/core/ShaderProgram;->mTimer:Landroid/filterfw/core/StopWatchMap;

    iget-boolean v0, v0, Landroid/filterfw/core/StopWatchMap;->LOG_MFF_RUNNING_TIMES:Z

    if-eqz v0, :cond_16

    .line 89
    iget-object v0, p0, Landroid/filterfw/core/ShaderProgram;->mTimer:Landroid/filterfw/core/StopWatchMap;

    const-string/jumbo v1, "glFinish"

    invoke-virtual {v0, v1}, Landroid/filterfw/core/StopWatchMap;->start(Ljava/lang/String;)V

    .line 90
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 91
    iget-object v0, p0, Landroid/filterfw/core/ShaderProgram;->mTimer:Landroid/filterfw/core/StopWatchMap;

    invoke-virtual {v0, v1}, Landroid/filterfw/core/StopWatchMap;->stop(Ljava/lang/String;)V

    .line 96
    :cond_16
    array-length v0, p1

    new-array v0, v0, [Landroid/filterfw/core/GLFrame;

    .line 97
    .local v0, "glInputs":[Landroid/filterfw/core/GLFrame;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1a
    array-length v2, p1

    if-ge v1, v2, :cond_4b

    .line 98
    aget-object v2, p1, v1

    instance-of v2, v2, Landroid/filterfw/core/GLFrame;

    if-eqz v2, :cond_2c

    .line 99
    aget-object v2, p1, v1

    check-cast v2, Landroid/filterfw/core/GLFrame;

    aput-object v2, v0, v1

    .line 97
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 101
    :cond_2c
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ShaderProgram got non-GL frame as input "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 106
    .end local v1    # "i":I
    :cond_4b
    const/4 v1, 0x0

    .line 107
    .local v1, "glOutput":Landroid/filterfw/core/GLFrame;
    instance-of v2, p2, Landroid/filterfw/core/GLFrame;

    if-eqz v2, :cond_92

    .line 108
    move-object v1, p2

    check-cast v1, Landroid/filterfw/core/GLFrame;

    .line 114
    iget v2, p0, Landroid/filterfw/core/ShaderProgram;->mMaxTileSize:I

    if-lez v2, :cond_7a

    .line 115
    invoke-virtual {p2}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v2

    iget v3, p0, Landroid/filterfw/core/ShaderProgram;->mMaxTileSize:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Landroid/filterfw/core/ShaderProgram;->mMaxTileSize:I

    div-int/2addr v2, v3

    .line 116
    .local v2, "xTiles":I
    invoke-virtual {p2}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v3

    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/filterfw/core/ShaderProgram;->mMaxTileSize:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Landroid/filterfw/core/ShaderProgram;->mMaxTileSize:I

    div-int/2addr v3, v4

    .line 117
    .local v3, "yTiles":I
    invoke-direct {p0, v2, v3}, Landroid/filterfw/core/ShaderProgram;->setShaderTileCounts(II)Z

    .line 121
    .end local v2    # "xTiles":I
    .end local v3    # "yTiles":I
    :cond_7a
    invoke-direct {p0, v0, v1}, Landroid/filterfw/core/ShaderProgram;->shaderProcess([Landroid/filterfw/core/GLFrame;Landroid/filterfw/core/GLFrame;)Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 125
    iget-object v2, p0, Landroid/filterfw/core/ShaderProgram;->mTimer:Landroid/filterfw/core/StopWatchMap;

    iget-boolean v2, v2, Landroid/filterfw/core/StopWatchMap;->LOG_MFF_RUNNING_TIMES:Z

    if-eqz v2, :cond_89

    .line 126
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 128
    :cond_89
    return-void

    .line 122
    :cond_8a
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error executing ShaderProgram!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 110
    :cond_92
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "ShaderProgram got non-GL output frame!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public greylist-max-o setAttributeValues(Ljava/lang/String;Landroid/filterfw/core/VertexFrame;IIIIZ)V
    .registers 11
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "vertexData"    # Landroid/filterfw/core/VertexFrame;
    .param p3, "type"    # I
    .param p4, "componentCount"    # I
    .param p5, "strideInBytes"    # I
    .param p6, "offsetInBytes"    # I
    .param p7, "normalize"    # Z

    .line 158
    invoke-direct/range {p0 .. p7}, Landroid/filterfw/core/ShaderProgram;->setShaderAttributeVertexFrame(Ljava/lang/String;Landroid/filterfw/core/VertexFrame;IIIIZ)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 168
    return-void

    .line 165
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error setting attribute value for attribute \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setAttributeValues(Ljava/lang/String;[FI)V
    .registers 7
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "data"    # [F
    .param p3, "componentCount"    # I

    .line 145
    invoke-direct {p0, p1, p2, p3}, Landroid/filterfw/core/ShaderProgram;->setShaderAttributeValues(Ljava/lang/String;[FI)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 149
    return-void

    .line 146
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error setting attribute value for attribute \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setBlendEnabled(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .line 207
    invoke-direct {p0, p1}, Landroid/filterfw/core/ShaderProgram;->setShaderBlendEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 210
    return-void

    .line 208
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not set Blending "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setBlendFunc(II)V
    .registers 6
    .param p1, "sfactor"    # I
    .param p2, "dfactor"    # I

    .line 213
    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/ShaderProgram;->setShaderBlendFunc(II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 216
    return-void

    .line 214
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not set BlendFunc "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setClearColor(FFF)V
    .registers 7
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F

    .line 201
    invoke-direct {p0, p1, p2, p3}, Landroid/filterfw/core/ShaderProgram;->setShaderClearColor(FFF)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 204
    return-void

    .line 202
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not set clear color to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setClearsOutput(Z)V
    .registers 5
    .param p1, "clears"    # Z

    .line 195
    invoke-direct {p0, p1}, Landroid/filterfw/core/ShaderProgram;->setShaderClearsOutput(Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 198
    return-void

    .line 196
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not set clears-output flag to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setDrawMode(I)V
    .registers 5
    .param p1, "drawMode"    # I

    .line 219
    invoke-direct {p0, p1}, Landroid/filterfw/core/ShaderProgram;->setShaderDrawMode(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 222
    return-void

    .line 220
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not set GL draw-mode to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setHostValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .param p1, "variableName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 133
    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/ShaderProgram;->setUniformValue(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 137
    return-void

    .line 134
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error setting uniform value for variable \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setMaximumTileSize(I)V
    .registers 2
    .param p1, "size"    # I

    .line 232
    iput p1, p0, Landroid/filterfw/core/ShaderProgram;->mMaxTileSize:I

    .line 233
    return-void
.end method

.method public greylist setSourceRect(FFFF)V
    .registers 14
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .line 187
    add-float v3, p1, p3

    add-float v6, p2, p4

    add-float v7, p1, p3

    add-float v8, p2, p4

    move v4, p2

    move v5, p1

    move-object v0, p0

    move v1, p1

    move v2, p2

    .end local p1    # "x":F
    .end local p2    # "y":F
    .local v1, "x":F
    .local v2, "y":F
    invoke-virtual/range {v0 .. v8}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(FFFFFFFF)Z

    .line 188
    return-void
.end method

.method public greylist setSourceRegion(Landroid/filterfw/geometry/Quad;)V
    .registers 12
    .param p1, "region"    # Landroid/filterfw/geometry/Quad;

    .line 172
    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    iget v2, v0, Landroid/filterfw/geometry/Point;->x:F

    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    iget v3, v0, Landroid/filterfw/geometry/Point;->y:F

    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    iget v4, v0, Landroid/filterfw/geometry/Point;->x:F

    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    iget v5, v0, Landroid/filterfw/geometry/Point;->y:F

    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    iget v6, v0, Landroid/filterfw/geometry/Point;->x:F

    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    iget v7, v0, Landroid/filterfw/geometry/Point;->y:F

    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    iget v8, v0, Landroid/filterfw/geometry/Point;->x:F

    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    iget v9, v0, Landroid/filterfw/geometry/Point;->y:F

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(FFFFFFFF)Z

    .line 176
    return-void
.end method

.method public native greylist-max-o setSourceRegion(FFFFFFFF)Z
.end method

.method public greylist-max-o setTargetRect(FFFF)V
    .registers 14
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .line 191
    add-float v3, p1, p3

    add-float v6, p2, p4

    add-float v7, p1, p3

    add-float v8, p2, p4

    move v4, p2

    move v5, p1

    move-object v0, p0

    move v1, p1

    move v2, p2

    .end local p1    # "x":F
    .end local p2    # "y":F
    .local v1, "x":F
    .local v2, "y":F
    invoke-direct/range {v0 .. v8}, Landroid/filterfw/core/ShaderProgram;->setTargetRegion(FFFFFFFF)Z

    .line 192
    return-void
.end method

.method public greylist-max-o setTargetRegion(Landroid/filterfw/geometry/Quad;)V
    .registers 12
    .param p1, "region"    # Landroid/filterfw/geometry/Quad;

    .line 179
    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    iget v2, v0, Landroid/filterfw/geometry/Point;->x:F

    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    iget v3, v0, Landroid/filterfw/geometry/Point;->y:F

    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    iget v4, v0, Landroid/filterfw/geometry/Point;->x:F

    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    iget v5, v0, Landroid/filterfw/geometry/Point;->y:F

    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    iget v6, v0, Landroid/filterfw/geometry/Point;->x:F

    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    iget v7, v0, Landroid/filterfw/geometry/Point;->y:F

    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    iget v8, v0, Landroid/filterfw/geometry/Point;->x:F

    iget-object v0, p1, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    iget v9, v0, Landroid/filterfw/geometry/Point;->y:F

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/filterfw/core/ShaderProgram;->setTargetRegion(FFFFFFFF)Z

    .line 183
    return-void
.end method

.method public greylist-max-o setVertexCount(I)V
    .registers 5
    .param p1, "count"    # I

    .line 225
    invoke-direct {p0, p1}, Landroid/filterfw/core/ShaderProgram;->setShaderVertexCount(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 228
    return-void

    .line 226
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not set GL vertex count to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
