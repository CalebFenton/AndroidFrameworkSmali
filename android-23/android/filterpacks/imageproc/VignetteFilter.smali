.class public Landroid/filterpacks/imageproc/VignetteFilter;
.super Landroid/filterfw/core/Filter;
.source "VignetteFilter.java"


# instance fields
.field private mHeight:I

.field private mProgram:Landroid/filterfw/core/Program;

.field private mScale:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "scale"
    .end annotation
.end field

.field private final mShade:F

.field private final mSlope:F

.field private mTarget:I

.field private mTileSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "tile_size"
    .end annotation
.end field

.field private final mVignetteShader:Ljava/lang/String;

.field private mWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 63
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    #@4
    .line 31
    const/4 v0, 0x0

    #@5
    iput v0, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mScale:F

    #@7
    .line 34
    const/16 v0, 0x280

    #@9
    iput v0, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mTileSize:I

    #@b
    .line 38
    iput v1, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mWidth:I

    #@d
    .line 39
    iput v1, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mHeight:I

    #@f
    .line 40
    iput v1, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mTarget:I

    #@11
    .line 42
    const/high16 v0, 0x41a00000    # 20.0f

    #@13
    iput v0, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mSlope:F

    #@15
    .line 43
    const v0, 0x3f59999a    # 0.85f

    #@18
    iput v0, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mShade:F

    #@1a
    .line 46
    const-string/jumbo v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float range;\nuniform float inv_max_dist;\nuniform float shade;\nuniform vec2 scale;\nvarying vec2 v_texcoord;\nvoid main() {\n  const float slope = 20.0;\n  vec2 coord = v_texcoord - vec2(0.5, 0.5);\n  float dist = length(coord * scale);\n  float lumen = shade / (1.0 + exp((dist * inv_max_dist - range) * slope)) + (1.0 - shade);\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  gl_FragColor = vec4(color.rgb * lumen, color.a);\n}\n"

    #@1d
    .line 45
    iput-object v0, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mVignetteShader:Ljava/lang/String;

    #@1f
    .line 62
    return-void
.end method

.method private initParameters()V
    .locals 7

    #@0
    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    #@2
    const/4 v5, 0x1

    #@3
    const/4 v4, 0x0

    #@4
    .line 93
    iget-object v2, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mProgram:Landroid/filterfw/core/Program;

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 94
    const/4 v2, 0x2

    #@9
    new-array v1, v2, [F

    #@b
    .line 95
    .local v1, "scale":[F
    iget v2, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mWidth:I

    #@d
    iget v3, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mHeight:I

    #@f
    if-le v2, v3, :cond_1

    #@11
    .line 96
    aput v6, v1, v4

    #@13
    .line 97
    iget v2, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mHeight:I

    #@15
    int-to-float v2, v2

    #@16
    iget v3, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mWidth:I

    #@18
    int-to-float v3, v3

    #@19
    div-float/2addr v2, v3

    #@1a
    aput v2, v1, v5

    #@1c
    .line 102
    :goto_0
    aget v2, v1, v4

    #@1e
    aget v3, v1, v4

    #@20
    mul-float/2addr v2, v3

    #@21
    aget v3, v1, v5

    #@23
    aget v4, v1, v5

    #@25
    mul-float/2addr v3, v4

    #@26
    add-float/2addr v2, v3

    #@27
    float-to-double v2, v2

    #@28
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    #@2b
    move-result-wide v2

    #@2c
    double-to-float v2, v2

    #@2d
    const/high16 v3, 0x3f000000    # 0.5f

    #@2f
    mul-float v0, v2, v3

    #@31
    .line 103
    .local v0, "max_dist":F
    iget-object v2, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mProgram:Landroid/filterfw/core/Program;

    #@33
    const-string/jumbo v3, "scale"

    #@36
    invoke-virtual {v2, v3, v1}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@39
    .line 104
    iget-object v2, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mProgram:Landroid/filterfw/core/Program;

    #@3b
    const-string/jumbo v3, "inv_max_dist"

    #@3e
    div-float v4, v6, v0

    #@40
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@43
    move-result-object v4

    #@44
    invoke-virtual {v2, v3, v4}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@47
    .line 105
    iget-object v2, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mProgram:Landroid/filterfw/core/Program;

    #@49
    const-string/jumbo v3, "shade"

    #@4c
    const v4, 0x3f59999a    # 0.85f

    #@4f
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@52
    move-result-object v4

    #@53
    invoke-virtual {v2, v3, v4}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@56
    .line 107
    invoke-direct {p0}, Landroid/filterpacks/imageproc/VignetteFilter;->updateParameters()V

    #@59
    .line 92
    .end local v0    # "max_dist":F
    .end local v1    # "scale":[F
    :cond_0
    return-void

    #@5a
    .line 99
    .restart local v1    # "scale":[F
    :cond_1
    iget v2, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mWidth:I

    #@5c
    int-to-float v2, v2

    #@5d
    iget v3, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mHeight:I

    #@5f
    int-to-float v3, v3

    #@60
    div-float/2addr v2, v3

    #@61
    aput v2, v1, v4

    #@63
    .line 100
    aput v6, v1, v5

    #@65
    goto :goto_0
.end method

.method private updateParameters()V
    .locals 4

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mProgram:Landroid/filterfw/core/Program;

    #@2
    const-string/jumbo v1, "range"

    #@5
    iget v2, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mScale:F

    #@7
    float-to-double v2, v2

    #@8
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    #@b
    move-result-wide v2

    #@c
    double-to-float v2, v2

    #@d
    const v3, 0x3f333333    # 0.7f

    #@10
    mul-float/2addr v2, v3

    #@11
    const v3, 0x3fa66666    # 1.3f

    #@14
    sub-float v2, v3, v2

    #@16
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@1d
    .line 111
    return-void
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 120
    iget-object v0, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mProgram:Landroid/filterfw/core/Program;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 121
    invoke-direct {p0}, Landroid/filterpacks/imageproc/VignetteFilter;->updateParameters()V

    #@7
    .line 119
    :cond_0
    return-void
.end method

.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    #@0
    .prologue
    .line 74
    return-object p2
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "target"    # I

    #@0
    .prologue
    .line 78
    packed-switch p2, :pswitch_data_0

    #@3
    .line 86
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
    .line 87
    const-string/jumbo v3, "!"

    #@18
    .line 86
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
    .line 80
    :pswitch_0
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    #@26
    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float range;\nuniform float inv_max_dist;\nuniform float shade;\nuniform vec2 scale;\nvarying vec2 v_texcoord;\nvoid main() {\n  const float slope = 20.0;\n  vec2 coord = v_texcoord - vec2(0.5, 0.5);\n  float dist = length(coord * scale);\n  float lumen = shade / (1.0 + exp((dist * inv_max_dist - range) * slope)) + (1.0 - shade);\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  gl_FragColor = vec4(color.rgb * lumen, color.a);\n}\n"

    #@29
    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    #@2c
    .line 81
    .local v0, "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mTileSize:I

    #@2e
    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    #@31
    .line 82
    iput-object v0, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mProgram:Landroid/filterfw/core/Program;

    #@33
    .line 89
    iput p2, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mTarget:I

    #@35
    .line 77
    return-void

    #@36
    .line 78
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
    .line 128
    const-string/jumbo v3, "image"

    #@3
    invoke-virtual {p0, v3}, Landroid/filterpacks/imageproc/VignetteFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@6
    move-result-object v0

    #@7
    .line 129
    .local v0, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@a
    move-result-object v1

    #@b
    .line 132
    .local v1, "inputFormat":Landroid/filterfw/core/FrameFormat;
    iget-object v3, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mProgram:Landroid/filterfw/core/Program;

    #@d
    if-eqz v3, :cond_0

    #@f
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    #@12
    move-result v3

    #@13
    iget v4, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mTarget:I

    #@15
    if-eq v3, v4, :cond_1

    #@17
    .line 133
    :cond_0
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    #@1a
    move-result v3

    #@1b
    invoke-virtual {p0, p1, v3}, Landroid/filterpacks/imageproc/VignetteFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    #@1e
    .line 137
    :cond_1
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    #@21
    move-result v3

    #@22
    iget v4, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mWidth:I

    #@24
    if-ne v3, v4, :cond_2

    #@26
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    #@29
    move-result v3

    #@2a
    iget v4, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mHeight:I

    #@2c
    if-eq v3, v4, :cond_3

    #@2e
    .line 138
    :cond_2
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    #@31
    move-result v3

    #@32
    iput v3, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mWidth:I

    #@34
    .line 139
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    #@37
    move-result v3

    #@38
    iput v3, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mHeight:I

    #@3a
    .line 140
    invoke-direct {p0}, Landroid/filterpacks/imageproc/VignetteFilter;->initParameters()V

    #@3d
    .line 144
    :cond_3
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@40
    move-result-object v3

    #@41
    invoke-virtual {v3, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@44
    move-result-object v2

    #@45
    .line 147
    .local v2, "output":Landroid/filterfw/core/Frame;
    iget-object v3, p0, Landroid/filterpacks/imageproc/VignetteFilter;->mProgram:Landroid/filterfw/core/Program;

    #@47
    invoke-virtual {v3, v0, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@4a
    .line 150
    const-string/jumbo v3, "image"

    #@4d
    invoke-virtual {p0, v3, v2}, Landroid/filterpacks/imageproc/VignetteFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@50
    .line 153
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@53
    .line 126
    return-void
.end method

.method public setupPorts()V
    .locals 2

    #@0
    .prologue
    .line 68
    const-string/jumbo v0, "image"

    #@3
    const/4 v1, 0x3

    #@4
    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/VignetteFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@b
    .line 69
    const-string/jumbo v0, "image"

    #@e
    const-string/jumbo v1, "image"

    #@11
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/VignetteFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    #@14
    .line 67
    return-void
.end method
