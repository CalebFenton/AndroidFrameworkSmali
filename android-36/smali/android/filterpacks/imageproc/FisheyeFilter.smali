.class public Landroid/filterpacks/imageproc/FisheyeFilter;
.super Landroid/filterfw/core/Filter;
.source "FisheyeFilter.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "FisheyeFilter"

.field private static final blacklist mFisheyeShader:Ljava/lang/String; = "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec2 scale;\nuniform float alpha;\nuniform float radius2;\nuniform float factor;\nvarying vec2 v_texcoord;\nvoid main() {\n  const float m_pi_2 = 1.570963;\n  const float min_dist = 0.01;\n  vec2 coord = v_texcoord - vec2(0.5, 0.5);\n  float dist = length(coord * scale);\n  dist = max(dist, min_dist);\n  float radian = m_pi_2 - atan(alpha * sqrt(radius2 - dist * dist), dist);\n  float scalar = radian * factor / dist;\n  vec2 new_coord = coord * scalar + vec2(0.5, 0.5);\n  gl_FragColor = texture2D(tex_sampler_0, new_coord);\n}\n"


# instance fields
.field private blacklist mHeight:I

.field private blacklist mProgram:Landroid/filterfw/core/Program;

.field private blacklist mScale:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "scale"
    .end annotation
.end field

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

    .line 75
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mScale:F

    .line 43
    const/16 v0, 0x280

    iput v0, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mTileSize:I

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mWidth:I

    .line 49
    iput v0, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mHeight:I

    .line 50
    iput v0, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mTarget:I

    .line 76
    return-void
.end method

.method private blacklist updateFrameSize(II)V
    .registers 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 141
    iput p1, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mWidth:I

    .line 142
    iput p2, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mHeight:I

    .line 144
    invoke-direct {p0}, Landroid/filterpacks/imageproc/FisheyeFilter;->updateProgramParams()V

    .line 145
    return-void
.end method

.method private blacklist updateProgramParams()V
    .registers 13

    .line 148
    const v0, 0x40490fdb    # (float)Math.PI

    .line 149
    .local v0, "pi":F
    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 150
    .local v1, "scale":[F
    iget v2, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mWidth:I

    iget v3, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mHeight:I

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-le v2, v3, :cond_1c

    .line 151
    aput v4, v1, v6

    .line 152
    iget v2, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mHeight:I

    int-to-float v2, v2

    iget v3, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    aput v2, v1, v5

    goto :goto_27

    .line 154
    :cond_1c
    iget v2, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mWidth:I

    int-to-float v2, v2

    iget v3, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    aput v2, v1, v6

    .line 155
    aput v4, v1, v5

    .line 157
    :goto_27
    iget v2, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mScale:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f400000    # 0.75f

    add-float/2addr v2, v3

    .line 158
    .local v2, "alpha":F
    aget v3, v1, v6

    aget v4, v1, v6

    mul-float/2addr v3, v4

    aget v4, v1, v5

    aget v5, v1, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/high16 v4, 0x3e800000    # 0.25f

    mul-float/2addr v3, v4

    .line 159
    .local v3, "bound2":F
    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 160
    .local v4, "bound":F
    const v5, 0x3f933333    # 1.15f

    mul-float/2addr v5, v4

    .line 161
    .local v5, "radius":F
    mul-float v6, v5, v5

    .line 162
    .local v6, "radius2":F
    div-float v7, v2, v4

    sub-float v8, v6, v3

    float-to-double v8, v8

    .line 163
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->atan(D)D

    move-result-wide v7

    double-to-float v7, v7

    const v8, 0x3fc90fdb

    sub-float/2addr v8, v7

    .line 164
    .local v8, "max_radian":F
    div-float v7, v4, v8

    .line 166
    .local v7, "factor":F
    iget-object v9, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string/jumbo v10, "scale"

    invoke-virtual {v9, v10, v1}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 167
    iget-object v9, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string/jumbo v10, "radius2"

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 168
    iget-object v9, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string v10, "factor"

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    iget-object v9, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string v10, "alpha"

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 170
    return-void
.end method


# virtual methods
.method public blacklist fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .line 135
    iget-object v0, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v0, :cond_7

    .line 136
    invoke-direct {p0}, Landroid/filterpacks/imageproc/FisheyeFilter;->updateProgramParams()V

    .line 138
    :cond_7
    return-void
.end method

.method public blacklist getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .registers 3
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .line 86
    return-object p2
.end method

.method public blacklist initProgram(Landroid/filterfw/core/FilterContext;I)V
    .registers 6
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "target"    # I

    .line 90
    packed-switch p2, :pswitch_data_36

    .line 98
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Filter FisheyeFilter does not support frames of target "

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

    .line 92
    :pswitch_22
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec2 scale;\nuniform float alpha;\nuniform float radius2;\nuniform float factor;\nvarying vec2 v_texcoord;\nvoid main() {\n  const float m_pi_2 = 1.570963;\n  const float min_dist = 0.01;\n  vec2 coord = v_texcoord - vec2(0.5, 0.5);\n  float dist = length(coord * scale);\n  dist = max(dist, min_dist);\n  float radian = m_pi_2 - atan(alpha * sqrt(radius2 - dist * dist), dist);\n  float scalar = radian * factor / dist;\n  vec2 new_coord = coord * scalar + vec2(0.5, 0.5);\n  gl_FragColor = texture2D(tex_sampler_0, new_coord);\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 93
    .local v0, "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 94
    iput-object v0, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 95
    nop

    .line 101
    .end local v0    # "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iput p2, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mTarget:I

    .line 102
    return-void

    nop

    :pswitch_data_36
    .packed-switch 0x3
        :pswitch_22
    .end packed-switch
.end method

.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .registers 8
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 107
    const-string/jumbo v0, "image"

    invoke-virtual {p0, v0}, Landroid/filterpacks/imageproc/FisheyeFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 108
    .local v1, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    .line 111
    .local v2, "inputFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v3

    .line 114
    .local v3, "output":Landroid/filterfw/core/Frame;
    iget-object v4, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v4, :cond_1f

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v4

    iget v5, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mTarget:I

    if-eq v4, v5, :cond_26

    .line 115
    :cond_1f
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v4

    invoke-virtual {p0, p1, v4}, Landroid/filterpacks/imageproc/FisheyeFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 119
    :cond_26
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mWidth:I

    if-ne v4, v5, :cond_36

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mHeight:I

    if-eq v4, v5, :cond_41

    .line 120
    :cond_36
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v5

    invoke-direct {p0, v4, v5}, Landroid/filterpacks/imageproc/FisheyeFilter;->updateFrameSize(II)V

    .line 124
    :cond_41
    iget-object v4, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v4, v1, v3}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 127
    invoke-virtual {p0, v0, v3}, Landroid/filterpacks/imageproc/FisheyeFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 130
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 131
    return-void
.end method

.method public blacklist setupPorts()V
    .registers 3

    .line 80
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string/jumbo v1, "image"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/imageproc/FisheyeFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 81
    invoke-virtual {p0, v1, v1}, Landroid/filterpacks/imageproc/FisheyeFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method
