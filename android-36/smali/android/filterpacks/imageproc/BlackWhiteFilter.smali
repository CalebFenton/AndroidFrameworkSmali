.class public Landroid/filterpacks/imageproc/BlackWhiteFilter;
.super Landroid/filterfw/core/Filter;
.source "BlackWhiteFilter.java"


# instance fields
.field private blacklist mBlack:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "black"
    .end annotation
.end field

.field private final blacklist mBlackWhiteShader:Ljava/lang/String;

.field private blacklist mProgram:Landroid/filterfw/core/Program;

.field private blacklist mRandom:Ljava/util/Random;

.field private blacklist mTarget:I

.field private blacklist mTileSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "tile_size"
    .end annotation
.end field

.field private blacklist mWhite:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "white"
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 86
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mBlack:F

    .line 36
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mWhite:F

    .line 39
    const/16 v0, 0x280

    iput v0, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mTileSize:I

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mTarget:I

    .line 47
    const-string/jumbo v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec2 seed;\nuniform float black;\nuniform float scale;\nuniform float stepsize;\nvarying vec2 v_texcoord;\nfloat rand(vec2 loc) {\n  float theta1 = dot(loc, vec2(0.9898, 0.233));\n  float theta2 = dot(loc, vec2(12.0, 78.0));\n  float value = cos(theta1) * sin(theta2) + sin(theta1) * cos(theta2);\n  float temp = mod(197.0 * value, 1.0) + value;\n  float part1 = mod(220.0 * temp, 1.0) + temp;\n  float part2 = value * 0.5453;\n  float part3 = cos(theta1 + theta2) * 0.43758;\n  return fract(part1 + part2 + part3);\n}\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float dither = rand(v_texcoord + seed);\n  vec3 xform = clamp((color.rgb - black) * scale, 0.0, 1.0);\n  vec3 temp = clamp((color.rgb + stepsize - black) * scale, 0.0, 1.0);\n  vec3 new_color = clamp(xform + (temp - xform) * (dither - 0.5), 0.0, 1.0);\n  gl_FragColor = vec4(new_color, color.a);\n}\n"

    iput-object v0, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mBlackWhiteShader:Ljava/lang/String;

    .line 87
    new-instance v0, Ljava/util/Random;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mRandom:Ljava/util/Random;

    .line 88
    return-void
.end method

.method private blacklist updateParameters()V
    .registers 7

    .line 118
    iget v0, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mBlack:F

    iget v1, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mWhite:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_11

    iget v0, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mWhite:F

    iget v1, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mBlack:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    goto :goto_13

    :cond_11
    const/high16 v1, 0x44fa0000    # 2000.0f

    .line 119
    .local v1, "scale":F
    :goto_13
    const v0, 0x3b808081

    .line 120
    .local v0, "stepsize":F
    iget-object v2, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mProgram:Landroid/filterfw/core/Program;

    iget v3, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mBlack:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v4, "black"

    invoke-virtual {v2, v4, v3}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    iget-object v2, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string/jumbo v3, "scale"

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    iget-object v2, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string/jumbo v3, "stepsize"

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    iget-object v2, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mRandom:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    iget-object v3, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mRandom:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v2, v4, v5

    const/4 v2, 0x1

    aput v3, v4, v2

    .line 125
    .local v4, "seed":[F
    iget-object v2, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string/jumbo v3, "seed"

    invoke-virtual {v2, v3, v4}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    return-void
.end method


# virtual methods
.method public blacklist fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .line 130
    iget-object v0, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v0, :cond_7

    .line 131
    invoke-direct {p0}, Landroid/filterpacks/imageproc/BlackWhiteFilter;->updateParameters()V

    .line 133
    :cond_7
    return-void
.end method

.method public blacklist getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .registers 3
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .line 98
    return-object p2
.end method

.method public blacklist initProgram(Landroid/filterfw/core/FilterContext;I)V
    .registers 6
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "target"    # I

    .line 102
    packed-switch p2, :pswitch_data_38

    .line 111
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

    .line 104
    :pswitch_22
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec2 seed;\nuniform float black;\nuniform float scale;\nuniform float stepsize;\nvarying vec2 v_texcoord;\nfloat rand(vec2 loc) {\n  float theta1 = dot(loc, vec2(0.9898, 0.233));\n  float theta2 = dot(loc, vec2(12.0, 78.0));\n  float value = cos(theta1) * sin(theta2) + sin(theta1) * cos(theta2);\n  float temp = mod(197.0 * value, 1.0) + value;\n  float part1 = mod(220.0 * temp, 1.0) + temp;\n  float part2 = value * 0.5453;\n  float part3 = cos(theta1 + theta2) * 0.43758;\n  return fract(part1 + part2 + part3);\n}\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float dither = rand(v_texcoord + seed);\n  vec3 xform = clamp((color.rgb - black) * scale, 0.0, 1.0);\n  vec3 temp = clamp((color.rgb + stepsize - black) * scale, 0.0, 1.0);\n  vec3 new_color = clamp(xform + (temp - xform) * (dither - 0.5), 0.0, 1.0);\n  gl_FragColor = vec4(new_color, color.a);\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 105
    .local v0, "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 106
    iput-object v0, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 107
    invoke-direct {p0}, Landroid/filterpacks/imageproc/BlackWhiteFilter;->updateParameters()V

    .line 108
    nop

    .line 114
    .end local v0    # "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iput p2, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mTarget:I

    .line 115
    return-void

    :pswitch_data_38
    .packed-switch 0x3
        :pswitch_22
    .end packed-switch
.end method

.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .registers 7
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 138
    const-string/jumbo v0, "image"

    invoke-virtual {p0, v0}, Landroid/filterpacks/imageproc/BlackWhiteFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 139
    .local v1, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    .line 142
    .local v2, "inputFormat":Landroid/filterfw/core/FrameFormat;
    iget-object v3, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v3, :cond_17

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mTarget:I

    if-eq v3, v4, :cond_1e

    .line 143
    :cond_17
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Landroid/filterpacks/imageproc/BlackWhiteFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 147
    :cond_1e
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v3

    .line 150
    .local v3, "output":Landroid/filterfw/core/Frame;
    iget-object v4, p0, Landroid/filterpacks/imageproc/BlackWhiteFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v4, v1, v3}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 153
    invoke-virtual {p0, v0, v3}, Landroid/filterpacks/imageproc/BlackWhiteFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 156
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 157
    return-void
.end method

.method public blacklist setupPorts()V
    .registers 3

    .line 92
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string/jumbo v1, "image"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/imageproc/BlackWhiteFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 93
    invoke-virtual {p0, v1, v1}, Landroid/filterpacks/imageproc/BlackWhiteFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method
