.class public Landroid/filterpacks/imageproc/RotateFilter;
.super Landroid/filterfw/core/Filter;
.source "RotateFilter.java"


# instance fields
.field private mAngle:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "angle"
    .end annotation
.end field

.field private mHeight:I

.field private mOutputHeight:I

.field private mOutputWidth:I

.field private mProgram:Landroid/filterfw/core/Program;

.field private mTarget:I

.field private mTileSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "tile_size"
    .end annotation
.end field

.field private mWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 52
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    #@4
    .line 40
    const/16 v0, 0x280

    #@6
    iput v0, p0, Landroid/filterpacks/imageproc/RotateFilter;->mTileSize:I

    #@8
    .line 44
    iput v1, p0, Landroid/filterpacks/imageproc/RotateFilter;->mWidth:I

    #@a
    .line 45
    iput v1, p0, Landroid/filterpacks/imageproc/RotateFilter;->mHeight:I

    #@c
    .line 46
    iput v1, p0, Landroid/filterpacks/imageproc/RotateFilter;->mTarget:I

    #@e
    .line 51
    return-void
.end method

.method private updateParameters()V
    .locals 11

    #@0
    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    #@2
    const/high16 v9, 0x3f000000    # 0.5f

    #@4
    .line 125
    iget v7, p0, Landroid/filterpacks/imageproc/RotateFilter;->mAngle:I

    #@6
    rem-int/lit8 v7, v7, 0x5a

    #@8
    if-nez v7, :cond_3

    #@a
    .line 126
    iget v7, p0, Landroid/filterpacks/imageproc/RotateFilter;->mAngle:I

    #@c
    rem-int/lit16 v7, v7, 0xb4

    #@e
    if-nez v7, :cond_1

    #@10
    .line 127
    const/4 v2, 0x0

    #@11
    .line 128
    .local v2, "sinTheta":F
    iget v7, p0, Landroid/filterpacks/imageproc/RotateFilter;->mAngle:I

    #@13
    rem-int/lit16 v7, v7, 0x168

    #@15
    if-nez v7, :cond_0

    #@17
    const/high16 v0, 0x3f800000    # 1.0f

    #@19
    .line 140
    .local v0, "cosTheta":F
    :goto_0
    new-instance v3, Landroid/filterfw/geometry/Point;

    #@1b
    neg-float v7, v0

    #@1c
    add-float/2addr v7, v2

    #@1d
    add-float/2addr v7, v10

    #@1e
    mul-float/2addr v7, v9

    #@1f
    .line 141
    neg-float v8, v2

    #@20
    sub-float/2addr v8, v0

    #@21
    add-float/2addr v8, v10

    #@22
    mul-float/2addr v8, v9

    #@23
    .line 140
    invoke-direct {v3, v7, v8}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    #@26
    .line 142
    .local v3, "x0":Landroid/filterfw/geometry/Point;
    new-instance v4, Landroid/filterfw/geometry/Point;

    #@28
    add-float v7, v0, v2

    #@2a
    add-float/2addr v7, v10

    #@2b
    mul-float/2addr v7, v9

    #@2c
    .line 143
    sub-float v8, v2, v0

    #@2e
    add-float/2addr v8, v10

    #@2f
    mul-float/2addr v8, v9

    #@30
    .line 142
    invoke-direct {v4, v7, v8}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    #@33
    .line 144
    .local v4, "x1":Landroid/filterfw/geometry/Point;
    new-instance v5, Landroid/filterfw/geometry/Point;

    #@35
    neg-float v7, v0

    #@36
    sub-float/2addr v7, v2

    #@37
    add-float/2addr v7, v10

    #@38
    mul-float/2addr v7, v9

    #@39
    .line 145
    neg-float v8, v2

    #@3a
    add-float/2addr v8, v0

    #@3b
    add-float/2addr v8, v10

    #@3c
    mul-float/2addr v8, v9

    #@3d
    .line 144
    invoke-direct {v5, v7, v8}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    #@40
    .line 146
    .local v5, "x2":Landroid/filterfw/geometry/Point;
    new-instance v6, Landroid/filterfw/geometry/Point;

    #@42
    sub-float v7, v0, v2

    #@44
    add-float/2addr v7, v10

    #@45
    mul-float/2addr v7, v9

    #@46
    .line 147
    add-float v8, v2, v0

    #@48
    add-float/2addr v8, v10

    #@49
    mul-float/2addr v8, v9

    #@4a
    .line 146
    invoke-direct {v6, v7, v8}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    #@4d
    .line 148
    .local v6, "x3":Landroid/filterfw/geometry/Point;
    new-instance v1, Landroid/filterfw/geometry/Quad;

    #@4f
    invoke-direct {v1, v3, v4, v5, v6}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    #@52
    .line 149
    .local v1, "quad":Landroid/filterfw/geometry/Quad;
    iget-object v7, p0, Landroid/filterpacks/imageproc/RotateFilter;->mProgram:Landroid/filterfw/core/Program;

    #@54
    check-cast v7, Landroid/filterfw/core/ShaderProgram;

    #@56
    invoke-virtual {v7, v1}, Landroid/filterfw/core/ShaderProgram;->setTargetRegion(Landroid/filterfw/geometry/Quad;)V

    #@59
    .line 121
    return-void

    #@5a
    .line 128
    .end local v0    # "cosTheta":F
    .end local v1    # "quad":Landroid/filterfw/geometry/Quad;
    .end local v3    # "x0":Landroid/filterfw/geometry/Point;
    .end local v4    # "x1":Landroid/filterfw/geometry/Point;
    .end local v5    # "x2":Landroid/filterfw/geometry/Point;
    .end local v6    # "x3":Landroid/filterfw/geometry/Point;
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    #@5c
    .restart local v0    # "cosTheta":F
    goto :goto_0

    #@5d
    .line 130
    .end local v0    # "cosTheta":F
    .end local v2    # "sinTheta":F
    :cond_1
    const/4 v0, 0x0

    #@5e
    .line 131
    .restart local v0    # "cosTheta":F
    iget v7, p0, Landroid/filterpacks/imageproc/RotateFilter;->mAngle:I

    #@60
    add-int/lit8 v7, v7, 0x5a

    #@62
    rem-int/lit16 v7, v7, 0x168

    #@64
    if-nez v7, :cond_2

    #@66
    const/high16 v2, -0x40800000    # -1.0f

    #@68
    .line 133
    .restart local v2    # "sinTheta":F
    :goto_1
    iget v7, p0, Landroid/filterpacks/imageproc/RotateFilter;->mHeight:I

    #@6a
    iput v7, p0, Landroid/filterpacks/imageproc/RotateFilter;->mOutputWidth:I

    #@6c
    .line 134
    iget v7, p0, Landroid/filterpacks/imageproc/RotateFilter;->mWidth:I

    #@6e
    iput v7, p0, Landroid/filterpacks/imageproc/RotateFilter;->mOutputHeight:I

    #@70
    goto :goto_0

    #@71
    .line 131
    .end local v2    # "sinTheta":F
    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    #@73
    .restart local v2    # "sinTheta":F
    goto :goto_1

    #@74
    .line 137
    .end local v0    # "cosTheta":F
    .end local v2    # "sinTheta":F
    :cond_3
    new-instance v7, Ljava/lang/RuntimeException;

    #@76
    const-string/jumbo v8, "degree has to be multiply of 90."

    #@79
    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@7c
    throw v7
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 79
    iget-object v0, p0, Landroid/filterpacks/imageproc/RotateFilter;->mProgram:Landroid/filterfw/core/Program;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 80
    invoke-direct {p0}, Landroid/filterpacks/imageproc/RotateFilter;->updateParameters()V

    #@7
    .line 78
    :cond_0
    return-void
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "target"    # I

    #@0
    .prologue
    .line 62
    packed-switch p2, :pswitch_data_0

    #@3
    .line 71
    new-instance v1, Ljava/lang/RuntimeException;

    #@5
    new-instance v2, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v3, "Filter Sharpen does not support frames of target "

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    .line 72
    const-string/jumbo v3, "!"

    #@18
    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@23
    throw v1

    #@24
    .line 64
    :pswitch_0
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    #@27
    move-result-object v0

    #@28
    .line 65
    .local v0, "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/RotateFilter;->mTileSize:I

    #@2a
    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    #@2d
    .line 66
    const/4 v1, 0x1

    #@2e
    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setClearsOutput(Z)V

    #@31
    .line 67
    iput-object v0, p0, Landroid/filterpacks/imageproc/RotateFilter;->mProgram:Landroid/filterfw/core/Program;

    #@33
    .line 74
    iput p2, p0, Landroid/filterpacks/imageproc/RotateFilter;->mTarget:I

    #@35
    .line 61
    return-void

    #@36
    .line 62
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 7
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    const/4 v6, 0x3

    #@1
    .line 87
    const-string/jumbo v4, "image"

    #@4
    invoke-virtual {p0, v4}, Landroid/filterpacks/imageproc/RotateFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@7
    move-result-object v0

    #@8
    .line 88
    .local v0, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@b
    move-result-object v1

    #@c
    .line 91
    .local v1, "inputFormat":Landroid/filterfw/core/FrameFormat;
    iget-object v4, p0, Landroid/filterpacks/imageproc/RotateFilter;->mProgram:Landroid/filterfw/core/Program;

    #@e
    if-eqz v4, :cond_0

    #@10
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    #@13
    move-result v4

    #@14
    iget v5, p0, Landroid/filterpacks/imageproc/RotateFilter;->mTarget:I

    #@16
    if-eq v4, v5, :cond_1

    #@18
    .line 92
    :cond_0
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    #@1b
    move-result v4

    #@1c
    invoke-virtual {p0, p1, v4}, Landroid/filterpacks/imageproc/RotateFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    #@1f
    .line 95
    :cond_1
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    #@22
    move-result v4

    #@23
    iget v5, p0, Landroid/filterpacks/imageproc/RotateFilter;->mWidth:I

    #@25
    if-ne v4, v5, :cond_2

    #@27
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    #@2a
    move-result v4

    #@2b
    iget v5, p0, Landroid/filterpacks/imageproc/RotateFilter;->mHeight:I

    #@2d
    if-eq v4, v5, :cond_3

    #@2f
    .line 96
    :cond_2
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    #@32
    move-result v4

    #@33
    iput v4, p0, Landroid/filterpacks/imageproc/RotateFilter;->mWidth:I

    #@35
    .line 97
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    #@38
    move-result v4

    #@39
    iput v4, p0, Landroid/filterpacks/imageproc/RotateFilter;->mHeight:I

    #@3b
    .line 98
    iget v4, p0, Landroid/filterpacks/imageproc/RotateFilter;->mWidth:I

    #@3d
    iput v4, p0, Landroid/filterpacks/imageproc/RotateFilter;->mOutputWidth:I

    #@3f
    .line 99
    iget v4, p0, Landroid/filterpacks/imageproc/RotateFilter;->mHeight:I

    #@41
    iput v4, p0, Landroid/filterpacks/imageproc/RotateFilter;->mOutputHeight:I

    #@43
    .line 101
    invoke-direct {p0}, Landroid/filterpacks/imageproc/RotateFilter;->updateParameters()V

    #@46
    .line 105
    :cond_3
    iget v4, p0, Landroid/filterpacks/imageproc/RotateFilter;->mOutputWidth:I

    #@48
    iget v5, p0, Landroid/filterpacks/imageproc/RotateFilter;->mOutputHeight:I

    #@4a
    invoke-static {v4, v5, v6, v6}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    #@4d
    move-result-object v3

    #@4e
    .line 109
    .local v3, "outputFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@51
    move-result-object v4

    #@52
    invoke-virtual {v4, v3}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@55
    move-result-object v2

    #@56
    .line 112
    .local v2, "output":Landroid/filterfw/core/Frame;
    iget-object v4, p0, Landroid/filterpacks/imageproc/RotateFilter;->mProgram:Landroid/filterfw/core/Program;

    #@58
    invoke-virtual {v4, v0, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@5b
    .line 115
    const-string/jumbo v4, "image"

    #@5e
    invoke-virtual {p0, v4, v2}, Landroid/filterpacks/imageproc/RotateFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@61
    .line 118
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@64
    .line 85
    return-void
.end method

.method public setupPorts()V
    .locals 2

    #@0
    .prologue
    .line 57
    const-string/jumbo v0, "image"

    #@3
    const/4 v1, 0x3

    #@4
    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/RotateFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@b
    .line 58
    const-string/jumbo v0, "image"

    #@e
    const-string/jumbo v1, "image"

    #@11
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/RotateFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    #@14
    .line 56
    return-void
.end method
