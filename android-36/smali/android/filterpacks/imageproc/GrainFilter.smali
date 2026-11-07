.class public Landroid/filterpacks/imageproc/GrainFilter;
.super Landroid/filterfw/core/Filter;
.source "GrainFilter.java"


# static fields
.field private static final blacklist RAND_THRESHOLD:I = 0x80


# instance fields
.field private blacklist mGrainProgram:Landroid/filterfw/core/Program;

.field private final blacklist mGrainShader:Ljava/lang/String;

.field private blacklist mHeight:I

.field private blacklist mNoiseProgram:Landroid/filterfw/core/Program;

.field private final blacklist mNoiseShader:Ljava/lang/String;

.field private blacklist mRandom:Ljava/util/Random;

.field private blacklist mScale:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "strength"
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
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 92
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mScale:F

    .line 38
    const/16 v0, 0x280

    iput v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mTileSize:I

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mWidth:I

    .line 45
    iput v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mHeight:I

    .line 46
    iput v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mTarget:I

    .line 50
    const-string/jumbo v0, "precision mediump float;\nuniform vec2 seed;\nvarying vec2 v_texcoord;\nfloat rand(vec2 loc) {\n  float theta1 = dot(loc, vec2(0.9898, 0.233));\n  float theta2 = dot(loc, vec2(12.0, 78.0));\n  float value = cos(theta1) * sin(theta2) + sin(theta1) * cos(theta2);\n  float temp = mod(197.0 * value, 1.0) + value;\n  float part1 = mod(220.0 * temp, 1.0) + temp;\n  float part2 = value * 0.5453;\n  float part3 = cos(theta1 + theta2) * 0.43758;\n  return fract(part1 + part2 + part3);\n}\nvoid main() {\n  gl_FragColor = vec4(rand(v_texcoord + seed), 0.0, 0.0, 1.0);\n}\n"

    iput-object v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mNoiseShader:Ljava/lang/String;

    .line 69
    const-string/jumbo v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform float scale;\nuniform float stepX;\nuniform float stepY;\nvarying vec2 v_texcoord;\nvoid main() {\n  float noise = texture2D(tex_sampler_1, v_texcoord + vec2(-stepX, -stepY)).r * 0.224;\n  noise += texture2D(tex_sampler_1, v_texcoord + vec2(-stepX, stepY)).r * 0.224;\n  noise += texture2D(tex_sampler_1, v_texcoord + vec2(stepX, -stepY)).r * 0.224;\n  noise += texture2D(tex_sampler_1, v_texcoord + vec2(stepX, stepY)).r * 0.224;\n  noise += 0.4448;\n  noise *= scale;\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float energy = 0.33333 * color.r + 0.33333 * color.g + 0.33333 * color.b;\n  float mask = (1.0 - sqrt(energy));\n  float weight = 1.0 - 1.333 * mask * noise;\n  gl_FragColor = vec4(color.rgb * weight, color.a);\n}\n"

    iput-object v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mGrainShader:Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/util/Random;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mRandom:Ljava/util/Random;

    .line 94
    return-void
.end method

.method private blacklist updateFrameSize(II)V
    .registers 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 134
    iput p1, p0, Landroid/filterpacks/imageproc/GrainFilter;->mWidth:I

    .line 135
    iput p2, p0, Landroid/filterpacks/imageproc/GrainFilter;->mHeight:I

    .line 137
    iget-object v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mGrainProgram:Landroid/filterfw/core/Program;

    if-eqz v0, :cond_2e

    .line 138
    iget-object v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mGrainProgram:Landroid/filterfw/core/Program;

    iget v1, p0, Landroid/filterpacks/imageproc/GrainFilter;->mWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    div-float v1, v2, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v3, "stepX"

    invoke-virtual {v0, v3, v1}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    iget-object v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mGrainProgram:Landroid/filterfw/core/Program;

    iget v1, p0, Landroid/filterpacks/imageproc/GrainFilter;->mHeight:I

    int-to-float v1, v1

    div-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "stepY"

    invoke-virtual {v0, v2, v1}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 140
    invoke-direct {p0}, Landroid/filterpacks/imageproc/GrainFilter;->updateParameters()V

    .line 142
    :cond_2e
    return-void
.end method

.method private blacklist updateParameters()V
    .registers 5

    .line 127
    iget-object v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    iget-object v1, p0, Landroid/filterpacks/imageproc/GrainFilter;->mRandom:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    .line 128
    .local v2, "seed":[F
    iget-object v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mNoiseProgram:Landroid/filterfw/core/Program;

    const-string/jumbo v1, "seed"

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    iget-object v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mGrainProgram:Landroid/filterfw/core/Program;

    iget v1, p0, Landroid/filterpacks/imageproc/GrainFilter;->mScale:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v3, "scale"

    invoke-virtual {v0, v3, v1}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    return-void
.end method


# virtual methods
.method public blacklist fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .line 146
    iget-object v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mGrainProgram:Landroid/filterfw/core/Program;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mNoiseProgram:Landroid/filterfw/core/Program;

    if-eqz v0, :cond_b

    .line 147
    invoke-direct {p0}, Landroid/filterpacks/imageproc/GrainFilter;->updateParameters()V

    .line 149
    :cond_b
    return-void
.end method

.method public blacklist getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .registers 3
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .line 104
    return-object p2
.end method

.method public blacklist initProgram(Landroid/filterfw/core/FilterContext;I)V
    .registers 6
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "target"    # I

    .line 108
    packed-switch p2, :pswitch_data_44

    .line 120
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

    .line 110
    :pswitch_22
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v1, "precision mediump float;\nuniform vec2 seed;\nvarying vec2 v_texcoord;\nfloat rand(vec2 loc) {\n  float theta1 = dot(loc, vec2(0.9898, 0.233));\n  float theta2 = dot(loc, vec2(12.0, 78.0));\n  float value = cos(theta1) * sin(theta2) + sin(theta1) * cos(theta2);\n  float temp = mod(197.0 * value, 1.0) + value;\n  float part1 = mod(220.0 * temp, 1.0) + temp;\n  float part2 = value * 0.5453;\n  float part3 = cos(theta1 + theta2) * 0.43758;\n  return fract(part1 + part2 + part3);\n}\nvoid main() {\n  gl_FragColor = vec4(rand(v_texcoord + seed), 0.0, 0.0, 1.0);\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 111
    .local v0, "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/GrainFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 112
    iput-object v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mNoiseProgram:Landroid/filterfw/core/Program;

    .line 114
    new-instance v1, Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v2, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform float scale;\nuniform float stepX;\nuniform float stepY;\nvarying vec2 v_texcoord;\nvoid main() {\n  float noise = texture2D(tex_sampler_1, v_texcoord + vec2(-stepX, -stepY)).r * 0.224;\n  noise += texture2D(tex_sampler_1, v_texcoord + vec2(-stepX, stepY)).r * 0.224;\n  noise += texture2D(tex_sampler_1, v_texcoord + vec2(stepX, -stepY)).r * 0.224;\n  noise += texture2D(tex_sampler_1, v_texcoord + vec2(stepX, stepY)).r * 0.224;\n  noise += 0.4448;\n  noise *= scale;\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float energy = 0.33333 * color.r + 0.33333 * color.g + 0.33333 * color.b;\n  float mask = (1.0 - sqrt(energy));\n  float weight = 1.0 - 1.333 * mask * noise;\n  gl_FragColor = vec4(color.rgb * weight, color.a);\n}\n"

    invoke-direct {v1, p1, v2}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 115
    .end local v0    # "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    .local v1, "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iget v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mTileSize:I

    invoke-virtual {v1, v0}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 116
    iput-object v1, p0, Landroid/filterpacks/imageproc/GrainFilter;->mGrainProgram:Landroid/filterfw/core/Program;

    .line 117
    nop

    .line 123
    .end local v1    # "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iput p2, p0, Landroid/filterpacks/imageproc/GrainFilter;->mTarget:I

    .line 124
    return-void

    :pswitch_data_44
    .packed-switch 0x3
        :pswitch_22
    .end packed-switch
.end method

.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .registers 12
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 154
    const-string/jumbo v0, "image"

    invoke-virtual {p0, v0}, Landroid/filterpacks/imageproc/GrainFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 155
    .local v1, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    .line 157
    .local v2, "inputFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    const/4 v4, 0x2

    div-int/2addr v3, v4

    .line 158
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v5

    div-int/2addr v5, v4

    .line 157
    const/4 v6, 0x3

    invoke-static {v3, v5, v6, v6}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v3

    .line 163
    .local v3, "noiseFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v5

    .line 166
    .local v5, "noiseFrame":Landroid/filterfw/core/Frame;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v6

    .line 169
    .local v6, "output":Landroid/filterfw/core/Frame;
    iget-object v7, p0, Landroid/filterpacks/imageproc/GrainFilter;->mNoiseProgram:Landroid/filterfw/core/Program;

    if-eqz v7, :cond_3b

    iget-object v7, p0, Landroid/filterpacks/imageproc/GrainFilter;->mGrainProgram:Landroid/filterfw/core/Program;

    if-eqz v7, :cond_3b

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v7

    iget v8, p0, Landroid/filterpacks/imageproc/GrainFilter;->mTarget:I

    if-eq v7, v8, :cond_45

    .line 170
    :cond_3b
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v7

    invoke-virtual {p0, p1, v7}, Landroid/filterpacks/imageproc/GrainFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 171
    invoke-direct {p0}, Landroid/filterpacks/imageproc/GrainFilter;->updateParameters()V

    .line 175
    :cond_45
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v7

    iget v8, p0, Landroid/filterpacks/imageproc/GrainFilter;->mWidth:I

    if-ne v7, v8, :cond_55

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v7

    iget v8, p0, Landroid/filterpacks/imageproc/GrainFilter;->mHeight:I

    if-eq v7, v8, :cond_60

    .line 176
    :cond_55
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v8

    invoke-direct {p0, v7, v8}, Landroid/filterpacks/imageproc/GrainFilter;->updateFrameSize(II)V

    .line 179
    :cond_60
    const/4 v7, 0x0

    new-array v8, v7, [Landroid/filterfw/core/Frame;

    .line 180
    .local v8, "empty":[Landroid/filterfw/core/Frame;
    iget-object v9, p0, Landroid/filterpacks/imageproc/GrainFilter;->mNoiseProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v9, v8, v5}, Landroid/filterfw/core/Program;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 183
    new-array v4, v4, [Landroid/filterfw/core/Frame;

    aput-object v1, v4, v7

    const/4 v7, 0x1

    aput-object v5, v4, v7

    .line 184
    .local v4, "inputs":[Landroid/filterfw/core/Frame;
    iget-object v7, p0, Landroid/filterpacks/imageproc/GrainFilter;->mGrainProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v7, v4, v6}, Landroid/filterfw/core/Program;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 187
    invoke-virtual {p0, v0, v6}, Landroid/filterpacks/imageproc/GrainFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 190
    invoke-virtual {v6}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 191
    invoke-virtual {v5}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 192
    return-void
.end method

.method public blacklist setupPorts()V
    .registers 3

    .line 98
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string/jumbo v1, "image"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/imageproc/GrainFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 99
    invoke-virtual {p0, v1, v1}, Landroid/filterpacks/imageproc/GrainFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method
