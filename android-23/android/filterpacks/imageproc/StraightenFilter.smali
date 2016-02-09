.class public Landroid/filterpacks/imageproc/StraightenFilter;
.super Landroid/filterfw/core/Filter;
.source "StraightenFilter.java"


# static fields
.field private static final DEGREE_TO_RADIAN:F = 0.017453292f


# instance fields
.field private mAngle:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "angle"
    .end annotation
.end field

.field private mHeight:I

.field private mMaxAngle:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "maxAngle"
    .end annotation
.end field

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
    .line 54
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    #@4
    .line 37
    const/4 v0, 0x0

    #@5
    iput v0, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mAngle:F

    #@7
    .line 40
    const/high16 v0, 0x42340000    # 45.0f

    #@9
    iput v0, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mMaxAngle:F

    #@b
    .line 43
    const/16 v0, 0x280

    #@d
    iput v0, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mTileSize:I

    #@f
    .line 47
    iput v1, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    #@11
    .line 48
    iput v1, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    #@13
    .line 49
    iput v1, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mTarget:I

    #@15
    .line 53
    return-void
.end method

.method private updateParameters()V
    .locals 13

    #@0
    .prologue
    .line 116
    iget v10, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mAngle:F

    #@2
    const v11, 0x3c8efa35

    #@5
    mul-float/2addr v10, v11

    #@6
    float-to-double v10, v10

    #@7
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    #@a
    move-result-wide v10

    #@b
    double-to-float v0, v10

    #@c
    .line 117
    .local v0, "cosTheta":F
    iget v10, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mAngle:F

    #@e
    const v11, 0x3c8efa35

    #@11
    mul-float/2addr v10, v11

    #@12
    float-to-double v10, v10

    #@13
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    #@16
    move-result-wide v10

    #@17
    double-to-float v9, v10

    #@18
    .line 119
    .local v9, "sinTheta":F
    iget v10, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mMaxAngle:F

    #@1a
    const/4 v11, 0x0

    #@1b
    cmpg-float v10, v10, v11

    #@1d
    if-gtz v10, :cond_0

    #@1f
    .line 120
    new-instance v10, Ljava/lang/RuntimeException;

    #@21
    const-string/jumbo v11, "Max angle is out of range (0-180)."

    #@24
    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@27
    throw v10

    #@28
    .line 121
    :cond_0
    iget v10, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mMaxAngle:F

    #@2a
    const/high16 v11, 0x42b40000    # 90.0f

    #@2c
    cmpl-float v10, v10, v11

    #@2e
    if-lez v10, :cond_1

    #@30
    const/high16 v10, 0x42b40000    # 90.0f

    #@32
    :goto_0
    iput v10, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mMaxAngle:F

    #@34
    .line 123
    new-instance v3, Landroid/filterfw/geometry/Point;

    #@36
    neg-float v10, v0

    #@37
    iget v11, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    #@39
    int-to-float v11, v11

    #@3a
    mul-float/2addr v10, v11

    #@3b
    iget v11, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    #@3d
    int-to-float v11, v11

    #@3e
    mul-float/2addr v11, v9

    #@3f
    add-float/2addr v10, v11

    #@40
    .line 124
    neg-float v11, v9

    #@41
    iget v12, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    #@43
    int-to-float v12, v12

    #@44
    mul-float/2addr v11, v12

    #@45
    iget v12, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    #@47
    int-to-float v12, v12

    #@48
    mul-float/2addr v12, v0

    #@49
    sub-float/2addr v11, v12

    #@4a
    .line 123
    invoke-direct {v3, v10, v11}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    #@4d
    .line 126
    .local v3, "p0":Landroid/filterfw/geometry/Point;
    new-instance v4, Landroid/filterfw/geometry/Point;

    #@4f
    iget v10, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    #@51
    int-to-float v10, v10

    #@52
    mul-float/2addr v10, v0

    #@53
    iget v11, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    #@55
    int-to-float v11, v11

    #@56
    mul-float/2addr v11, v9

    #@57
    add-float/2addr v10, v11

    #@58
    .line 127
    iget v11, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    #@5a
    int-to-float v11, v11

    #@5b
    mul-float/2addr v11, v9

    #@5c
    iget v12, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    #@5e
    int-to-float v12, v12

    #@5f
    mul-float/2addr v12, v0

    #@60
    sub-float/2addr v11, v12

    #@61
    .line 126
    invoke-direct {v4, v10, v11}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    #@64
    .line 129
    .local v4, "p1":Landroid/filterfw/geometry/Point;
    new-instance v5, Landroid/filterfw/geometry/Point;

    #@66
    neg-float v10, v0

    #@67
    iget v11, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    #@69
    int-to-float v11, v11

    #@6a
    mul-float/2addr v10, v11

    #@6b
    iget v11, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    #@6d
    int-to-float v11, v11

    #@6e
    mul-float/2addr v11, v9

    #@6f
    sub-float/2addr v10, v11

    #@70
    .line 130
    neg-float v11, v9

    #@71
    iget v12, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    #@73
    int-to-float v12, v12

    #@74
    mul-float/2addr v11, v12

    #@75
    iget v12, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    #@77
    int-to-float v12, v12

    #@78
    mul-float/2addr v12, v0

    #@79
    add-float/2addr v11, v12

    #@7a
    .line 129
    invoke-direct {v5, v10, v11}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    #@7d
    .line 132
    .local v5, "p2":Landroid/filterfw/geometry/Point;
    new-instance v6, Landroid/filterfw/geometry/Point;

    #@7f
    iget v10, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    #@81
    int-to-float v10, v10

    #@82
    mul-float/2addr v10, v0

    #@83
    iget v11, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    #@85
    int-to-float v11, v11

    #@86
    mul-float/2addr v11, v9

    #@87
    sub-float/2addr v10, v11

    #@88
    .line 133
    iget v11, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    #@8a
    int-to-float v11, v11

    #@8b
    mul-float/2addr v11, v9

    #@8c
    iget v12, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    #@8e
    int-to-float v12, v12

    #@8f
    mul-float/2addr v12, v0

    #@90
    add-float/2addr v11, v12

    #@91
    .line 132
    invoke-direct {v6, v10, v11}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    #@94
    .line 135
    .local v6, "p3":Landroid/filterfw/geometry/Point;
    iget v10, v3, Landroid/filterfw/geometry/Point;->x:F

    #@96
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    #@99
    move-result v10

    #@9a
    iget v11, v4, Landroid/filterfw/geometry/Point;->x:F

    #@9c
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    #@9f
    move-result v11

    #@a0
    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    #@a3
    move-result v2

    #@a4
    .line 136
    .local v2, "maxWidth":F
    iget v10, v3, Landroid/filterfw/geometry/Point;->y:F

    #@a6
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    #@a9
    move-result v10

    #@aa
    iget v11, v4, Landroid/filterfw/geometry/Point;->y:F

    #@ac
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    #@af
    move-result v11

    #@b0
    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    #@b3
    move-result v1

    #@b4
    .line 138
    .local v1, "maxHeight":F
    iget v10, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    #@b6
    int-to-float v10, v10

    #@b7
    div-float/2addr v10, v2

    #@b8
    .line 139
    iget v11, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    #@ba
    int-to-float v11, v11

    #@bb
    div-float/2addr v11, v1

    #@bc
    .line 138
    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    #@bf
    move-result v10

    #@c0
    const/high16 v11, 0x3f000000    # 0.5f

    #@c2
    mul-float v8, v11, v10

    #@c4
    .line 141
    .local v8, "scale":F
    iget v10, v3, Landroid/filterfw/geometry/Point;->x:F

    #@c6
    mul-float/2addr v10, v8

    #@c7
    iget v11, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    #@c9
    int-to-float v11, v11

    #@ca
    div-float/2addr v10, v11

    #@cb
    const/high16 v11, 0x3f000000    # 0.5f

    #@cd
    add-float/2addr v10, v11

    #@ce
    iget v11, v3, Landroid/filterfw/geometry/Point;->y:F

    #@d0
    mul-float/2addr v11, v8

    #@d1
    iget v12, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    #@d3
    int-to-float v12, v12

    #@d4
    div-float/2addr v11, v12

    #@d5
    const/high16 v12, 0x3f000000    # 0.5f

    #@d7
    add-float/2addr v11, v12

    #@d8
    invoke-virtual {v3, v10, v11}, Landroid/filterfw/geometry/Point;->set(FF)V

    #@db
    .line 142
    iget v10, v4, Landroid/filterfw/geometry/Point;->x:F

    #@dd
    mul-float/2addr v10, v8

    #@de
    iget v11, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    #@e0
    int-to-float v11, v11

    #@e1
    div-float/2addr v10, v11

    #@e2
    const/high16 v11, 0x3f000000    # 0.5f

    #@e4
    add-float/2addr v10, v11

    #@e5
    iget v11, v4, Landroid/filterfw/geometry/Point;->y:F

    #@e7
    mul-float/2addr v11, v8

    #@e8
    iget v12, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    #@ea
    int-to-float v12, v12

    #@eb
    div-float/2addr v11, v12

    #@ec
    const/high16 v12, 0x3f000000    # 0.5f

    #@ee
    add-float/2addr v11, v12

    #@ef
    invoke-virtual {v4, v10, v11}, Landroid/filterfw/geometry/Point;->set(FF)V

    #@f2
    .line 143
    iget v10, v5, Landroid/filterfw/geometry/Point;->x:F

    #@f4
    mul-float/2addr v10, v8

    #@f5
    iget v11, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    #@f7
    int-to-float v11, v11

    #@f8
    div-float/2addr v10, v11

    #@f9
    const/high16 v11, 0x3f000000    # 0.5f

    #@fb
    add-float/2addr v10, v11

    #@fc
    iget v11, v5, Landroid/filterfw/geometry/Point;->y:F

    #@fe
    mul-float/2addr v11, v8

    #@ff
    iget v12, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    #@101
    int-to-float v12, v12

    #@102
    div-float/2addr v11, v12

    #@103
    const/high16 v12, 0x3f000000    # 0.5f

    #@105
    add-float/2addr v11, v12

    #@106
    invoke-virtual {v5, v10, v11}, Landroid/filterfw/geometry/Point;->set(FF)V

    #@109
    .line 144
    iget v10, v6, Landroid/filterfw/geometry/Point;->x:F

    #@10b
    mul-float/2addr v10, v8

    #@10c
    iget v11, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    #@10e
    int-to-float v11, v11

    #@10f
    div-float/2addr v10, v11

    #@110
    const/high16 v11, 0x3f000000    # 0.5f

    #@112
    add-float/2addr v10, v11

    #@113
    iget v11, v6, Landroid/filterfw/geometry/Point;->y:F

    #@115
    mul-float/2addr v11, v8

    #@116
    iget v12, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    #@118
    int-to-float v12, v12

    #@119
    div-float/2addr v11, v12

    #@11a
    const/high16 v12, 0x3f000000    # 0.5f

    #@11c
    add-float/2addr v11, v12

    #@11d
    invoke-virtual {v6, v10, v11}, Landroid/filterfw/geometry/Point;->set(FF)V

    #@120
    .line 146
    new-instance v7, Landroid/filterfw/geometry/Quad;

    #@122
    invoke-direct {v7, v3, v4, v5, v6}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    #@125
    .line 147
    .local v7, "quad":Landroid/filterfw/geometry/Quad;
    iget-object v10, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mProgram:Landroid/filterfw/core/Program;

    #@127
    check-cast v10, Landroid/filterfw/core/ShaderProgram;

    #@129
    invoke-virtual {v10, v7}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(Landroid/filterfw/geometry/Quad;)V

    #@12c
    .line 115
    return-void

    #@12d
    .line 121
    .end local v1    # "maxHeight":F
    .end local v2    # "maxWidth":F
    .end local v3    # "p0":Landroid/filterfw/geometry/Point;
    .end local v4    # "p1":Landroid/filterfw/geometry/Point;
    .end local v5    # "p2":Landroid/filterfw/geometry/Point;
    .end local v6    # "p3":Landroid/filterfw/geometry/Point;
    .end local v7    # "quad":Landroid/filterfw/geometry/Quad;
    .end local v8    # "scale":F
    :cond_1
    iget v10, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mMaxAngle:F

    #@12f
    goto/16 :goto_0
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 80
    iget-object v0, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mProgram:Landroid/filterfw/core/Program;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 81
    invoke-direct {p0}, Landroid/filterpacks/imageproc/StraightenFilter;->updateParameters()V

    #@7
    .line 79
    :cond_0
    return-void
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "target"    # I

    #@0
    .prologue
    .line 64
    packed-switch p2, :pswitch_data_0

    #@3
    .line 72
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
    .line 73
    const-string/jumbo v3, "!"

    #@18
    .line 72
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
    .line 66
    :pswitch_0
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    #@27
    move-result-object v0

    #@28
    .line 67
    .local v0, "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mTileSize:I

    #@2a
    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    #@2d
    .line 68
    iput-object v0, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mProgram:Landroid/filterfw/core/Program;

    #@2f
    .line 75
    iput p2, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mTarget:I

    #@31
    .line 63
    return-void

    #@32
    .line 64
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 5
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 88
    const-string/jumbo v3, "image"

    #@3
    invoke-virtual {p0, v3}, Landroid/filterpacks/imageproc/StraightenFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@6
    move-result-object v0

    #@7
    .line 89
    .local v0, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@a
    move-result-object v1

    #@b
    .line 92
    .local v1, "inputFormat":Landroid/filterfw/core/FrameFormat;
    iget-object v3, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mProgram:Landroid/filterfw/core/Program;

    #@d
    if-eqz v3, :cond_0

    #@f
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    #@12
    move-result v3

    #@13
    iget v4, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mTarget:I

    #@15
    if-eq v3, v4, :cond_1

    #@17
    .line 93
    :cond_0
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    #@1a
    move-result v3

    #@1b
    invoke-virtual {p0, p1, v3}, Landroid/filterpacks/imageproc/StraightenFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    #@1e
    .line 97
    :cond_1
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    #@21
    move-result v3

    #@22
    iget v4, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    #@24
    if-ne v3, v4, :cond_2

    #@26
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    #@29
    move-result v3

    #@2a
    iget v4, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    #@2c
    if-eq v3, v4, :cond_3

    #@2e
    .line 98
    :cond_2
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    #@31
    move-result v3

    #@32
    iput v3, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mWidth:I

    #@34
    .line 99
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    #@37
    move-result v3

    #@38
    iput v3, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mHeight:I

    #@3a
    .line 100
    invoke-direct {p0}, Landroid/filterpacks/imageproc/StraightenFilter;->updateParameters()V

    #@3d
    .line 103
    :cond_3
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@40
    move-result-object v3

    #@41
    invoke-virtual {v3, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@44
    move-result-object v2

    #@45
    .line 106
    .local v2, "output":Landroid/filterfw/core/Frame;
    iget-object v3, p0, Landroid/filterpacks/imageproc/StraightenFilter;->mProgram:Landroid/filterfw/core/Program;

    #@47
    invoke-virtual {v3, v0, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@4a
    .line 109
    const-string/jumbo v3, "image"

    #@4d
    invoke-virtual {p0, v3, v2}, Landroid/filterpacks/imageproc/StraightenFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@50
    .line 112
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@53
    .line 86
    return-void
.end method

.method public setupPorts()V
    .locals 2

    #@0
    .prologue
    .line 59
    const-string/jumbo v0, "image"

    #@3
    const/4 v1, 0x3

    #@4
    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/StraightenFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@b
    .line 60
    const-string/jumbo v0, "image"

    #@e
    const-string/jumbo v1, "image"

    #@11
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/StraightenFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    #@14
    .line 58
    return-void
.end method
