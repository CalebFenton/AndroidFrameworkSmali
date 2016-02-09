.class public Landroid/filterpacks/imageproc/FisheyeFilter;
.super Landroid/filterfw/core/Filter;
.source "FisheyeFilter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FisheyeFilter"

.field private static final mFisheyeShader:Ljava/lang/String; = "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec2 scale;\nuniform float alpha;\nuniform float radius2;\nuniform float factor;\nvarying vec2 v_texcoord;\nvoid main() {\n  const float m_pi_2 = 1.570963;\n  vec2 coord = v_texcoord - vec2(0.5, 0.5);\n  float dist = length(coord * scale);\n  float radian = m_pi_2 - atan(alpha * sqrt(radius2 - dist * dist), dist);\n  float scalar = radian * factor / dist;\n  vec2 new_coord = coord * scalar + vec2(0.5, 0.5);\n  gl_FragColor = texture2D(tex_sampler_0, new_coord);\n}\n"


# instance fields
.field private mHeight:I

.field private mProgram:Landroid/filterfw/core/Program;

.field private mScale:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "scale"
    .end annotation
.end field

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
    .line 71
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    #@4
    .line 41
    const/4 v0, 0x0

    #@5
    iput v0, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mScale:F

    #@7
    .line 44
    const/16 v0, 0x280

    #@9
    iput v0, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mTileSize:I

    #@b
    .line 48
    iput v1, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mWidth:I

    #@d
    .line 49
    iput v1, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mHeight:I

    #@f
    .line 50
    iput v1, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mTarget:I

    #@11
    .line 70
    return-void
.end method

.method private updateFrameSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    .line 137
    iput p1, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mWidth:I

    #@2
    .line 138
    iput p2, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mHeight:I

    #@4
    .line 140
    invoke-direct {p0}, Landroid/filterpacks/imageproc/FisheyeFilter;->updateProgramParams()V

    #@7
    .line 136
    return-void
.end method

.method private updateProgramParams()V
    .locals 14

    #@0
    .prologue
    const/high16 v13, 0x3f800000    # 1.0f

    #@2
    const/4 v12, 0x1

    #@3
    const/4 v11, 0x0

    #@4
    .line 144
    const v5, 0x40490fdb    # (float)Math.PI

    #@7
    .line 145
    .local v5, "pi":F
    const/4 v9, 0x2

    #@8
    new-array v8, v9, [F

    #@a
    .line 146
    .local v8, "scale":[F
    iget v9, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mWidth:I

    #@c
    iget v10, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mHeight:I

    #@e
    if-le v9, v10, :cond_0

    #@10
    .line 147
    aput v13, v8, v11

    #@12
    .line 148
    iget v9, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mHeight:I

    #@14
    int-to-float v9, v9

    #@15
    iget v10, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mWidth:I

    #@17
    int-to-float v10, v10

    #@18
    div-float/2addr v9, v10

    #@19
    aput v9, v8, v12

    #@1b
    .line 153
    :goto_0
    iget v9, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mScale:F

    #@1d
    const/high16 v10, 0x40000000    # 2.0f

    #@1f
    mul-float/2addr v9, v10

    #@20
    const/high16 v10, 0x3f400000    # 0.75f

    #@22
    add-float v0, v9, v10

    #@24
    .line 154
    .local v0, "alpha":F
    aget v9, v8, v11

    #@26
    aget v10, v8, v11

    #@28
    mul-float/2addr v9, v10

    #@29
    aget v10, v8, v12

    #@2b
    aget v11, v8, v12

    #@2d
    mul-float/2addr v10, v11

    #@2e
    add-float/2addr v9, v10

    #@2f
    const/high16 v10, 0x3e800000    # 0.25f

    #@31
    mul-float v2, v10, v9

    #@33
    .line 155
    .local v2, "bound2":F
    float-to-double v10, v2

    #@34
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    #@37
    move-result-wide v10

    #@38
    double-to-float v1, v10

    #@39
    .line 156
    .local v1, "bound":F
    const v9, 0x3f933333    # 1.15f

    #@3c
    mul-float v6, v9, v1

    #@3e
    .line 157
    .local v6, "radius":F
    mul-float v7, v6, v6

    #@40
    .line 159
    .local v7, "radius2":F
    div-float v9, v0, v1

    #@42
    sub-float v10, v7, v2

    #@44
    float-to-double v10, v10

    #@45
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    #@48
    move-result-wide v10

    #@49
    double-to-float v10, v10

    #@4a
    mul-float/2addr v9, v10

    #@4b
    float-to-double v10, v9

    #@4c
    invoke-static {v10, v11}, Ljava/lang/Math;->atan(D)D

    #@4f
    move-result-wide v10

    #@50
    double-to-float v9, v10

    #@51
    .line 158
    const v10, 0x3fc90fdb

    #@54
    sub-float v4, v10, v9

    #@56
    .line 160
    .local v4, "max_radian":F
    div-float v3, v1, v4

    #@58
    .line 162
    .local v3, "factor":F
    iget-object v9, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mProgram:Landroid/filterfw/core/Program;

    #@5a
    const-string/jumbo v10, "scale"

    #@5d
    invoke-virtual {v9, v10, v8}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@60
    .line 163
    iget-object v9, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mProgram:Landroid/filterfw/core/Program;

    #@62
    const-string/jumbo v10, "radius2"

    #@65
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@68
    move-result-object v11

    #@69
    invoke-virtual {v9, v10, v11}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@6c
    .line 164
    iget-object v9, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mProgram:Landroid/filterfw/core/Program;

    #@6e
    const-string/jumbo v10, "factor"

    #@71
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@74
    move-result-object v11

    #@75
    invoke-virtual {v9, v10, v11}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@78
    .line 165
    iget-object v9, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mProgram:Landroid/filterfw/core/Program;

    #@7a
    const-string/jumbo v10, "alpha"

    #@7d
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@80
    move-result-object v11

    #@81
    invoke-virtual {v9, v10, v11}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@84
    .line 143
    return-void

    #@85
    .line 150
    .end local v0    # "alpha":F
    .end local v1    # "bound":F
    .end local v2    # "bound2":F
    .end local v3    # "factor":F
    .end local v4    # "max_radian":F
    .end local v6    # "radius":F
    .end local v7    # "radius2":F
    :cond_0
    iget v9, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mWidth:I

    #@87
    int-to-float v9, v9

    #@88
    iget v10, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mHeight:I

    #@8a
    int-to-float v10, v10

    #@8b
    div-float/2addr v9, v10

    #@8c
    aput v9, v8, v11

    #@8e
    .line 151
    aput v13, v8, v12

    #@90
    goto :goto_0
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 131
    iget-object v0, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mProgram:Landroid/filterfw/core/Program;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 132
    invoke-direct {p0}, Landroid/filterpacks/imageproc/FisheyeFilter;->updateProgramParams()V

    #@7
    .line 130
    :cond_0
    return-void
.end method

.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    #@0
    .prologue
    .line 82
    return-object p2
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "target"    # I

    #@0
    .prologue
    .line 86
    packed-switch p2, :pswitch_data_0

    #@3
    .line 94
    new-instance v1, Ljava/lang/RuntimeException;

    #@5
    new-instance v2, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v3, "Filter FisheyeFilter does not support frames of target "

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    .line 95
    const-string/jumbo v3, "!"

    #@18
    .line 94
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
    .line 88
    :pswitch_0
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    #@26
    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec2 scale;\nuniform float alpha;\nuniform float radius2;\nuniform float factor;\nvarying vec2 v_texcoord;\nvoid main() {\n  const float m_pi_2 = 1.570963;\n  vec2 coord = v_texcoord - vec2(0.5, 0.5);\n  float dist = length(coord * scale);\n  float radian = m_pi_2 - atan(alpha * sqrt(radius2 - dist * dist), dist);\n  float scalar = radian * factor / dist;\n  vec2 new_coord = coord * scalar + vec2(0.5, 0.5);\n  gl_FragColor = texture2D(tex_sampler_0, new_coord);\n}\n"

    #@29
    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    #@2c
    .line 89
    .local v0, "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mTileSize:I

    #@2e
    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    #@31
    .line 90
    iput-object v0, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mProgram:Landroid/filterfw/core/Program;

    #@33
    .line 97
    iput p2, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mTarget:I

    #@35
    .line 85
    return-void

    #@36
    .line 86
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
    .line 103
    const-string/jumbo v3, "image"

    #@3
    invoke-virtual {p0, v3}, Landroid/filterpacks/imageproc/FisheyeFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@6
    move-result-object v0

    #@7
    .line 104
    .local v0, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@a
    move-result-object v1

    #@b
    .line 107
    .local v1, "inputFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v3, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@12
    move-result-object v2

    #@13
    .line 110
    .local v2, "output":Landroid/filterfw/core/Frame;
    iget-object v3, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mProgram:Landroid/filterfw/core/Program;

    #@15
    if-eqz v3, :cond_0

    #@17
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    #@1a
    move-result v3

    #@1b
    iget v4, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mTarget:I

    #@1d
    if-eq v3, v4, :cond_1

    #@1f
    .line 111
    :cond_0
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    #@22
    move-result v3

    #@23
    invoke-virtual {p0, p1, v3}, Landroid/filterpacks/imageproc/FisheyeFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    #@26
    .line 115
    :cond_1
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    #@29
    move-result v3

    #@2a
    iget v4, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mWidth:I

    #@2c
    if-ne v3, v4, :cond_2

    #@2e
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    #@31
    move-result v3

    #@32
    iget v4, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mHeight:I

    #@34
    if-eq v3, v4, :cond_3

    #@36
    .line 116
    :cond_2
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    #@39
    move-result v3

    #@3a
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    #@3d
    move-result v4

    #@3e
    invoke-direct {p0, v3, v4}, Landroid/filterpacks/imageproc/FisheyeFilter;->updateFrameSize(II)V

    #@41
    .line 120
    :cond_3
    iget-object v3, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mProgram:Landroid/filterfw/core/Program;

    #@43
    invoke-virtual {v3, v0, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@46
    .line 123
    const-string/jumbo v3, "image"

    #@49
    invoke-virtual {p0, v3, v2}, Landroid/filterpacks/imageproc/FisheyeFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@4c
    .line 126
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@4f
    .line 101
    return-void
.end method

.method public setupPorts()V
    .locals 2

    #@0
    .prologue
    .line 76
    const-string/jumbo v0, "image"

    #@3
    const/4 v1, 0x3

    #@4
    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/FisheyeFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@b
    .line 77
    const-string/jumbo v0, "image"

    #@e
    const-string/jumbo v1, "image"

    #@11
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/FisheyeFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    #@14
    .line 75
    return-void
.end method
