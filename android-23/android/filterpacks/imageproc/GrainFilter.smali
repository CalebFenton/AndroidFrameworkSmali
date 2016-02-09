.class public Landroid/filterpacks/imageproc/GrainFilter;
.super Landroid/filterfw/core/Filter;
.source "GrainFilter.java"


# static fields
.field private static final RAND_THRESHOLD:I = 0x80


# instance fields
.field private mGrainProgram:Landroid/filterfw/core/Program;

.field private final mGrainShader:Ljava/lang/String;

.field private mHeight:I

.field private mNoiseProgram:Landroid/filterfw/core/Program;

.field private final mNoiseShader:Ljava/lang/String;

.field private mRandom:Ljava/util/Random;

.field private mScale:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "strength"
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
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 92
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    #@4
    .line 36
    const/4 v0, 0x0

    #@5
    iput v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mScale:F

    #@7
    .line 39
    const/16 v0, 0x280

    #@9
    iput v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mTileSize:I

    #@b
    .line 44
    iput v1, p0, Landroid/filterpacks/imageproc/GrainFilter;->mWidth:I

    #@d
    .line 45
    iput v1, p0, Landroid/filterpacks/imageproc/GrainFilter;->mHeight:I

    #@f
    .line 46
    iput v1, p0, Landroid/filterpacks/imageproc/GrainFilter;->mTarget:I

    #@11
    .line 51
    const-string/jumbo v0, "precision mediump float;\nuniform vec2 seed;\nvarying vec2 v_texcoord;\nfloat rand(vec2 loc) {\n  float theta1 = dot(loc, vec2(0.9898, 0.233));\n  float theta2 = dot(loc, vec2(12.0, 78.0));\n  float value = cos(theta1) * sin(theta2) + sin(theta1) * cos(theta2);\n  float temp = mod(197.0 * value, 1.0) + value;\n  float part1 = mod(220.0 * temp, 1.0) + temp;\n  float part2 = value * 0.5453;\n  float part3 = cos(theta1 + theta2) * 0.43758;\n  return fract(part1 + part2 + part3);\n}\nvoid main() {\n  gl_FragColor = vec4(rand(v_texcoord + seed), 0.0, 0.0, 1.0);\n}\n"

    #@14
    .line 50
    iput-object v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mNoiseShader:Ljava/lang/String;

    #@16
    .line 70
    const-string/jumbo v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform float scale;\nuniform float stepX;\nuniform float stepY;\nvarying vec2 v_texcoord;\nvoid main() {\n  float noise = texture2D(tex_sampler_1, v_texcoord + vec2(-stepX, -stepY)).r * 0.224;\n  noise += texture2D(tex_sampler_1, v_texcoord + vec2(-stepX, stepY)).r * 0.224;\n  noise += texture2D(tex_sampler_1, v_texcoord + vec2(stepX, -stepY)).r * 0.224;\n  noise += texture2D(tex_sampler_1, v_texcoord + vec2(stepX, stepY)).r * 0.224;\n  noise += 0.4448;\n  noise *= scale;\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float energy = 0.33333 * color.r + 0.33333 * color.g + 0.33333 * color.b;\n  float mask = (1.0 - sqrt(energy));\n  float weight = 1.0 - 1.333 * mask * noise;\n  gl_FragColor = vec4(color.rgb * weight, color.a);\n}\n"

    #@19
    .line 69
    iput-object v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mGrainShader:Ljava/lang/String;

    #@1b
    .line 93
    new-instance v0, Ljava/util/Random;

    #@1d
    new-instance v1, Ljava/util/Date;

    #@1f
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    #@22
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    #@25
    move-result-wide v2

    #@26
    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    #@29
    iput-object v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mRandom:Ljava/util/Random;

    #@2b
    .line 91
    return-void
.end method

.method private updateFrameSize(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    #@2
    .line 134
    iput p1, p0, Landroid/filterpacks/imageproc/GrainFilter;->mWidth:I

    #@4
    .line 135
    iput p2, p0, Landroid/filterpacks/imageproc/GrainFilter;->mHeight:I

    #@6
    .line 137
    iget-object v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mGrainProgram:Landroid/filterfw/core/Program;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 138
    iget-object v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mGrainProgram:Landroid/filterfw/core/Program;

    #@c
    const-string/jumbo v1, "stepX"

    #@f
    iget v2, p0, Landroid/filterpacks/imageproc/GrainFilter;->mWidth:I

    #@11
    int-to-float v2, v2

    #@12
    div-float v2, v3, v2

    #@14
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@1b
    .line 139
    iget-object v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mGrainProgram:Landroid/filterfw/core/Program;

    #@1d
    const-string/jumbo v1, "stepY"

    #@20
    iget v2, p0, Landroid/filterpacks/imageproc/GrainFilter;->mHeight:I

    #@22
    int-to-float v2, v2

    #@23
    div-float v2, v3, v2

    #@25
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@2c
    .line 140
    invoke-direct {p0}, Landroid/filterpacks/imageproc/GrainFilter;->updateParameters()V

    #@2f
    .line 133
    :cond_0
    return-void
.end method

.method private updateParameters()V
    .locals 4

    #@0
    .prologue
    .line 127
    const/4 v1, 0x2

    #@1
    new-array v0, v1, [F

    #@3
    iget-object v1, p0, Landroid/filterpacks/imageproc/GrainFilter;->mRandom:Ljava/util/Random;

    #@5
    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    #@8
    move-result v1

    #@9
    const/4 v2, 0x0

    #@a
    aput v1, v0, v2

    #@c
    iget-object v1, p0, Landroid/filterpacks/imageproc/GrainFilter;->mRandom:Ljava/util/Random;

    #@e
    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    #@11
    move-result v1

    #@12
    const/4 v2, 0x1

    #@13
    aput v1, v0, v2

    #@15
    .line 128
    .local v0, "seed":[F
    iget-object v1, p0, Landroid/filterpacks/imageproc/GrainFilter;->mNoiseProgram:Landroid/filterfw/core/Program;

    #@17
    const-string/jumbo v2, "seed"

    #@1a
    invoke-virtual {v1, v2, v0}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@1d
    .line 130
    iget-object v1, p0, Landroid/filterpacks/imageproc/GrainFilter;->mGrainProgram:Landroid/filterfw/core/Program;

    #@1f
    const-string/jumbo v2, "scale"

    #@22
    iget v3, p0, Landroid/filterpacks/imageproc/GrainFilter;->mScale:F

    #@24
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@2b
    .line 126
    return-void
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 146
    iget-object v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mGrainProgram:Landroid/filterfw/core/Program;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mNoiseProgram:Landroid/filterfw/core/Program;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 147
    invoke-direct {p0}, Landroid/filterpacks/imageproc/GrainFilter;->updateParameters()V

    #@b
    .line 145
    :cond_0
    return-void
.end method

.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    #@0
    .prologue
    .line 104
    return-object p2
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "target"    # I

    #@0
    .prologue
    .line 108
    packed-switch p2, :pswitch_data_0

    #@3
    .line 120
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
    .line 121
    const-string/jumbo v3, "!"

    #@18
    .line 120
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
    .line 110
    :pswitch_0
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    #@26
    const-string/jumbo v1, "precision mediump float;\nuniform vec2 seed;\nvarying vec2 v_texcoord;\nfloat rand(vec2 loc) {\n  float theta1 = dot(loc, vec2(0.9898, 0.233));\n  float theta2 = dot(loc, vec2(12.0, 78.0));\n  float value = cos(theta1) * sin(theta2) + sin(theta1) * cos(theta2);\n  float temp = mod(197.0 * value, 1.0) + value;\n  float part1 = mod(220.0 * temp, 1.0) + temp;\n  float part2 = value * 0.5453;\n  float part3 = cos(theta1 + theta2) * 0.43758;\n  return fract(part1 + part2 + part3);\n}\nvoid main() {\n  gl_FragColor = vec4(rand(v_texcoord + seed), 0.0, 0.0, 1.0);\n}\n"

    #@29
    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    #@2c
    .line 111
    .local v0, "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/GrainFilter;->mTileSize:I

    #@2e
    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    #@31
    .line 112
    iput-object v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mNoiseProgram:Landroid/filterfw/core/Program;

    #@33
    .line 114
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    #@35
    .end local v0    # "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform float scale;\nuniform float stepX;\nuniform float stepY;\nvarying vec2 v_texcoord;\nvoid main() {\n  float noise = texture2D(tex_sampler_1, v_texcoord + vec2(-stepX, -stepY)).r * 0.224;\n  noise += texture2D(tex_sampler_1, v_texcoord + vec2(-stepX, stepY)).r * 0.224;\n  noise += texture2D(tex_sampler_1, v_texcoord + vec2(stepX, -stepY)).r * 0.224;\n  noise += texture2D(tex_sampler_1, v_texcoord + vec2(stepX, stepY)).r * 0.224;\n  noise += 0.4448;\n  noise *= scale;\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float energy = 0.33333 * color.r + 0.33333 * color.g + 0.33333 * color.b;\n  float mask = (1.0 - sqrt(energy));\n  float weight = 1.0 - 1.333 * mask * noise;\n  gl_FragColor = vec4(color.rgb * weight, color.a);\n}\n"

    #@38
    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    #@3b
    .line 115
    .restart local v0    # "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/GrainFilter;->mTileSize:I

    #@3d
    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    #@40
    .line 116
    iput-object v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mGrainProgram:Landroid/filterfw/core/Program;

    #@42
    .line 123
    iput p2, p0, Landroid/filterpacks/imageproc/GrainFilter;->mTarget:I

    #@44
    .line 107
    return-void

    #@45
    .line 108
    nop

    #@46
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 11
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    const/4 v10, 0x3

    #@1
    const/4 v9, 0x0

    #@2
    .line 154
    const-string/jumbo v7, "image"

    #@5
    invoke-virtual {p0, v7}, Landroid/filterpacks/imageproc/GrainFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@8
    move-result-object v1

    #@9
    .line 155
    .local v1, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@c
    move-result-object v2

    #@d
    .line 157
    .local v2, "inputFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    #@10
    move-result v7

    #@11
    div-int/lit8 v7, v7, 0x2

    #@13
    .line 158
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    #@16
    move-result v8

    #@17
    div-int/lit8 v8, v8, 0x2

    #@19
    .line 157
    invoke-static {v7, v8, v10, v10}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    #@1c
    move-result-object v4

    #@1d
    .line 163
    .local v4, "noiseFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@20
    move-result-object v7

    #@21
    invoke-virtual {v7, v2}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@24
    move-result-object v5

    #@25
    .line 166
    .local v5, "noiseFrame":Landroid/filterfw/core/Frame;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@28
    move-result-object v7

    #@29
    invoke-virtual {v7, v2}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@2c
    move-result-object v6

    #@2d
    .line 169
    .local v6, "output":Landroid/filterfw/core/Frame;
    iget-object v7, p0, Landroid/filterpacks/imageproc/GrainFilter;->mNoiseProgram:Landroid/filterfw/core/Program;

    #@2f
    if-eqz v7, :cond_0

    #@31
    iget-object v7, p0, Landroid/filterpacks/imageproc/GrainFilter;->mGrainProgram:Landroid/filterfw/core/Program;

    #@33
    if-nez v7, :cond_4

    #@35
    .line 170
    :cond_0
    :goto_0
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    #@38
    move-result v7

    #@39
    invoke-virtual {p0, p1, v7}, Landroid/filterpacks/imageproc/GrainFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    #@3c
    .line 171
    invoke-direct {p0}, Landroid/filterpacks/imageproc/GrainFilter;->updateParameters()V

    #@3f
    .line 175
    :cond_1
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    #@42
    move-result v7

    #@43
    iget v8, p0, Landroid/filterpacks/imageproc/GrainFilter;->mWidth:I

    #@45
    if-ne v7, v8, :cond_2

    #@47
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    #@4a
    move-result v7

    #@4b
    iget v8, p0, Landroid/filterpacks/imageproc/GrainFilter;->mHeight:I

    #@4d
    if-eq v7, v8, :cond_3

    #@4f
    .line 176
    :cond_2
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    #@52
    move-result v7

    #@53
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    #@56
    move-result v8

    #@57
    invoke-direct {p0, v7, v8}, Landroid/filterpacks/imageproc/GrainFilter;->updateFrameSize(II)V

    #@5a
    .line 179
    :cond_3
    new-array v0, v9, [Landroid/filterfw/core/Frame;

    #@5c
    .line 180
    .local v0, "empty":[Landroid/filterfw/core/Frame;
    iget-object v7, p0, Landroid/filterpacks/imageproc/GrainFilter;->mNoiseProgram:Landroid/filterfw/core/Program;

    #@5e
    invoke-virtual {v7, v0, v5}, Landroid/filterfw/core/Program;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@61
    .line 183
    const/4 v7, 0x2

    #@62
    new-array v3, v7, [Landroid/filterfw/core/Frame;

    #@64
    aput-object v1, v3, v9

    #@66
    const/4 v7, 0x1

    #@67
    aput-object v5, v3, v7

    #@69
    .line 184
    .local v3, "inputs":[Landroid/filterfw/core/Frame;
    iget-object v7, p0, Landroid/filterpacks/imageproc/GrainFilter;->mGrainProgram:Landroid/filterfw/core/Program;

    #@6b
    invoke-virtual {v7, v3, v6}, Landroid/filterfw/core/Program;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@6e
    .line 187
    const-string/jumbo v7, "image"

    #@71
    invoke-virtual {p0, v7, v6}, Landroid/filterpacks/imageproc/GrainFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@74
    .line 190
    invoke-virtual {v6}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@77
    .line 191
    invoke-virtual {v5}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@7a
    .line 152
    return-void

    #@7b
    .line 169
    .end local v0    # "empty":[Landroid/filterfw/core/Frame;
    .end local v3    # "inputs":[Landroid/filterfw/core/Frame;
    :cond_4
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    #@7e
    move-result v7

    #@7f
    iget v8, p0, Landroid/filterpacks/imageproc/GrainFilter;->mTarget:I

    #@81
    if-eq v7, v8, :cond_1

    #@83
    goto :goto_0
.end method

.method public setupPorts()V
    .locals 2

    #@0
    .prologue
    .line 98
    const-string/jumbo v0, "image"

    #@3
    const/4 v1, 0x3

    #@4
    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/GrainFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@b
    .line 99
    const-string/jumbo v0, "image"

    #@e
    const-string/jumbo v1, "image"

    #@11
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/GrainFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    #@14
    .line 97
    return-void
.end method
