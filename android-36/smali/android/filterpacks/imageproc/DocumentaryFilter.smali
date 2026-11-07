.class public Landroid/filterpacks/imageproc/DocumentaryFilter;
.super Landroid/filterfw/core/Filter;
.source "DocumentaryFilter.java"


# instance fields
.field private final blacklist mDocumentaryShader:Ljava/lang/String;

.field private blacklist mHeight:I

.field private blacklist mProgram:Landroid/filterfw/core/Program;

.field private blacklist mRandom:Ljava/util/Random;

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
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .line 80
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 33
    const/16 v0, 0x280

    iput v0, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mTileSize:I

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mWidth:I

    .line 40
    iput v0, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mHeight:I

    .line 41
    iput v0, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mTarget:I

    .line 43
    const-string/jumbo v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec2 seed;\nuniform float stepsize;\nuniform float inv_max_dist;\nuniform vec2 scale;\nvarying vec2 v_texcoord;\nfloat rand(vec2 loc) {\n  float theta1 = dot(loc, vec2(0.9898, 0.233));\n  float theta2 = dot(loc, vec2(12.0, 78.0));\n  float value = cos(theta1) * sin(theta2) + sin(theta1) * cos(theta2);\n  float temp = mod(197.0 * value, 1.0) + value;\n  float part1 = mod(220.0 * temp, 1.0) + temp;\n  float part2 = value * 0.5453;\n  float part3 = cos(theta1 + theta2) * 0.43758;\n  return fract(part1 + part2 + part3);\n}\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float dither = rand(v_texcoord + seed);\n  vec3 xform = clamp(2.0 * color.rgb, 0.0, 1.0);\n  vec3 temp = clamp(2.0 * (color.rgb + stepsize), 0.0, 1.0);\n  vec3 new_color = clamp(xform + (temp - xform) * (dither - 0.5), 0.0, 1.0);\n  float gray = dot(new_color, vec3(0.299, 0.587, 0.114));\n  new_color = vec3(gray, gray, gray);\n  vec2 coord = v_texcoord - vec2(0.5, 0.5);\n  float dist = length(coord * scale);\n  float lumen = 0.85 / (1.0 + exp((dist * inv_max_dist - 0.83) * 20.0)) + 0.15;\n  gl_FragColor = vec4(new_color * lumen, color.a);\n}\n"

    iput-object v0, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mDocumentaryShader:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 82
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/util/Random;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    iput-object v1, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mRandom:Ljava/util/Random;

    .line 83
    return-void
.end method

.method private blacklist initParameters()V
    .registers 9

    .line 143
    iget-object v0, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v0, :cond_7a

    .line 144
    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 145
    .local v1, "scale":[F
    iget v2, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mWidth:I

    iget v3, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mHeight:I

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-le v2, v3, :cond_1d

    .line 146
    aput v4, v1, v6

    .line 147
    iget v2, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mHeight:I

    int-to-float v2, v2

    iget v3, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    aput v2, v1, v5

    goto :goto_28

    .line 149
    :cond_1d
    iget v2, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mWidth:I

    int-to-float v2, v2

    iget v3, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    aput v2, v1, v6

    .line 150
    aput v4, v1, v5

    .line 152
    :goto_28
    aget v2, v1, v6

    aget v3, v1, v6

    mul-float/2addr v2, v3

    aget v3, v1, v5

    aget v7, v1, v5

    mul-float/2addr v3, v7

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    .line 154
    .local v2, "max_dist":F
    iget-object v3, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string/jumbo v7, "scale"

    invoke-virtual {v3, v7, v1}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    iget-object v3, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mProgram:Landroid/filterfw/core/Program;

    div-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-string/jumbo v7, "inv_max_dist"

    invoke-virtual {v3, v7, v4}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 156
    iget-object v3, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mProgram:Landroid/filterfw/core/Program;

    const v4, 0x3b808081

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-string/jumbo v7, "stepsize"

    invoke-virtual {v3, v7, v4}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    iget-object v3, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mRandom:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    iget-object v4, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mRandom:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    new-array v0, v0, [F

    aput v3, v0, v6

    aput v4, v0, v5

    .line 159
    .local v0, "seed":[F
    iget-object v3, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string/jumbo v4, "seed"

    invoke-virtual {v3, v4, v0}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 161
    .end local v0    # "seed":[F
    .end local v1    # "scale":[F
    .end local v2    # "max_dist":F
    :cond_7a
    return-void
.end method


# virtual methods
.method public blacklist getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .registers 3
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .line 93
    return-object p2
.end method

.method public blacklist initProgram(Landroid/filterfw/core/FilterContext;I)V
    .registers 6
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "target"    # I

    .line 97
    packed-switch p2, :pswitch_data_36

    .line 105
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

    .line 99
    :pswitch_22
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec2 seed;\nuniform float stepsize;\nuniform float inv_max_dist;\nuniform vec2 scale;\nvarying vec2 v_texcoord;\nfloat rand(vec2 loc) {\n  float theta1 = dot(loc, vec2(0.9898, 0.233));\n  float theta2 = dot(loc, vec2(12.0, 78.0));\n  float value = cos(theta1) * sin(theta2) + sin(theta1) * cos(theta2);\n  float temp = mod(197.0 * value, 1.0) + value;\n  float part1 = mod(220.0 * temp, 1.0) + temp;\n  float part2 = value * 0.5453;\n  float part3 = cos(theta1 + theta2) * 0.43758;\n  return fract(part1 + part2 + part3);\n}\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float dither = rand(v_texcoord + seed);\n  vec3 xform = clamp(2.0 * color.rgb, 0.0, 1.0);\n  vec3 temp = clamp(2.0 * (color.rgb + stepsize), 0.0, 1.0);\n  vec3 new_color = clamp(xform + (temp - xform) * (dither - 0.5), 0.0, 1.0);\n  float gray = dot(new_color, vec3(0.299, 0.587, 0.114));\n  new_color = vec3(gray, gray, gray);\n  vec2 coord = v_texcoord - vec2(0.5, 0.5);\n  float dist = length(coord * scale);\n  float lumen = 0.85 / (1.0 + exp((dist * inv_max_dist - 0.83) * 20.0)) + 0.15;\n  gl_FragColor = vec4(new_color * lumen, color.a);\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 100
    .local v0, "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 101
    iput-object v0, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 102
    nop

    .line 108
    .end local v0    # "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iput p2, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mTarget:I

    .line 109
    return-void

    nop

    :pswitch_data_36
    .packed-switch 0x3
        :pswitch_22
    .end packed-switch
.end method

.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .registers 7
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 114
    const-string/jumbo v0, "image"

    invoke-virtual {p0, v0}, Landroid/filterpacks/imageproc/DocumentaryFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 115
    .local v1, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    .line 118
    .local v2, "inputFormat":Landroid/filterfw/core/FrameFormat;
    iget-object v3, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v3, :cond_17

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mTarget:I

    if-eq v3, v4, :cond_1e

    .line 119
    :cond_17
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Landroid/filterpacks/imageproc/DocumentaryFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 123
    :cond_1e
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mWidth:I

    if-ne v3, v4, :cond_2e

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mHeight:I

    if-eq v3, v4, :cond_3d

    .line 124
    :cond_2e
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    iput v3, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mWidth:I

    .line 125
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v3

    iput v3, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mHeight:I

    .line 126
    invoke-direct {p0}, Landroid/filterpacks/imageproc/DocumentaryFilter;->initParameters()V

    .line 130
    :cond_3d
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v3

    .line 133
    .local v3, "output":Landroid/filterfw/core/Frame;
    iget-object v4, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v4, v1, v3}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 136
    invoke-virtual {p0, v0, v3}, Landroid/filterpacks/imageproc/DocumentaryFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 139
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 140
    return-void
.end method

.method public blacklist setupPorts()V
    .registers 3

    .line 87
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string/jumbo v1, "image"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/imageproc/DocumentaryFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 88
    invoke-virtual {p0, v1, v1}, Landroid/filterpacks/imageproc/DocumentaryFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method
