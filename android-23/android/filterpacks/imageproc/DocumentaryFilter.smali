.class public Landroid/filterpacks/imageproc/DocumentaryFilter;
.super Landroid/filterfw/core/Filter;
.source "DocumentaryFilter.java"


# instance fields
.field private final mDocumentaryShader:Ljava/lang/String;

.field private mHeight:I

.field private mProgram:Landroid/filterfw/core/Program;

.field private mRandom:Ljava/util/Random;

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
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 80
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    #@4
    .line 34
    const/16 v1, 0x280

    #@6
    iput v1, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mTileSize:I

    #@8
    .line 39
    iput v2, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mWidth:I

    #@a
    .line 40
    iput v2, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mHeight:I

    #@c
    .line 41
    iput v2, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mTarget:I

    #@e
    .line 44
    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec2 seed;\nuniform float stepsize;\nuniform float inv_max_dist;\nuniform vec2 scale;\nvarying vec2 v_texcoord;\nfloat rand(vec2 loc) {\n  float theta1 = dot(loc, vec2(0.9898, 0.233));\n  float theta2 = dot(loc, vec2(12.0, 78.0));\n  float value = cos(theta1) * sin(theta2) + sin(theta1) * cos(theta2);\n  float temp = mod(197.0 * value, 1.0) + value;\n  float part1 = mod(220.0 * temp, 1.0) + temp;\n  float part2 = value * 0.5453;\n  float part3 = cos(theta1 + theta2) * 0.43758;\n  return fract(part1 + part2 + part3);\n}\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float dither = rand(v_texcoord + seed);\n  vec3 xform = clamp(2.0 * color.rgb, 0.0, 1.0);\n  vec3 temp = clamp(2.0 * (color.rgb + stepsize), 0.0, 1.0);\n  vec3 new_color = clamp(xform + (temp - xform) * (dither - 0.5), 0.0, 1.0);\n  float gray = dot(new_color, vec3(0.299, 0.587, 0.114));\n  new_color = vec3(gray, gray, gray);\n  vec2 coord = v_texcoord - vec2(0.5, 0.5);\n  float dist = length(coord * scale);\n  float lumen = 0.85 / (1.0 + exp((dist * inv_max_dist - 0.83) * 20.0)) + 0.15;\n  gl_FragColor = vec4(new_color * lumen, color.a);\n}\n"

    #@11
    .line 43
    iput-object v1, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mDocumentaryShader:Ljava/lang/String;

    #@13
    .line 81
    new-instance v0, Ljava/util/Date;

    #@15
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    #@18
    .line 82
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/util/Random;

    #@1a
    new-instance v2, Ljava/util/Date;

    #@1c
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    #@1f
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    #@22
    move-result-wide v2

    #@23
    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    #@26
    iput-object v1, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mRandom:Ljava/util/Random;

    #@28
    .line 79
    return-void
.end method

.method private initParameters()V
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x2

    #@1
    const/high16 v8, 0x3f800000    # 1.0f

    #@3
    const/4 v7, 0x1

    #@4
    const/4 v6, 0x0

    #@5
    .line 143
    iget-object v3, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mProgram:Landroid/filterfw/core/Program;

    #@7
    if-eqz v3, :cond_0

    #@9
    .line 144
    new-array v1, v9, [F

    #@b
    .line 145
    .local v1, "scale":[F
    iget v3, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mWidth:I

    #@d
    iget v4, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mHeight:I

    #@f
    if-le v3, v4, :cond_1

    #@11
    .line 146
    aput v8, v1, v6

    #@13
    .line 147
    iget v3, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mHeight:I

    #@15
    int-to-float v3, v3

    #@16
    iget v4, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mWidth:I

    #@18
    int-to-float v4, v4

    #@19
    div-float/2addr v3, v4

    #@1a
    aput v3, v1, v7

    #@1c
    .line 152
    :goto_0
    aget v3, v1, v6

    #@1e
    aget v4, v1, v6

    #@20
    mul-float/2addr v3, v4

    #@21
    aget v4, v1, v7

    #@23
    aget v5, v1, v7

    #@25
    mul-float/2addr v4, v5

    #@26
    add-float/2addr v3, v4

    #@27
    float-to-double v4, v3

    #@28
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    #@2b
    move-result-wide v4

    #@2c
    double-to-float v3, v4

    #@2d
    const/high16 v4, 0x3f000000    # 0.5f

    #@2f
    mul-float v0, v3, v4

    #@31
    .line 154
    .local v0, "max_dist":F
    iget-object v3, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mProgram:Landroid/filterfw/core/Program;

    #@33
    const-string/jumbo v4, "scale"

    #@36
    invoke-virtual {v3, v4, v1}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@39
    .line 155
    iget-object v3, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mProgram:Landroid/filterfw/core/Program;

    #@3b
    const-string/jumbo v4, "inv_max_dist"

    #@3e
    div-float v5, v8, v0

    #@40
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@43
    move-result-object v5

    #@44
    invoke-virtual {v3, v4, v5}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@47
    .line 156
    iget-object v3, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mProgram:Landroid/filterfw/core/Program;

    #@49
    const-string/jumbo v4, "stepsize"

    #@4c
    const v5, 0x3b808081

    #@4f
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@52
    move-result-object v5

    #@53
    invoke-virtual {v3, v4, v5}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@56
    .line 158
    new-array v2, v9, [F

    #@58
    iget-object v3, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mRandom:Ljava/util/Random;

    #@5a
    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    #@5d
    move-result v3

    #@5e
    aput v3, v2, v6

    #@60
    iget-object v3, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mRandom:Ljava/util/Random;

    #@62
    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    #@65
    move-result v3

    #@66
    aput v3, v2, v7

    #@68
    .line 159
    .local v2, "seed":[F
    iget-object v3, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mProgram:Landroid/filterfw/core/Program;

    #@6a
    const-string/jumbo v4, "seed"

    #@6d
    invoke-virtual {v3, v4, v2}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@70
    .line 142
    .end local v0    # "max_dist":F
    .end local v1    # "scale":[F
    .end local v2    # "seed":[F
    :cond_0
    return-void

    #@71
    .line 149
    .restart local v1    # "scale":[F
    :cond_1
    iget v3, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mWidth:I

    #@73
    int-to-float v3, v3

    #@74
    iget v4, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mHeight:I

    #@76
    int-to-float v4, v4

    #@77
    div-float/2addr v3, v4

    #@78
    aput v3, v1, v6

    #@7a
    .line 150
    aput v8, v1, v7

    #@7c
    goto :goto_0
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    #@0
    .prologue
    .line 93
    return-object p2
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "target"    # I

    #@0
    .prologue
    .line 97
    packed-switch p2, :pswitch_data_0

    #@3
    .line 105
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
    .line 106
    const-string/jumbo v3, "!"

    #@18
    .line 105
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
    .line 99
    :pswitch_0
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    #@26
    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec2 seed;\nuniform float stepsize;\nuniform float inv_max_dist;\nuniform vec2 scale;\nvarying vec2 v_texcoord;\nfloat rand(vec2 loc) {\n  float theta1 = dot(loc, vec2(0.9898, 0.233));\n  float theta2 = dot(loc, vec2(12.0, 78.0));\n  float value = cos(theta1) * sin(theta2) + sin(theta1) * cos(theta2);\n  float temp = mod(197.0 * value, 1.0) + value;\n  float part1 = mod(220.0 * temp, 1.0) + temp;\n  float part2 = value * 0.5453;\n  float part3 = cos(theta1 + theta2) * 0.43758;\n  return fract(part1 + part2 + part3);\n}\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float dither = rand(v_texcoord + seed);\n  vec3 xform = clamp(2.0 * color.rgb, 0.0, 1.0);\n  vec3 temp = clamp(2.0 * (color.rgb + stepsize), 0.0, 1.0);\n  vec3 new_color = clamp(xform + (temp - xform) * (dither - 0.5), 0.0, 1.0);\n  float gray = dot(new_color, vec3(0.299, 0.587, 0.114));\n  new_color = vec3(gray, gray, gray);\n  vec2 coord = v_texcoord - vec2(0.5, 0.5);\n  float dist = length(coord * scale);\n  float lumen = 0.85 / (1.0 + exp((dist * inv_max_dist - 0.83) * 20.0)) + 0.15;\n  gl_FragColor = vec4(new_color * lumen, color.a);\n}\n"

    #@29
    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    #@2c
    .line 100
    .local v0, "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mTileSize:I

    #@2e
    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    #@31
    .line 101
    iput-object v0, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mProgram:Landroid/filterfw/core/Program;

    #@33
    .line 108
    iput p2, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mTarget:I

    #@35
    .line 96
    return-void

    #@36
    .line 97
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
    .line 114
    const-string/jumbo v3, "image"

    #@3
    invoke-virtual {p0, v3}, Landroid/filterpacks/imageproc/DocumentaryFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@6
    move-result-object v0

    #@7
    .line 115
    .local v0, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@a
    move-result-object v1

    #@b
    .line 118
    .local v1, "inputFormat":Landroid/filterfw/core/FrameFormat;
    iget-object v3, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mProgram:Landroid/filterfw/core/Program;

    #@d
    if-eqz v3, :cond_0

    #@f
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    #@12
    move-result v3

    #@13
    iget v4, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mTarget:I

    #@15
    if-eq v3, v4, :cond_1

    #@17
    .line 119
    :cond_0
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    #@1a
    move-result v3

    #@1b
    invoke-virtual {p0, p1, v3}, Landroid/filterpacks/imageproc/DocumentaryFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    #@1e
    .line 123
    :cond_1
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    #@21
    move-result v3

    #@22
    iget v4, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mWidth:I

    #@24
    if-ne v3, v4, :cond_2

    #@26
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    #@29
    move-result v3

    #@2a
    iget v4, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mHeight:I

    #@2c
    if-eq v3, v4, :cond_3

    #@2e
    .line 124
    :cond_2
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    #@31
    move-result v3

    #@32
    iput v3, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mWidth:I

    #@34
    .line 125
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    #@37
    move-result v3

    #@38
    iput v3, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mHeight:I

    #@3a
    .line 126
    invoke-direct {p0}, Landroid/filterpacks/imageproc/DocumentaryFilter;->initParameters()V

    #@3d
    .line 130
    :cond_3
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@40
    move-result-object v3

    #@41
    invoke-virtual {v3, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@44
    move-result-object v2

    #@45
    .line 133
    .local v2, "output":Landroid/filterfw/core/Frame;
    iget-object v3, p0, Landroid/filterpacks/imageproc/DocumentaryFilter;->mProgram:Landroid/filterfw/core/Program;

    #@47
    invoke-virtual {v3, v0, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@4a
    .line 136
    const-string/jumbo v3, "image"

    #@4d
    invoke-virtual {p0, v3, v2}, Landroid/filterpacks/imageproc/DocumentaryFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@50
    .line 139
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@53
    .line 112
    return-void
.end method

.method public setupPorts()V
    .locals 2

    #@0
    .prologue
    .line 87
    const-string/jumbo v0, "image"

    #@3
    const/4 v1, 0x3

    #@4
    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/DocumentaryFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@b
    .line 88
    const-string/jumbo v0, "image"

    #@e
    const-string/jumbo v1, "image"

    #@11
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/DocumentaryFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    #@14
    .line 86
    return-void
.end method
