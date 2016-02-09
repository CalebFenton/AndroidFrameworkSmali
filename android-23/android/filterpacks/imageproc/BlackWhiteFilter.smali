.class public Landroid/filterpacks/imageproc/BlackWhiteFilter;
.super Landroid/filterfw/core/Filter;
.source "BlackWhiteFilter.java"


# instance fields
.field private mBlack:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "black"
    .end annotation
.end field

.field private final mBlackWhiteShader:Ljava/lang/String;

.field private mProgram:Landroid/filterfw/core/Program;

.field private mRandom:Ljava/util/Random;

.field private mTarget:I

.field private mTileSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "tile_size"
    .end annotation
.end field

.field private mWhite:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "white"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 86
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    #@3
    .line 34
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mBlack:F

    #@6
    .line 37
    const/high16 v0, 0x3f800000    # 1.0f

    #@8
    iput v0, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mWhite:F

    #@a
    .line 40
    const/16 v0, 0x280

    #@c
    iput v0, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mTileSize:I

    #@e
    .line 45
    const/4 v0, 0x0

    #@f
    iput v0, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mTarget:I

    #@11
    .line 48
    const-string/jumbo v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec2 seed;\nuniform float black;\nuniform float scale;\nuniform float stepsize;\nvarying vec2 v_texcoord;\nfloat rand(vec2 loc) {\n  float theta1 = dot(loc, vec2(0.9898, 0.233));\n  float theta2 = dot(loc, vec2(12.0, 78.0));\n  float value = cos(theta1) * sin(theta2) + sin(theta1) * cos(theta2);\n  float temp = mod(197.0 * value, 1.0) + value;\n  float part1 = mod(220.0 * temp, 1.0) + temp;\n  float part2 = value * 0.5453;\n  float part3 = cos(theta1 + theta2) * 0.43758;\n  return fract(part1 + part2 + part3);\n}\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float dither = rand(v_texcoord + seed);\n  vec3 xform = clamp((color.rgb - black) * scale, 0.0, 1.0);\n  vec3 temp = clamp((color.rgb + stepsize - black) * scale, 0.0, 1.0);\n  vec3 new_color = clamp(xform + (temp - xform) * (dither - 0.5), 0.0, 1.0);\n  gl_FragColor = vec4(new_color, color.a);\n}\n"

    #@14
    .line 47
    iput-object v0, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mBlackWhiteShader:Ljava/lang/String;

    #@16
    .line 87
    new-instance v0, Ljava/util/Random;

    #@18
    new-instance v1, Ljava/util/Date;

    #@1a
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    #@1d
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    #@20
    move-result-wide v2

    #@21
    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    #@24
    iput-object v0, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mRandom:Ljava/util/Random;

    #@26
    .line 85
    return-void
.end method

.method private updateParameters()V
    .locals 6

    #@0
    .prologue
    .line 118
    iget v3, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mBlack:F

    #@2
    iget v4, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mWhite:F

    #@4
    cmpl-float v3, v3, v4

    #@6
    if-eqz v3, :cond_0

    #@8
    iget v3, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mWhite:F

    #@a
    iget v4, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mBlack:F

    #@c
    sub-float/2addr v3, v4

    #@d
    const/high16 v4, 0x3f800000    # 1.0f

    #@f
    div-float v0, v4, v3

    #@11
    .line 119
    .local v0, "scale":F
    :goto_0
    const v2, 0x3b808081

    #@14
    .line 120
    .local v2, "stepsize":F
    iget-object v3, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mProgram:Landroid/filterfw/core/Program;

    #@16
    const-string/jumbo v4, "black"

    #@19
    iget v5, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mBlack:F

    #@1b
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@1e
    move-result-object v5

    #@1f
    invoke-virtual {v3, v4, v5}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@22
    .line 121
    iget-object v3, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mProgram:Landroid/filterfw/core/Program;

    #@24
    const-string/jumbo v4, "scale"

    #@27
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@2a
    move-result-object v5

    #@2b
    invoke-virtual {v3, v4, v5}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@2e
    .line 122
    iget-object v3, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mProgram:Landroid/filterfw/core/Program;

    #@30
    const-string/jumbo v4, "stepsize"

    #@33
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@36
    move-result-object v5

    #@37
    invoke-virtual {v3, v4, v5}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@3a
    .line 124
    const/4 v3, 0x2

    #@3b
    new-array v1, v3, [F

    #@3d
    iget-object v3, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mRandom:Ljava/util/Random;

    #@3f
    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    #@42
    move-result v3

    #@43
    const/4 v4, 0x0

    #@44
    aput v3, v1, v4

    #@46
    iget-object v3, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mRandom:Ljava/util/Random;

    #@48
    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    #@4b
    move-result v3

    #@4c
    const/4 v4, 0x1

    #@4d
    aput v3, v1, v4

    #@4f
    .line 125
    .local v1, "seed":[F
    iget-object v3, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mProgram:Landroid/filterfw/core/Program;

    #@51
    const-string/jumbo v4, "seed"

    #@54
    invoke-virtual {v3, v4, v1}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@57
    .line 117
    return-void

    #@58
    .line 118
    .end local v0    # "scale":F
    .end local v1    # "seed":[F
    .end local v2    # "stepsize":F
    :cond_0
    const/high16 v0, 0x44fa0000    # 2000.0f

    #@5a
    .restart local v0    # "scale":F
    goto :goto_0
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 130
    iget-object v0, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mProgram:Landroid/filterfw/core/Program;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 131
    invoke-direct {p0}, Landroid/filterpacks/imageproc/BlackWhiteFilter;->updateParameters()V

    #@7
    .line 129
    :cond_0
    return-void
.end method

.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    #@0
    .prologue
    .line 98
    return-object p2
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "target"    # I

    #@0
    .prologue
    .line 102
    packed-switch p2, :pswitch_data_0

    #@3
    .line 111
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
    .line 112
    const-string/jumbo v3, "!"

    #@18
    .line 111
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
    .line 104
    :pswitch_0
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    #@26
    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec2 seed;\nuniform float black;\nuniform float scale;\nuniform float stepsize;\nvarying vec2 v_texcoord;\nfloat rand(vec2 loc) {\n  float theta1 = dot(loc, vec2(0.9898, 0.233));\n  float theta2 = dot(loc, vec2(12.0, 78.0));\n  float value = cos(theta1) * sin(theta2) + sin(theta1) * cos(theta2);\n  float temp = mod(197.0 * value, 1.0) + value;\n  float part1 = mod(220.0 * temp, 1.0) + temp;\n  float part2 = value * 0.5453;\n  float part3 = cos(theta1 + theta2) * 0.43758;\n  return fract(part1 + part2 + part3);\n}\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float dither = rand(v_texcoord + seed);\n  vec3 xform = clamp((color.rgb - black) * scale, 0.0, 1.0);\n  vec3 temp = clamp((color.rgb + stepsize - black) * scale, 0.0, 1.0);\n  vec3 new_color = clamp(xform + (temp - xform) * (dither - 0.5), 0.0, 1.0);\n  gl_FragColor = vec4(new_color, color.a);\n}\n"

    #@29
    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    #@2c
    .line 105
    .local v0, "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mTileSize:I

    #@2e
    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    #@31
    .line 106
    iput-object v0, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mProgram:Landroid/filterfw/core/Program;

    #@33
    .line 107
    invoke-direct {p0}, Landroid/filterpacks/imageproc/BlackWhiteFilter;->updateParameters()V

    #@36
    .line 114
    iput p2, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mTarget:I

    #@38
    .line 101
    return-void

    #@39
    .line 102
    nop

    #@3a
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
    .line 138
    const-string/jumbo v3, "image"

    #@3
    invoke-virtual {p0, v3}, Landroid/filterpacks/imageproc/BlackWhiteFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@6
    move-result-object v0

    #@7
    .line 139
    .local v0, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@a
    move-result-object v1

    #@b
    .line 142
    .local v1, "inputFormat":Landroid/filterfw/core/FrameFormat;
    iget-object v3, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mProgram:Landroid/filterfw/core/Program;

    #@d
    if-eqz v3, :cond_0

    #@f
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    #@12
    move-result v3

    #@13
    iget v4, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mTarget:I

    #@15
    if-eq v3, v4, :cond_1

    #@17
    .line 143
    :cond_0
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    #@1a
    move-result v3

    #@1b
    invoke-virtual {p0, p1, v3}, Landroid/filterpacks/imageproc/BlackWhiteFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    #@1e
    .line 147
    :cond_1
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@25
    move-result-object v2

    #@26
    .line 150
    .local v2, "output":Landroid/filterfw/core/Frame;
    iget-object v3, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mProgram:Landroid/filterfw/core/Program;

    #@28
    invoke-virtual {v3, v0, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@2b
    .line 153
    const-string/jumbo v3, "image"

    #@2e
    invoke-virtual {p0, v3, v2}, Landroid/filterpacks/imageproc/BlackWhiteFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@31
    .line 156
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@34
    .line 136
    return-void
.end method

.method public setupPorts()V
    .locals 2

    #@0
    .prologue
    .line 92
    const-string/jumbo v0, "image"

    #@3
    const/4 v1, 0x3

    #@4
    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/BlackWhiteFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@b
    .line 93
    const-string/jumbo v0, "image"

    #@e
    const-string/jumbo v1, "image"

    #@11
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/BlackWhiteFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    #@14
    .line 91
    return-void
.end method
