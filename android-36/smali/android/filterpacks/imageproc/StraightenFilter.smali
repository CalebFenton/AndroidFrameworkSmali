.class public Landroid/filterpacks/imageproc/StraightenFilter;
.super Landroid/filterfw/core/Filter;
.source "StraightenFilter.java"


# static fields
.field private static final blacklist DEGREE_TO_RADIAN:F = 0.017453292f


# instance fields
.field private blacklist mAngle:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "angle"
    .end annotation
.end field

.field private blacklist mHeight:I

.field private blacklist mMaxAngle:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "maxAngle"
    .end annotation
.end field

.field private blacklist mProgram:Landroid/filterfw/core/Program;

.field private blacklist mTarget:I

.field private blacklist mTileSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "tile_size"
    .end annotation
.end field

.field private blacklist mWidth:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 54
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mAngle:F

    .line 39
    const/high16 v0, 0x42340000    # 45.0f

    iput v0, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mMaxAngle:F

    .line 42
    const/16 v0, 0x280

    iput v0, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mTileSize:I

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    .line 48
    iput v0, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    .line 49
    iput v0, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mTarget:I

    .line 55
    return-void
.end method

.method private blacklist updateParameters()V
    .registers 14

    .line 116
    iget v0, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mAngle:F

    const v1, 0x3c8efa35

    mul-float/2addr v0, v1

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 117
    .local v0, "cosTheta":F
    iget v2, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mAngle:F

    mul-float/2addr v2, v1

    float-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 119
    .local v1, "sinTheta":F
    iget v2, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mMaxAngle:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-lez v2, :cond_111

    .line 121
    iget v2, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mMaxAngle:F

    const/high16 v3, 0x42b40000    # 90.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_25

    goto :goto_27

    :cond_25
    iget v3, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mMaxAngle:F

    :goto_27
    iput v3, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mMaxAngle:F

    .line 123
    new-instance v2, Landroid/filterfw/geometry/Point;

    neg-float v3, v0

    iget v4, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    neg-float v4, v1

    iget v5, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    sub-float/2addr v4, v5

    invoke-direct {v2, v3, v4}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 126
    .local v2, "p0":Landroid/filterfw/geometry/Point;
    new-instance v3, Landroid/filterfw/geometry/Point;

    iget v4, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    iget v5, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    iget v5, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v5, v5

    mul-float/2addr v5, v1

    iget v6, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v6, v6

    mul-float/2addr v6, v0

    sub-float/2addr v5, v6

    invoke-direct {v3, v4, v5}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 129
    .local v3, "p1":Landroid/filterfw/geometry/Point;
    new-instance v4, Landroid/filterfw/geometry/Point;

    neg-float v5, v0

    iget v6, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    iget v6, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v6, v6

    mul-float/2addr v6, v1

    sub-float/2addr v5, v6

    neg-float v6, v1

    iget v7, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    iget v7, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v7, v7

    mul-float/2addr v7, v0

    add-float/2addr v6, v7

    invoke-direct {v4, v5, v6}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 132
    .local v4, "p2":Landroid/filterfw/geometry/Point;
    new-instance v5, Landroid/filterfw/geometry/Point;

    iget v6, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v6, v6

    mul-float/2addr v6, v0

    iget v7, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v7, v7

    mul-float/2addr v7, v1

    sub-float/2addr v6, v7

    iget v7, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v7, v7

    mul-float/2addr v7, v1

    iget v8, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v8, v8

    mul-float/2addr v8, v0

    add-float/2addr v7, v8

    invoke-direct {v5, v6, v7}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 135
    .local v5, "p3":Landroid/filterfw/geometry/Point;
    iget v6, v2, Landroid/filterfw/geometry/Point;->x:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, v3, Landroid/filterfw/geometry/Point;->x:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 136
    .local v6, "maxWidth":F
    iget v7, v2, Landroid/filterfw/geometry/Point;->y:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, v3, Landroid/filterfw/geometry/Point;->y:F

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 138
    .local v7, "maxHeight":F
    iget v8, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v8, v8

    div-float/2addr v8, v6

    iget v9, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v9, v9

    div-float/2addr v9, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v8, v9

    .line 141
    .local v8, "scale":F
    iget v10, v2, Landroid/filterfw/geometry/Point;->x:F

    mul-float/2addr v10, v8

    iget v11, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    add-float/2addr v10, v9

    iget v11, v2, Landroid/filterfw/geometry/Point;->y:F

    mul-float/2addr v11, v8

    iget v12, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    add-float/2addr v11, v9

    invoke-virtual {v2, v10, v11}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 142
    iget v10, v3, Landroid/filterfw/geometry/Point;->x:F

    mul-float/2addr v10, v8

    iget v11, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    add-float/2addr v10, v9

    iget v11, v3, Landroid/filterfw/geometry/Point;->y:F

    mul-float/2addr v11, v8

    iget v12, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    add-float/2addr v11, v9

    invoke-virtual {v3, v10, v11}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 143
    iget v10, v4, Landroid/filterfw/geometry/Point;->x:F

    mul-float/2addr v10, v8

    iget v11, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    add-float/2addr v10, v9

    iget v11, v4, Landroid/filterfw/geometry/Point;->y:F

    mul-float/2addr v11, v8

    iget v12, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    add-float/2addr v11, v9

    invoke-virtual {v4, v10, v11}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 144
    iget v10, v5, Landroid/filterfw/geometry/Point;->x:F

    mul-float/2addr v10, v8

    iget v11, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    add-float/2addr v10, v9

    iget v11, v5, Landroid/filterfw/geometry/Point;->y:F

    mul-float/2addr v11, v8

    iget v12, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    add-float/2addr v11, v9

    invoke-virtual {v5, v10, v11}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 146
    new-instance v9, Landroid/filterfw/geometry/Quad;

    invoke-direct {v9, v2, v3, v4, v5}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .line 147
    .local v9, "quad":Landroid/filterfw/geometry/Quad;
    iget-object v10, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mProgram:Landroid/filterfw/core/Program;

    check-cast v10, Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v10, v9}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(Landroid/filterfw/geometry/Quad;)V

    .line 148
    return-void

    .line 120
    .end local v2    # "p0":Landroid/filterfw/geometry/Point;
    .end local v3    # "p1":Landroid/filterfw/geometry/Point;
    .end local v4    # "p2":Landroid/filterfw/geometry/Point;
    .end local v5    # "p3":Landroid/filterfw/geometry/Point;
    .end local v6    # "maxWidth":F
    .end local v7    # "maxHeight":F
    .end local v8    # "scale":F
    .end local v9    # "quad":Landroid/filterfw/geometry/Quad;
    :cond_111
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Max angle is out of range (0-180)."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public blacklist fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .line 80
    iget-object v0, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v0, :cond_7

    .line 81
    invoke-direct {p0}, Landroid/filterpacks/imageproc/StraightenFilter;->updateParameters()V

    .line 83
    :cond_7
    return-void
.end method

.method public blacklist initProgram(Landroid/filterfw/core/FilterContext;I)V
    .registers 6
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "target"    # I

    .line 64
    packed-switch p2, :pswitch_data_32

    .line 72
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Filter Sharpen does not support frames of target "

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

    .line 66
    :pswitch_22
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v0

    .line 67
    .local v0, "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 68
    iput-object v0, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 69
    nop

    .line 75
    .end local v0    # "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iput p2, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mTarget:I

    .line 76
    return-void

    nop

    :pswitch_data_32
    .packed-switch 0x3
        :pswitch_22
    .end packed-switch
.end method

.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .registers 7
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 88
    const-string/jumbo v0, "image"

    invoke-virtual {p0, v0}, Landroid/filterpacks/imageproc/StraightenFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 89
    .local v1, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    .line 92
    .local v2, "inputFormat":Landroid/filterfw/core/FrameFormat;
    iget-object v3, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v3, :cond_17

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mTarget:I

    if-eq v3, v4, :cond_1e

    .line 93
    :cond_17
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Landroid/filterpacks/imageproc/StraightenFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 97
    :cond_1e
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    if-ne v3, v4, :cond_2e

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    if-eq v3, v4, :cond_3d

    .line 98
    :cond_2e
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    iput v3, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    .line 99
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v3

    iput v3, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    .line 100
    invoke-direct {p0}, Landroid/filterpacks/imageproc/StraightenFilter;->updateParameters()V

    .line 103
    :cond_3d
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v3

    .line 106
    .local v3, "output":Landroid/filterfw/core/Frame;
    iget-object v4, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v4, v1, v3}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 109
    invoke-virtual {p0, v0, v3}, Landroid/filterpacks/imageproc/StraightenFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 112
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 113
    return-void
.end method

.method public blacklist setupPorts()V
    .registers 3

    .line 59
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string/jumbo v1, "image"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/imageproc/StraightenFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 60
    invoke-virtual {p0, v1, v1}, Landroid/filterpacks/imageproc/StraightenFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method
